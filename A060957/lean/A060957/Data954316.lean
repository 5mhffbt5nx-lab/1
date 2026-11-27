import A060957.Core
import Mathlib.Data.Nat.PadicValNat

namespace A060957.Case954316
open Finset
set_option maxHeartbeats 0
set_option maxRecDepth 100000

def N : ℕ := 954316
def p : ℕ := 101
def Z : ℕ := 378089444731722233953867379643788100
def Q : Finset ℕ := {2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,101}

def wt (t : ℕ) : ℤ :=
    -3002000998999999 * (padicValNat 2 t : ℤ)
    -1998999999999002 * (padicValNat 3 t : ℤ)
    -2001998999000000 * (padicValNat 5 t : ℤ)
    -1002000000998999 * (padicValNat 7 t : ℤ)
    -1999999999998000 * (padicValNat 11 t : ℤ)
    -2000000000999 * (padicValNat 13 t : ℤ)
    -1999999998000000 * (padicValNat 17 t : ℤ)
    +2000000000000002 * (padicValNat 19 t : ℤ)
    +3001999998998999 * (padicValNat 23 t : ℤ)
    +2001999999998999 * (padicValNat 29 t : ℤ)
    +2002000000000000 * (padicValNat 31 t : ℤ)
    -1001000000 * (padicValNat 37 t : ℤ)
    +2000002000000000 * (padicValNat 41 t : ℤ)
    +1001998998999999 * (padicValNat 43 t : ℤ)
    -1000000001000 * (padicValNat 47 t : ℤ)

lemma wt_mul {a b : ℕ} (ha : a ≠ 0) (hb : b ≠ 0) :
    wt (a*b) = wt a + wt b := by
  simp only [wt, Nat.padicValNat_def,
    ← Nat.factorization_def _ (show Nat.Prime 2 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 3 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 5 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 7 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 11 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 13 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 17 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 19 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 23 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 29 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 31 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 37 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 41 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 43 by decide +kernel),
    ← Nat.factorization_def _ (show Nat.Prime 47 by decide +kernel),
    Nat.factorization_mul ha hb, Finsupp.add_apply, Nat.cast_add]
  ring

lemma wt_prod (S : Finset ℕ) (h : ∀ x ∈ S, x ≠ 0) :
    wt (∏ x ∈ S, x) = ∑ x ∈ S, wt x := by
  induction S using Finset.induction_on with
  | empty => simp [wt, Nat.padicValNat_def]
  | @insert a s ha ih =>
    have hs : ∀ x ∈ s, x ≠ 0 := fun x hx => h x (Finset.mem_insert_of_mem hx)
    rw [Finset.prod_insert ha, Finset.sum_insert ha,
      wt_mul (h a (Finset.mem_insert_self a s)) (product_nz s hs), ih hs]

