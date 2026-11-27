# Two explicit small counterexamples to Ang's subset-product interpolation conjecture

*Research note, 27 November 2026. AI-assisted research; not peer reviewed.*

## Abstract

For a positive integer $n$, let $P_n$ denote the products of subsets of $\{1,\ldots,n\}$. Ang's interpolation conjecture (OEIS A060957) predicts that if $p\le n$ is prime and $m,p^a m\in P_n$, then $p^k m\in P_n$ for $0<k<a$. The conjecture has already been disproved by earlier work. We give explicit, independently reproducible counterexamples at $(n,p)=(130203,53)$ and $(954316,101)$, both with $a=2$ and $k=1$. A supporting-weight argument reduces the exclusion of the middle product to 21 and 19 neutral factors, respectively. A finite exact computation establishes the entire relative exponent set $\{0,1,2,3,5,6,7,8\}$ in each case. We do not claim a first disproof, a global minimum, or complete priority clearance.

## 1. Statement

Write $v_q(t)$ for the exponent of the prime $q$ in the positive integer $t$. The claim proved here is that for each of the two indicated pairs there is an explicitly defined positive integer $m$ such that

$$m\in P_n,\qquad pm\notin P_n,\qquad p^2m\in P_n.$$

There is no restriction that $p$ not divide $m$ in the original conjecture.

## 2. A supporting-weight reduction

Let $Q$ be a finite list of distinct primes not containing $p$, and let $D$ consist of the positive integers at most $n$ whose prime divisors belong to $Q\cup\{p\}$. Choose integer coefficients $w_q$ and define

$$w(t)=\sum_{q\in Q}w_qv_q(t),\qquad D_+=\{t\in D:w(t)>0\},\qquad D_0=\{t\in D:w(t)=0\},\qquad C=\prod_{t\in D_+}t.$$

Suppose $Z$ has prime support in $Q$ and $w(Z)=0$. We claim that for every integer $e\ge0$,

$$CZp^e\in P_n\quad\Longleftrightarrow\quad Zp^e=\prod_{t\in R}t\text{ for some }R\subseteq D_0.$$

**Proof.** Every factor of a representation of $CZp^e$ lies in $D$, since its prime divisors divide the target. The weight is additive on positive products, and $w(p)=w(Z)=0$. The target weight is thus $w(C)=\sum_{t\in D_+}w(t)$, the largest weight of any subset product from $D$. For a representing subset $S$,

$$w(C)-\sum_{t\in S}w(t)=\sum_{t\in D_+\setminus S}w(t)-\sum_{\substack{t\in S\\w(t)<0}}w(t).$$

Both sums on the right, with their indicated signs, are nonnegative; any summand present is strictly positive. Equality forces every positive-weight factor to be chosen and every negative-weight factor to be omitted. Cancel the nonzero product $C$ to obtain the required subset of $D_0$. Conversely, a subset of $D_0$ is disjoint from $D_+$; adjoining $D_+$ gives the target. This proves the equivalence.

## 3. Explicit parameters

In each case there are five integers $A_i$ and six integers $B_j$ with

$$Z=\left(\prod_{i=1}^5 A_i\right)^2=\prod_{j=1}^6 B_j=\prod_{q\in Q}q^2.$$

For the smaller instance, two extra neutral factors are denoted by $U,V$.

| Parameter | Case I | Case II |
|---|---|---|
| $n$ | 130203 | 954316 |
| $p$ | 53 | 101 |
| $Z$ | 92568222856376731590410384100 | 378089444731722233953867379643788100 |
| $Q$ | 2,3,5,7,11,13,17,19,23,29,31,37,41 | 2,3,5,7,11,13,17,19,23,29,31,37,41,43,47 |
| $A$ | 481,1054,627,805,1189 | 2679,4147,2737,3526,5735 |
| $B$ | 59755,64493,130203,82708,35815,62279 | 753269,895869,700553,954316,878275,954193 |
| Extra neutral factors | 62974,78039 | none |

