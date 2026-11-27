# A060957 — explicit subset-product counterexamples

Research material prepared 2026-11-27. This directory is separate from the repository's existing LaTeX demonstration.

The two instances are (n,p)=(130203,53) and (954316,101). Both show m,p^2 m in P_n but p m outside P_n. No claim of first disproof, global minimality or priority clearance is made.

- [Research note](paper.md): complete mathematical reduction, explicit weights, valuation equations and finite certificate.
- [Exact Python verifier](verify.py): standard library only, exhaustive scan and divisor-pruned subset products.
- [Actual Python run](verify.log): output for both instances.
- Formal verification: the original R02 archive has been located and its 41 listed SHA-256 checks passed; the reported Lean 4.36.0 audits establish both counterexamples. The current packaging environment cannot rerun Lean. The Lean source archive is a separate artifact; see the research note for exact scope.

Run from this directory:

    python3 verify.py

Do not use Python -O. No external dependencies are needed. The previous public counterexamples by Wentao Li and Sungsoo Na are credited in the note. AI-assisted research; not peer reviewed.
