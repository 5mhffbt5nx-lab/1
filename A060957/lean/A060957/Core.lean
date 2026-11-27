import Mathlib.Tactic.Ring
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.SplitIfs

namespace A060957
open Finset

def InP (n m : ℕ) : Prop :=
  ∃ S : Finset ℕ, S ⊆ Finset.Icc 1 n ∧ (∏ x ∈ S, x) = m

lemma product_nz (S : Finset ℕ) (h : ∀ x ∈ S, x ≠ 0) :
    (∏ x ∈ S, x) ≠ 0 := by
  induction S using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    rw [Finset.prod_insert ha]
    exact mul_ne_zero (h a (Finset.mem_insert_self a s))
      (ih (fun x hx => h x (Finset.mem_insert_of_mem hx)))

lemma prod_support (Q S : Finset ℕ) (h : ∀ x ∈ S, x ≠ 0)
    (hq : ∀ x ∈ S, x.primeFactors ⊆ Q) :
    (∏ x ∈ S, x).primeFactors ⊆ Q := by
  induction S using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    have hs : ∀ x ∈ s, x ≠ 0 := fun x hx => h x (Finset.mem_insert_of_mem hx)
    rw [Finset.prod_insert ha, Nat.primeFactors_mul
      (h a (Finset.mem_insert_self a s)) (product_nz s hs)]
    exact Finset.union_subset (hq a (Finset.mem_insert_self a s))
      (ih hs (fun x hx => hq x (Finset.mem_insert_of_mem hx)))

/-- The exact extremality lemma: equality forces every positive term and no
    negative term. The universe is arbitrary, and the proof is not a scan. -/
lemma force (D S : Finset ℕ) (w : ℕ → ℤ) (hSD : S ⊆ D)
    (he : (∑ t ∈ S, w t) = ∑ t ∈ D.filter (fun t => 0 < w t), w t) :
    D.filter (fun t => 0 < w t) ⊆ S ∧
    ∀ t ∈ S \ D.filter (fun t => 0 < w t), w t = 0 := by
  classical
  have hf : D.filter (fun t => t ∈ S) = S := by
    ext t
    simp only [Finset.mem_filter]
    exact ⟨fun h => h.2, fun h => ⟨hSD h, h⟩⟩
  have h1 : (∑ t ∈ D, if t ∈ S then w t else 0) = ∑ t ∈ S, w t := by
    rw [← Finset.sum_filter, hf]
  have h2 : (∑ t ∈ D, if 0 < w t then w t else 0) =
      ∑ t ∈ D.filter (fun t => 0 < w t), w t := by
    rw [Finset.sum_filter]
  have hsum : (∑ t ∈ D, if t ∈ S then w t else 0) =
      ∑ t ∈ D, if 0 < w t then w t else 0 := h1.trans (he.trans h2.symm)
  have hle : ∀ t ∈ D, (if t ∈ S then w t else 0) ≤
      (if 0 < w t then w t else 0) := by
    intro t ht
    split_ifs <;> omega
  have hpoint : ∀ t ∈ D, (if t ∈ S then w t else 0) =
      (if 0 < w t then w t else 0) := by
    intro t ht
    by_contra hn
    have hs := Finset.sum_lt_sum hle ⟨t, ht, lt_of_le_of_ne (hle t ht) hn⟩
    rw [hsum] at hs
    exact (lt_irrefl _) hs
  constructor
  · intro t ht
    obtain ⟨hd, hp⟩ := Finset.mem_filter.mp ht
    by_contra hnot
    have hh := hpoint t hd
    have hh' : (0 : ℤ) = w t := by simpa [hnot, hp] using hh
    omega
  · intro t ht
    obtain ⟨hmem, hnot⟩ := Finset.mem_sdiff.mp ht
    have hp : ¬ 0 < w t := fun h => hnot (Finset.mem_filter.mpr ⟨hSD hmem,h⟩)
    simpa [hmem, hp] using hpoint t (hSD hmem)