The following integer weights are given in the displayed order of $Q$ (the weight of $p$ is zero).

| Prime | Case I weight | Case II weight |
|---:|---:|---:|
| 2 | -1995998 | -3002000998999999 |
| 3 | -994998 | -1998999999999002 |
| 5 | -991997 | -2001998999000000 |
| 7 | -1000001 | -1002000000998999 |
| 11 | 999 | -1999999999998000 |
| 13 | -2000 | -2000000000999 |
| 17 | -4002 | -1999999998000000 |
| 19 | 993999 | 2000000000000002 |
| 23 | 1991998 | 3001999998998999 |
| 29 | -2 | 2001999999998999 |
| 31 | 2000000 | 2002000000000000 |
| 37 | 2000 | -1001000000 |
| 41 | 2 | 2000002000000000 |
| 43 | — | 1001998998999999 |
| 47 | — | -1000000001000 |

Exact integer scanning yields the complete neutral sets

$$D_0=\{1,p,p^2\}\cup\{A_i,pA_i:1\le i\le5\}\cup\{B_j:1\le j\le6\}\cup F,$$

where $F=\{62974,78039\}$ in Case I and $F=\varnothing$ in Case II. These unions are disjoint. The exhaustive scan is specified in Section 5 and implemented in the companion verifier.

The integers $m=CZp^3$ have the following explicit prime factorizations, specified by exponent vectors in the order $Q$ followed by $p$:

- Case I: $(188,425,327,173,368,253,184,410,588,154,561,161,138,106)$.
- Case II: $(745,1305,716,900,493,933,380,1673,1968,1325,1266,485,967,721,393,264)$.

## 4. Algebraic exclusion of the middle exponent

The subset $\{B_1,\ldots,B_6,p,p^2\}$ has product $Zp^3$, and $\{A_1,pA_1,\ldots,A_5,pA_5\}$ has product $Zp^5$. All listed elements are neutral and at most $n$. The supporting-weight reduction supplies representations of $m$ and $p^2m$.

For exclusion, let $x_i\in\{0,1,2\}$ count selected elements in $\{A_i,pA_i\}$ and $y_j\in\{0,1\}$ record the choice of $B_j$. Every auxiliary prime must have exponent 2.

### Case I: the two extra neutral elements

Here $U=62974=2\cdot23\cdot37^2$ and $V=78039=3^2\cdot13\cdot23\cdot29$. Let $z_1,z_2\in\{0,1\}$ record their selection.

The valuation equations at primes 7 and 5 give

$$x_4+2y_6=2,\qquad x_4+y_1+y_5=2,$$

hence $y_1=y_5=y_6$. The equations at 19 and 11 imply $x_3=2-2y_6$ and $y_2=y_6$. At 3 we obtain $y_3+z_2=y_6$. At 17 and 31, $x_2=2-y_6-y_3=2-y_6-y_4$, so $y_3=y_4$. At 2, $y_3+z_1=y_6$. Consequently $z_1=z_2=y_6-y_3$. Finally the equation at 13 is

$$x_1=2-2y_6-z_2\ge0.$$

If $y_6=0$, then $z_2=0$ from $y_3+z_2=0$. If $y_6=1$, the displayed inequality again implies $z_2=0$. Thus both extra factors are excluded, all $y_j$ are equal, and the equation at 41 gives $x_5=2-2y_6$. The remaining $x_i$ also equal $2-2y_6$. The only two patterns are all $A$-chains fully selected or all $B$-factors selected.

### Case II: sparse chains

In Case II the repeated prime exponents give the following equalities:

- primes 3 and 47: $x_1+2y_2=x_1+2y_1=2$, so $y_1=y_2$;
- primes 13 and 29: $x_2+2y_2=x_2+2y_3=2$, so $y_2=y_3$;
- primes 7 and 23: $x_3+2y_3=x_3+2y_4=2$, so $y_3=y_4$;
- primes 2 and 43: $x_4+2y_4=x_4+2y_5=2$, so $y_4=y_5$;
- primes 5 and 37: $x_5+2y_5=x_5+2y_6=2$, so $y_5=y_6$.

