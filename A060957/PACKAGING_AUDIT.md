# Packaging audit (2026-11-27)

The archived Lean R02 project was extracted and checked using sha256sum -c SHA256SUMS (all 41 listed files passed). The two original axiom logs were checked with python/check_axioms.py. The Python integer verifiers verify.py and verify_recent.py were rerun; stdout matched their archived logs exactly for all four examples.

All original R02 files are retained under lean/ including their checksum manifest and original logs. Git blob hashes were compared to the extracted source to ensure byte-for-byte identity. The Lean compiler is not present in the packaging environment, so the archived logs are not represented as a new build. The two new examples are not Lean-certified.

The GitHub repository is preliminary and does not include proofs of the general asymptotic results, a minimum-counterexample determination or complete novelty clearance.