def D : Finset ℕ := (Finset.Icc 1 N).filter (fun t => t.primeFactors ⊆ Q)
def Pplus : Finset ℕ := D.filter (fun t => 0 < wt t)
-- The value is pinned by the proof carried in this subtype.
opaque commonProduct : {c : ℕ // c = ∏ t ∈ Pplus, t} := ⟨_, rfl⟩
def C : ℕ := commonProduct.val
theorem C_eq : C = ∏ t ∈ Pplus, t := commonProduct.property
def M : ℕ := C * (Z * p^3)

def low : Finset ℕ := {753269,895869,700553,954316,878275,954193,101,10201}
def high : Finset ℕ := {2679,4147,2737,3526,5735,270579,418847,276437,356126,579235}
def zeroList : List ℕ := [1,101,2679,2737,3526,4147,5735,10201,270579,276437,356126,418847,579235,700553,753269,878275,895869,954193,954316]

lemma mem_D_iff (t : ℕ) : t ∈ D ↔ 1 ≤ t ∧ t ≤ N ∧ t.primeFactors ⊆ Q := by
  simp only [D, Finset.mem_filter, Finset.mem_Icc, and_assoc]

lemma C_nz : C ≠ 0 := by
  rw [C_eq]
  apply product_nz
  intro t ht
  have hd := (mem_D_iff t).mp (Finset.mem_filter.mp ht).1
  omega

lemma C_support : C.primeFactors ⊆ Q := by
  rw [C_eq]
  apply prod_support Q
  · intro t ht
    have hd := (mem_D_iff t).mp (Finset.mem_filter.mp ht).1
    omega
  · intro t ht
    exact ((mem_D_iff t).mp (Finset.mem_filter.mp ht).1).2.2

lemma C_wt : wt C = ∑ t ∈ Pplus, wt t := by
  rw [C_eq]
  apply wt_prod
  intro t ht
  have hd := (mem_D_iff t).mp (Finset.mem_filter.mp ht).1
  omega

lemma low_cert : ∀ t ∈ low, 1 ≤ t ∧ t ≤ N ∧ t.primeFactors ⊆ Q ∧ wt t = 0 := by
  intro t ht
  simp only [low, Finset.mem_insert, Finset.mem_singleton] at ht
  rcases ht with h | h | h | h | h | h | h | h
  all_goals subst t
  all_goals decide +kernel
lemma high_cert : ∀ t ∈ high, 1 ≤ t ∧ t ≤ N ∧ t.primeFactors ⊆ Q ∧ wt t = 0 := by
  intro t ht
  simp only [high, Finset.mem_insert, Finset.mem_singleton] at ht
  rcases ht with h | h | h | h | h | h | h | h | h | h
  all_goals subst t
  all_goals decide +kernel
lemma low_prod : (∏ t ∈ low, t) = Z*p^3 := by decide +kernel
lemma high_prod : (∏ t ∈ high, t) = Z*p^5 := by decide +kernel
lemma mid_nz : Z*p^4 ≠ 0 := by decide +kernel
lemma p_cert : p ≠ 0 ∧ p.primeFactors ⊆ Q ∧ wt p = 0 := by decide +kernel
lemma low_nz : ∀ t ∈ low, t ≠ 0 := by
  intro t ht
  have h := (low_cert t ht).1
  omega
lemma mid_eq : Z*p^4 = (∏ t ∈ low, t)*p := by
  rw [low_prod]
  ring
lemma mid_wt : wt (Z*p^4) = 0 := by
  rw [mid_eq, wt_mul (product_nz low low_nz) p_cert.1,
    wt_prod low low_nz, p_cert.2.2, add_zero]
  exact Finset.sum_eq_zero (fun t ht => (low_cert t ht).2.2.2)
lemma mid_support : (Z*p^4).primeFactors ⊆ Q := by
  rw [mid_eq, Nat.primeFactors_mul (product_nz low low_nz) p_cert.1]
  exact Finset.union_subset
    (prod_support Q low low_nz (fun t ht => (low_cert t ht).2.2.1)) p_cert.2.1

lemma combine (R : Finset ℕ)
    (hR : ∀ t ∈ R, 1 ≤ t ∧ t ≤ N ∧ t.primeFactors ⊆ Q ∧ wt t = 0) :
    InP N (C * (∏ t ∈ R, t)) := by
  have hdis : Disjoint Pplus R := by
    apply Finset.disjoint_left.mpr
    intro t ht hr
    have hw := (Finset.mem_filter.mp ht).2
    have hz := (hR t hr).2.2.2
    omega
  refine ⟨Pplus ∪ R, ?_, ?_⟩
  · intro t ht
    rcases Finset.mem_union.mp ht with hp | hr
    · have h := (mem_D_iff t).mp (Finset.mem_filter.mp hp).1
      exact Finset.mem_Icc.mpr ⟨h.1,h.2.1⟩
    · have h := hR t hr
      exact Finset.mem_Icc.mpr ⟨h.1,h.2.1⟩
  · rw [Finset.prod_union hdis, C_eq]


end A060957.Case954316
