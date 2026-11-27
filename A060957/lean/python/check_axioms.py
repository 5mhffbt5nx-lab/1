"""Check successful Lean axiom-print logs; does not invoke Lean or attest provenance."""
import re, sys
from pathlib import Path
allowed={'propext','Classical.choice','Quot.sound'}
if len(sys.argv)!=3: raise SystemExit('usage: python check_axioms.py LOG N')
log=Path(sys.argv[1]).read_text(encoding='utf-8-sig',errors='replace')
n=sys.argv[2]
for name in (f'A060957.Case{n}.counterexample{n}',f'A060957.Case{n}.disproof_source'):
    pattern=r"'"+re.escape(name)+r"'\s+(?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)"
    found=re.search(pattern,log,re.S)
    if not found: raise SystemExit('Missing axiom output: '+name)
    axioms={a.strip() for a in (found.group(1) or '').split(',') if a.strip()}
    if axioms-allowed: raise SystemExit('Unexpected axioms: '+str(axioms-allowed))
    print(name,sorted(axioms))
print('Axiom allow-list passed for supplied log. Check actual Lean exit status and provenance separately.')
