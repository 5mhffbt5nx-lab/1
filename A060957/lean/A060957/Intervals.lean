import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Finset.Sort
import Mathlib.Order.Interval.Finset.Fin
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Data.Int.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic.Linarith

namespace A060957

/-- The exact integer Minkowski sum of two nonempty closed intervals. -/
theorem interval_minkowski (a b c d z : ℤ) (hab : a ≤ b) (hcd : c ≤ d) :
    (∃ x y : ℤ, a ≤ x ∧ x ≤ b ∧ c ≤ y ∧ y ≤ d ∧ x + y = z) ↔
      a+c ≤ z ∧ z ≤ b+d := by
  constructor
  · rintro ⟨x,y,hax,hxb,hcy,hyd,rfl⟩
    omega
  · rintro ⟨hlo,hhi⟩
    refine ⟨max a (z-d), z-max a (z-d), ?_, ?_, ?_, ?_, ?_⟩ <;> omega

/-- The sum set formed by choosing one integer from each listed interval. -/
def IntervalSum : List (ℤ × ℤ) → ℤ → Prop
  | [], z => z = 0
  | (a,b) :: rest, z =>
      ∃ x y, a ≤ x ∧ x ≤ b ∧ IntervalSum rest y ∧ x+y = z

private theorem bounds_ordered (xs : List (ℤ × ℤ))
    (h : ∀ i ∈ xs, i.1 ≤ i.2) :
    (xs.map Prod.fst).sum ≤ (xs.map Prod.snd).sum := by
  induction xs with
  | nil => simp
  | cons head rest ih =>
    have ha := h head (by simp)
    have hb := ih (fun i hi => h i (by simp [hi]))
    simp only [List.map_cons, List.sum_cons]
    omega

theorem intervalSum_iff (xs : List (ℤ × ℤ)) (z : ℤ)
    (h : ∀ i ∈ xs, i.1 ≤ i.2) :
    IntervalSum xs z ↔ (xs.map Prod.fst).sum ≤ z ∧ z ≤ (xs.map Prod.snd).sum := by
  induction xs generalizing z with
  | nil => simp [IntervalSum, le_antisymm_iff, and_comm]
  | cons head rest ih =>
    obtain ⟨a,b⟩ := head
    have hab : a ≤ b := h (a,b) (by simp)
    have hr : ∀ i ∈ rest, i.1 ≤ i.2 := fun i hi => h i (by simp [hi])
    simp only [IntervalSum, List.map_cons, List.sum_cons]
    simp_rw [ih _ hr]
    simpa only [and_assoc] using
      interval_minkowski a b (rest.map Prod.fst).sum (rest.map Prod.snd).sum z hab
        (bounds_ordered rest hr)

open Finset

private theorem offset_sum (b q n : ℕ) :
    (∑ i ∈ range n, (q + if i < b then 0 else 1)) = n*q + (n-b) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [sum_range_succ, ih, Nat.succ_mul]
    split <;> omega

/-- Construct every sum from the minimum to the maximum for a fixed
cardinality in the chain 0,...,L. The first c values form the chosen subset. -/
theorem chain_realize (L c s : ℕ) (hc : 0 < c) (hcap : c ≤ L+1)
    (hs : s ≤ c*(L+1-c)) :
    ∃ f : ℕ → ℕ, StrictMono f ∧ (∀ i < c, f i ≤ L) ∧
      (∑ i ∈ range c, f i) = (∑ i ∈ range c, i) + s := by
  let B := L+1-c
  let q := s/c
  let r := s%c
  have hr : r < c := Nat.mod_lt _ hc
  have hqr : c*q+r=s := Nat.div_add_mod s c
  have hsB : s ≤ c*B := hs
  have hq : q ≤ B := by
    by_contra! hn
    have hm := Nat.mul_lt_mul_of_pos_left hn hc
    omega
  have hstrict : 0 < r → q < B := by
    intro hpos
    by_contra! hn
    have hm := Nat.mul_le_mul_left c hn
    omega
  let f : ℕ → ℕ := fun i => i + (q + if i < c-r then 0 else 1)
  refine ⟨f, ?_, ?_, ?_⟩
  · intro i j hij
    dsimp only [f]
    split <;> split <;> omega
  · intro i hi
    dsimp only [f]
    have hB : B+c=L+1 := by dsimp [B]; omega
    split
    · omega
    · have hpos : 0 < r := by omega
      have hlt := hstrict hpos
      omega
  · change (∑ i ∈ range c, (i + (q + if i < c-r then 0 else 1))) = _
    rw [sum_add_distrib, offset_sum]
    omega

