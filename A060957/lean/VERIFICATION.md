# Lean certification: scope and reproduction

The original R02 files (41 manifest entries, plus SHA256SUMS) are reproduced here unchanged. The archived logs record Lean 4.36.0 and Mathlib v4.36.0. The two final theorem names are:

- A060957.Case130203.counterexample130203 and A060957.Case130203.disproof_source
- A060957.Case954316.counterexample954316 and A060957.Case954316.disproof_source

Each concrete theorem includes primality, the bound p ≤ N, two endpoint memberships and exclusion of the intervening product. The source-equivalent universal statement is defined in Core.lean. Inspect the respective Proof and Audit files. The log's axiom lists contain only propext, Classical.choice and Quot.sound.

The general chain subset-sum and integer interval Minkowski sum results are in Intervals.lean. GapStructure.lean establishes abstract set recurrences, not their realization as arbitrary subset-product fibers. The two newer counterexamples and the asymptotic research are not part of the R02 certification.

From this directory, on a system with Elan installed:

    sha256sum -c SHA256SUMS
    lake exe cache get
    bash verify.sh

The original run logs are archived in logs/. The script writes new audit logs under .lake/certified/. The Python audit script checks the allowed axioms in a supplied log but is not itself a Lean proof. Source/log identity was verified on upload using Git blob hashes against the extracted archive; the original SHA-256 manifest was also verified locally. This does not represent a new Lean run.

No claims of international priority, global minimum, or external peer review are made.
