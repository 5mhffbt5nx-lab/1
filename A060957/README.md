# A060957 — explicit subset-product counterexamples

AI-assisted research, 27 November 2026. The original conjecture was already disproved by earlier work; see the references in the research note. No claim of first disproof, global minimality, or complete priority clearance.

| n | p | Evidence |
|---:|---:|---|
| 69819 | 59 | exact integer certificate; not Lean-certified |
| 72335 | 43 | exact integer certificate; not Lean-certified |
| 130203 | 53 | exact integer certificate; archived Lean R02 certification |
| 954316 | 101 | exact integer certificate; archived Lean R02 certification |

- [Research note for the two original examples](paper.md)
- [Supplement for the two smaller examples](recent.md)
- [Python verifier (original examples)](verify.py) and [run log](verify.log)
- [Python verifier (new examples)](verify_recent.py) and [run log](verify_recent.log)

Run from this directory: python3 verify.py and python3 verify_recent.py. Do not use Python -O. Standard library only. For each case the relative exponent fiber is exactly {0,1,2,3,5,6,7,8}.

The Lean R02 proofs apply only to the original examples, not the two new ones or the asymptotic theory. The complete original archive is now included under [lean/](lean/), with all 41 checksummed files and the original checksum manifest. Its source and log files have been checked against the archive's original Git blob hashes; the Python verifiers have been rerun, but the Lean compiler has not been rerun during packaging.

## Lean reproduction

Use the pinned Lean 4.36.0 and Mathlib versions in the formalization directory. Install Elan, then:

```bash
cd lean
sha256sum -c SHA256SUMS
lake exe cache get
bash verify.sh
```

Run `bash verify.sh 130203` or `bash verify.sh 954316` for a single instance. Original output is in [logs/](lean/logs/). See [English verification notes](lean/VERIFICATION.md) for scope and provenance. The original Chinese README is preserved without edits.