theorem chain_subset_realize (L c s : ℕ) (hcap : c ≤ L+1)
    (hs : s ≤ c*(L+1-c)) :
    ∃ S : Finset ℕ, S.card = c ∧ (∀ i ∈ S, i ≤ L) ∧
      (∑ i ∈ S, i) = (∑ i ∈ range c, i) + s := by
  by_cases hc : c = 0
  · subst c
    simp at hs
    exact ⟨∅, by simp, by simp, by simp [hs]⟩
  · obtain ⟨f, hmono, hbound, hsum⟩ :=
      chain_realize L c s (Nat.pos_of_ne_zero hc) hcap hs
    let e : ℕ ↪ ℕ := ⟨f, hmono.injective⟩
    refine ⟨(range c).map e, by simp, ?_, ?_⟩
    · intro i hi
      obtain ⟨j, hj, rfl⟩ := mem_map.mp hi
      exact hbound j (mem_range.mp hj)
    · rw [sum_map]
      exact hsum

/-- Exact sum interval for subsets of fixed size from 0 through L. -/
theorem chain_subset_sum_iff (L c z : ℕ) (hcap : c ≤ L+1) :
    (∃ S : Finset ℕ, S.card = c ∧ (∀ i ∈ S, i ≤ L) ∧ (∑ i ∈ S, i) = z) ↔
      (∑ i ∈ range c, i) ≤ z ∧ z ≤ (∑ i ∈ range c, i) + c*(L+1-c) := by
  constructor
  · rintro ⟨S,hc,hbound,rfl⟩
    let e := S.orderEmbOfFin hc
    have hbounds (i : Fin c) : i.val ≤ e i ∧ e i ≤ i.val + (L+1-c) := by
      have hlow : (Iic i).map e.toEmbedding ⊆ Iic (e i) := by
        intro a ha
        obtain ⟨j,hj,rfl⟩ := mem_map.mp ha
        exact mem_Iic.mpr (e.monotone (mem_Iic.mp hj))
      have hhigh : (Ici i).map e.toEmbedding ⊆ Icc (e i) L := by
        intro a ha
        obtain ⟨j,hj,rfl⟩ := mem_map.mp ha
        exact mem_Icc.mpr ⟨e.monotone (mem_Ici.mp hj), hbound _ (S.orderEmbOfFin_mem hc j)⟩
      have h₁ := card_le_card hlow
      have h₂ := card_le_card hhigh
      rw [card_map, Fin.card_Iic, Nat.card_Iic] at h₁
      rw [card_map, Fin.card_Ici, Nat.card_Icc] at h₂
      have := i.isLt
      omega
    have hsum : (∑ i : Fin c, e i) = (∑ i ∈ S, i) := by
      rw [← S.map_orderEmbOfFin_univ hc, sum_map]
      rfl
    have hlow : (∑ i : Fin c, i.val) ≤ ∑ i : Fin c, e i :=
      sum_le_sum (fun i _ => (hbounds i).1)
    have hhigh : (∑ i : Fin c, e i) ≤ ∑ i : Fin c, (i.val + (L+1-c)) :=
      sum_le_sum (fun i _ => (hbounds i).2)
    rw [hsum, Fin.sum_univ_eq_sum_range (fun x => x)] at hlow
    rw [hsum, sum_add_distrib, Fin.sum_univ_eq_sum_range (fun x => x)] at hhigh
    exact ⟨hlow, by simpa [Nat.mul_comm] using hhigh⟩
  · rintro ⟨hlo,hhi⟩
    let s := z - (∑ i ∈ range c, i)
    have hs : s ≤ c*(L+1-c) := by dsimp [s]; omega
    obtain ⟨S,hc,hbound,hsum⟩ := chain_subset_realize L c s hcap hs
    exact ⟨S,hc,hbound,by rw [hsum]; dsimp [s]; omega⟩

#print axioms chain_subset_sum_iff
#print axioms interval_minkowski
#print axioms intervalSum_iff
#print axioms chain_subset_realize
#print axioms chain_realize

end A060957
