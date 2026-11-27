# Supplement: two smaller counterexamples

Research update, 27 November 2026. AI-assisted, not peer reviewed.

The exact verifier now also establishes counterexamples at $(n,p)=(72335,43)$ and $(69819,59)$. These are improvements of the upper bound on the least counterexample within this project, not claims of international priority or global minimality.

Use the supporting-weight reduction in [paper.md](paper.md). The complete numerical data, including the ordered auxiliary prime lists, weights, five A factors, six B factors, and exponent vector of m, are in [verify_recent.py](verify_recent.py). In each case set $Z=(\prod_{q\in Q}q)^2$, $C=\prod_{1\le t\le n,\ t\in D,\ w(t)>0}t$, and $m=CZp^3$. The three linear weights in the research report are encoded as an integer weight $10^6 W_1+10^3 W_2+W_3$. For $t\le n$ each valuation vector has total at most $\lfloor\log_2 n\rfloor=16$; the last two coordinates of the lexicographic weight are bounded in magnitude by 128 and 48, respectively. Therefore encoding preserves the sign of the lexicographic weight on the scanned factors.

The exhaustive scan determines all neutral factors. The verifier independently checks that $Z=\prod B_j=(\prod A_i)^2$, tests the two explicit endpoint representations, and computes the exact neutral subset products dividing $Zp^8$ by the recurrence described in the original note. In both cases the total p-adic valuation of the neutral factors is 8, so this certifies the entire relative exponent set

$$\{e\ge0:CZp^e\in P_n\}=\{0,1,2,3,5,6,7,8\}.$$

The run log [verify_recent.log](verify_recent.log) records both successful computations. The resulting bound on the least counterexample is at most 69819; no global minimum or finite lower bound is established by the four certificates published here. These two newer instances are not Lean-certified in this release. The earlier instances 130203 and 954316 are treated separately.

Run: python3 verify_recent.py (from this directory, with verify.py alongside it). No external dependencies.