def canProd : List ℕ → ℕ → Bool
  | [], m => decide (m = 1)
  | a :: l, m => canProd l m || (decide (a ∣ m) && canProd l (m/a))

lemma canProd_complete (l : List ℕ) (hpos : ∀ a ∈ l, 0 < a)
    (S : Finset ℕ) (hS : S ⊆ l.toFinset) :
    canProd l (∏ t ∈ S, t) = true := by
  induction l generalizing S with
  | nil =>
    have h : S = ∅ := by
      ext t
      constructor
      · intro ht
        have hh := hS ht
        simp at hh
      · intro ht
        simp at ht
    subst S
    simp [canProd]
  | cons a l ih =>
    have hap : 0 < a := hpos a (by simp)
    have hl : ∀ b ∈ l, 0 < b := fun b hb => hpos b (by simp [hb])
    by_cases ha : a ∈ S
    · have hsub : S.erase a ⊆ l.toFinset := by
        intro t ht
        obtain ⟨hne,hm⟩ := Finset.mem_erase.mp ht
        have hmem := List.mem_toFinset.mp (hS hm)
        apply List.mem_toFinset.mpr
        rcases List.mem_cons.mp hmem with h | h
        · exact False.elim (hne h)
        · exact h
      have hprod : (∏ t ∈ S, t) = a*(∏ t ∈ S.erase a, t) := by
        calc
          (∏ t ∈ S,t) = ∏ t ∈ insert a (S.erase a),t := by rw [Finset.insert_erase ha]
          _ = a*(∏ t ∈ S.erase a,t) := Finset.prod_insert (by simp)
      have hdiv : a ∣ a*(∏ t ∈ S.erase a, t) := ⟨_,rfl⟩
      rw [hprod, canProd, Nat.mul_div_cancel_left _ hap]
      simp [hdiv, ih hl (S.erase a) hsub]
    · have hsub : S ⊆ l.toFinset := by
        intro t ht
        have hmem := List.mem_toFinset.mp (hS ht)
        apply List.mem_toFinset.mpr
        rcases List.mem_cons.mp hmem with h | h
        · subst t; exact False.elim (ha ht)
        · exact h
      simp [canProd, ih hl S hsub]

def Conjecture : Prop := ∀ n p m a k : ℕ,
  Nat.Prime p → p ≤ n → 0 < k → k < a →
  InP n m → InP n (p^a*m) → InP n (p^k*m)


/-- Statement with the same membership equality direction and quantifier
    order as the public Formal Conjectures entry. -/
def productsOfSubsets (n : ℕ) : Set ℕ :=
  {m : ℕ | ∃ s : Finset ℕ, s ⊆ Finset.Icc 1 n ∧ m = s.prod id}

lemma mem_products_iff (n m : ℕ) : m ∈ productsOfSubsets n ↔ InP n m := by
  constructor
  · rintro ⟨s, hs, he⟩
    exact ⟨s, hs, he.symm⟩
  · rintro ⟨s, hs, he⟩
    exact ⟨s, hs, he.symm⟩

theorem source_equiv : Conjecture ↔
    (∀ (n p : ℕ), p.Prime → p ≤ n →
      ∀ (m a_exp : ℕ), m ∈ productsOfSubsets n →
        p ^ a_exp * m ∈ productsOfSubsets n →
        ∀ k : ℕ, 0 < k → k < a_exp → p ^ k * m ∈ productsOfSubsets n) := by
  constructor
  · intro h n p hp hpn m a hm ha k hk hka
    exact (mem_products_iff _ _).2
      (h n p m a k hp hpn hk hka ((mem_products_iff _ _).1 hm)
        ((mem_products_iff _ _).1 ha))
  · intro h n p m a k hp hpn hk hka hm ha
    exact (mem_products_iff _ _).1
      (h n p hp hpn m a ((mem_products_iff _ _).2 hm)
        ((mem_products_iff _ _).2 ha) k hk hka)

#print axioms source_equiv
#print axioms force
#print axioms canProd_complete
end A060957