Thus all $y_j$ equal a common $y\in\{0,1\}$ and every $x_i=2-2y$. The two patterns are precisely the same as in Case I. They are feasible because of the product identities for $Z$.

### Conclusion

The non-pure part contributes $p$-exponent 0 when all $B$ are selected and 5 when all $A$-chains are selected. The independent subset choices of $p,p^2$ contribute exponents $0,1,2,3$. Therefore

$$\{e\ge0:CZp^e\in P_n\}=\{0,1,2,3,5,6,7,8\}.$$

In particular exponent 4 is impossible. Taking $m=CZp^3$ gives the asserted counterexamples.

## 5. Reproducible finite certificate

The only exhaustive step required by the preceding algebraic argument is the neutral-set classification. For each integer $1\le t\le n$, divide out all primes in $Q\cup\{p\}$. A remaining cofactor 1 is equivalent to $t\in D$ by unique prime factorization. Sum the integer weights times the recorded valuations. Test equality of the resulting zero set with the explicit lists above. The companion Python program performs this entire scan and independently verifies the products, prime factorizations and residual exponent set.

| Quantity | Case I | Case II |
|---|---:|---:|
| $\lvert D\rvert$ | 9940 | 34565 |
| Positive weight | 1039 | 3355 |
| Negative weight | 8880 | 31191 |
| Zero weight | 21 | 19 |
| Divisor-pruned subset-product states | 5072 | 2909 |

For an independent check, start with the set of products $R_0=\{1\}$. For every neutral factor $t\ne1$, update

$$R_{i+1}=R_i\cup\{rt:r\in R_i,\;rt\mid Zp^8\}.$$

Induction on the scanned factors proves this is exactly the set of their subset products dividing $Zp^8$: a partial product of such a representation also divides the target. The total valuation of $p$ in all neutral factors is 8, so checking all $0\le e\le8$ exhausts the relative fiber. No probabilistic primality tests, floating point or heuristic exclusion are needed. The companion Python script was run successfully for both cases on 27 November 2026.

## 6. Formal verification and scope

The separate Lean 4.36.0 R02 project supplies the concrete theorems A060957.Case130203.counterexample130203 and A060957.Case954316.counterexample954316, and disproof_source for each case, against an explicit mirror of the original conjecture. Its archived audit logs report only the standard axioms propext, Classical.choice and Quot.sound for these final theorems. The archive has been hash-checked during preparation of this note; the compiler was not rerun in this packaging environment. The formal theorems establish the two endpoint memberships and the middle nonmembership; the complete relative fiber statement above is established by the supplied mathematical argument and exact Python certificate, not asserted to have been separately formalized in Lean.

Neither this computation nor the formal disproof establishes that either $n$ is globally minimal. We acknowledge the earlier disproofs and do not claim first discovery. This note deliberately makes no claim about the precise content of Na's Theorem 7.6, whose full text was not available during this comparison.

## References

1. OEIS, A060957, including the conjecture of Yan Sheng Ang (2020). https://oeis.org/A060957
2. Wentao Li, A counterexample to the A060957 interpolation conjecture (2026-10-09). https://github.com/VictorLiwentao/lean-oeis-proofs/blob/3be119e75ba5b31f034dc0c0b249975d17def711/proofs/new-proofs/A060957/PROOF.md
3. Sungsoo Na, Ang's conjecture on products of distinct integers fails for large primes, v2.0.0 (2026-10-28), DOI https://doi.org/10.5281/zenodo.23599288. Formalization: https://github.com/TEAM-42KR/ang-subset-products-lean
4. Google DeepMind, Formal Conjectures, OEIS 60957. https://github.com/google-deepmind/formal-conjectures/blob/main/FormalConjectures/OEIS/60957.lean

AI assistance was used in exploration, proof development, code preparation and editing. This is a preliminary research note, not a peer-reviewed publication; authorship and further academic claims remain to be finalized by the project owner.
