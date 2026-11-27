# Ang's subset-product interpolation conjecture (OEIS A060957)

Research notes, explicit counterexamples and reproducible certificates. AI-assisted research; preliminary, not peer reviewed. The original conjecture was previously disproved; this repository documents explicit smaller constructions without claiming global minimality or priority.

| n | p | Verification |
|---:|---:|---|
| 69819 | 59 | Exact Python certificate |
| 72335 | 43 | Exact Python certificate |
| 130203 | 53 | Exact Python certificate and archived Lean R02 proof |
| 954316 | 101 | Exact Python certificate and archived Lean R02 proof |

For each case, there is a positive integer m with m and p²m in the set of subset products of {1,...,n}, but pm absent.

## Read and reproduce

- [Research directory and instructions](A060957/README.md)
- [Original research note](A060957/paper.md)
- [Supplement: smaller counterexamples](A060957/recent.md)
- [Complete Lean 4 proof project](A060957/lean/)
- [Archived Lean audit logs](A060957/lean/logs/)
- [Python verifier](A060957/verify.py) and [new examples](A060957/verify_recent.py)

Run the Python programs from the A060957 directory without Python -O. To reproduce the Lean proofs, see the formalization instructions below.

The Lean archive is a byte-for-byte copy of the supplied R02 source and logs. It does not certify the two newer examples or general asymptotic claims. Compilation logs record the earlier run; the compiler was not rerun during this upload. The exact Python verifiers were independently rerun during packaging.

## Prior work

[OEIS A060957](https://oeis.org/A060957); [Wentao Li's disproof](https://github.com/VictorLiwentao/lean-oeis-proofs/blob/3be119e75ba5b31f034dc0c0b249975d17def711/proofs/new-proofs/A060957/PROOF.md); [Sungsoo Na, Ang's conjecture on products of distinct integers fails for large primes](https://doi.org/10.5281/zenodo.23599288). The existing LaTeX demo file main.tex is retained as legacy material, not a research manuscript.
