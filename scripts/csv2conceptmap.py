"""Generate a logical model -> profile ConceptMap (FSH) from a mapping CSV.

The CSV has the columns:
  source_element, source_description, relationship, target_element, target_description, comment

- source_element: path in the logical model (e.g. ReferenceRange)
- target_element: FHIR path in the profile, starting with the resource type
  (e.g. Observation.referenceRange, Observation.extension:recorder)
- relationship: an R4 ConceptMap equivalence (equivalent, wider, narrower, relatedto, unmatched, ...)
  'unmatched' rows have no target_element; 'unmatched', 'narrower' and 'inexact' rows need a comment.

Usage (from the IG root):
  python scripts/csv2conceptmap.py input/maps-source/<id>.csv --source <model-id-or-url> --target <profile-id-or-url>

Source and target may be StructureDefinition ids of this IG (resolved against the canonical
in sushi-config.yaml) or full canonical URLs. The ConceptMap id defaults to the CSV file name,
and the FSH is written to input/fsh/maps/<id>.fsh. It uses the rulesets in
input/fsh/rulesets/ruleset-conceptmapelement.fsh.
"""
import argparse
import csv
import os
import re
import shlex
import sys

COLUMNS = ['source_element', 'source_description', 'relationship',
           'target_element', 'target_description', 'comment']
EQUIVALENCES = {'relatedto', 'equivalent', 'equal', 'wider', 'subsumes', 'narrower',
                'specializes', 'inexact', 'unmatched', 'disjoint'}
NEEDS_COMMENT = {'narrower', 'inexact', 'unmatched'}
BS = chr(92)


def esc(value):
    """Escape a value for use as a FSH RuleSet parameter."""
    value = value.replace(BS, BS + BS).replace(',', BS + ',').replace(')', BS + ')')
    return value.replace('"', "'")


def ig_canonical(config_path):
    with open(config_path, encoding='utf-8') as f:
        for line in f:
            m = re.match(r'^canonical:\s*(\S+)', line)
            if m:
                return m.group(1).rstrip('/')
    sys.exit(f'No canonical found in {config_path}')


def sd_url(value, canonical):
    return value if re.match(r'^https?://', value) else f'{canonical}/StructureDefinition/{value}'


def to_name(map_id):
    return ''.join(part[:1].upper() + part[1:] for part in re.split(r'[^A-Za-z0-9]+', map_id) if part)


def read_rows(csv_path):
    with open(csv_path, encoding='utf-8-sig', newline='') as f:
        reader = csv.DictReader(f)
        missing = [c for c in COLUMNS if c not in (reader.fieldnames or [])]
        if missing:
            sys.exit(f'{csv_path}: missing columns {missing}')
        rows = [{k: (r[k] or '').strip() for k in COLUMNS} for r in reader if any((v or '').strip() for v in r.values())]
    errors = []
    for n, r in enumerate(rows, start=2):
        rel = r['relationship']
        if rel not in EQUIVALENCES:
            errors.append(f'line {n}: unknown relationship "{rel}"')
        if rel == 'unmatched' and r['target_element']:
            errors.append(f'line {n}: unmatched row should not have a target_element')
        if rel != 'unmatched' and not r['target_element']:
            errors.append(f'line {n}: target_element is required unless relationship is unmatched')
        if rel in NEEDS_COMMENT and not r['comment']:
            errors.append(f'line {n}: relationship "{rel}" requires a comment')
        if not r['source_element']:
            errors.append(f'line {n}: source_element is required')
    if errors:
        sys.exit(f'{csv_path}:\n  ' + '\n  '.join(errors))
    return rows


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument('csv')
    p.add_argument('--source', required=True, help='logical model id or canonical URL')
    p.add_argument('--target', required=True, help='profile id or canonical URL')
    p.add_argument('--id', help='ConceptMap id (default: CSV file name)')
    p.add_argument('--title')
    p.add_argument('--description')
    p.add_argument('--status', default='draft')
    p.add_argument('--config', default='sushi-config.yaml')
    p.add_argument('--out', help='output FSH file (default: input/fsh/maps/<id>.fsh)')
    a = p.parse_args()

    canonical = ig_canonical(a.config)
    map_id = a.id or os.path.splitext(os.path.basename(a.csv))[0]
    source, target = sd_url(a.source, canonical), sd_url(a.target, canonical)
    source_name, target_name = source.rsplit('/', 1)[-1], target.rsplit('/', 1)[-1]
    title = a.title or f'{source_name} to {target_name} Mapping'
    description = a.description or f'Mapping from the {source_name} logical model to the {target_name} profile'
    if not re.fullmatch(r'[A-Za-z0-9.-]{1,64}', map_id):
        sys.exit(f'"{map_id}" is not a valid FHIR id (letters, digits, - and ., max 64 characters); rename the CSV or use --id')
    out = a.out or os.path.join('input', 'fsh', 'maps', f'{map_id}.fsh')
    rows = read_rows(a.csv)

    command = 'python scripts/csv2conceptmap.py ' + ' '.join(shlex.quote(x.replace(BS, '/')) for x in sys.argv[1:])
    lines = [
        f'// Generated from {a.csv.replace(BS, "/")} - do not edit, regenerate with:',
        f'//   {command}',
        f'Instance: {map_id}',
        'InstanceOf: ConceptMap',
        'Usage: #definition',
        f'Title: "{title}"',
        f'Description: "{description}"',
        f'* url = "{canonical}/ConceptMap/{map_id}"',
        f'* name = "{to_name(map_id)}"',
        f'* status = #{a.status}',
        '* experimental = false',
        f'* sourceCanonical = "{source}"',
        f'* targetCanonical = "{target}"',
        '',
        '* group[+]',
        f'  * source = "{source}"',
        f'  * target = "{target}"',
    ]
    for r in rows:
        v = {k: esc(r[k]) for k in COLUMNS}
        if r['relationship'] == 'unmatched':
            lines.append(f"  * insert ConceptMapElementUnmatched({v['source_element']}, {v['source_description']}, {v['comment']})")
        elif r['comment']:
            lines.append(f"  * insert ConceptMapElementWithComment({v['source_element']}, {v['source_description']}, "
                         f"{v['target_element']}, {v['target_description']}, {v['relationship']}, {v['comment']})")
        else:
            lines.append(f"  * insert ConceptMapElement({v['source_element']}, {v['source_description']}, "
                         f"{v['target_element']}, {v['target_description']}, {v['relationship']})")

    os.makedirs(os.path.dirname(out) or '.', exist_ok=True)
    with open(out, 'w', encoding='utf-8', newline='\n') as f:
        f.write('\n'.join(lines) + '\n')
    print(f'{out}: {len(rows)} mappings')


if __name__ == '__main__':
    main()
