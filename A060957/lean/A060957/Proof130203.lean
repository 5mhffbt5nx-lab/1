import A060957.Certificate130203

namespace A060957.Case130203
open Finset
set_option maxHeartbeats 0
set_option maxRecDepth 100000

theorem missing_mid : ¬ InP N (C*(Z*p^4)) := by
  rintro ⟨S,hS,hprod⟩
  have hn : ∀ t ∈ S, t ≠ 0 := by
    intro t ht
    have hh := Finset.mem_Icc.mp (hS ht)
    omega
  have hsupp : (C*(Z*p^4)).primeFactors ⊆ Q := by
    rw [Nat.primeFactors_mul C_nz mid_nz]
    exact Finset.union_subset C_support mid_support
  have hSD : S ⊆ D := by
    intro t ht
    have htd : t ∣ (∏ x ∈ S,x) := Finset.dvd_prod_of_mem (fun x : ℕ => x) ht
    rw [hprod] at htd
    have hts := Nat.primeFactors_mono htd (mul_ne_zero C_nz mid_nz)
    have hh := Finset.mem_Icc.mp (hS ht)
    exact (mem_D_iff t).mpr ⟨hh.1,hh.2, fun x hx => hsupp (hts hx)⟩
  have he : (∑ t ∈ S,wt t) = ∑ t ∈ Pplus,wt t := by
    rw [← wt_prod S hn, hprod, wt_mul C_nz mid_nz, mid_wt, add_zero, C_wt]
  obtain ⟨hPS,hzero⟩ := force D S wt hSD he
  let R := S \ Pplus
  have hdis : Disjoint Pplus R := Finset.disjoint_left.mpr (by
    intro t ht hr
    exact (Finset.mem_sdiff.mp hr).2 ht)
  have hu : Pplus ∪ R = S := by
    ext t
    simp only [Finset.mem_union, R, Finset.mem_sdiff]
    constructor
    · rintro (hp | hs)
      · exact hPS hp
      · exact hs.1
    · intro hs
      by_cases hp : t ∈ Pplus
      · exact Or.inl hp
      · exact Or.inr ⟨hs,hp⟩
  have heq : C*(∏ t ∈ R,t) = C*(Z*p^4) := calc
    C*(∏ t ∈ R,t) = ∏ t ∈ Pplus ∪ R,t := by
      simpa only [C_eq] using (Finset.prod_union (f := fun t : ℕ => t) hdis).symm
    _ = ∏ t ∈ S,t := congrArg (fun U : Finset ℕ => ∏ t ∈ U,t) hu
    _ = C*(Z*p^4) := hprod
  have hrem : (∏ t ∈ R,t) = Z*p^4 :=
    Nat.mul_left_cancel (n := C) (Nat.pos_of_ne_zero C_nz) heq
  have hR : R ⊆ zeroList.toFinset := by
    intro t ht
    have hd : t ∣ (∏ x ∈ R,x) := Finset.dvd_prod_of_mem (fun x : ℕ => x) ht
    rw [hrem] at hd
    have hbound := (Finset.mem_Icc.mp (hS (Finset.mem_sdiff.mp ht).1)).2
    exact zero_certificate ⟨t,by unfold N at hbound; omega⟩ hd (hzero t ht)
  have hc := canProd_complete zeroList zeroList_pos R hR
  exact Bool.noConfusion ((congrArg (canProd zeroList) hrem).symm.trans hc |>.symm.trans no_mid_remainder)

private lemma shift_right (base common core first second : ℕ) :
    base^first * (common * (core * base^second)) =
      common * (core * base^(first+second)) := by
  rw [pow_add]
  ac_rfl

/-- Unconditional candidate statement, with the concrete n and p. -/
theorem counterexample130203 : Nat.Prime p ∧ p ≤ N ∧
    InP N M ∧ ¬ InP N (p*M) ∧ InP N (p^2*M) := by
  have hp : Nat.Prime p := by
    decide +kernel
  have hpn : p ≤ N := by
    decide +kernel
  have hlo : InP N (C*(Z*p^3)) :=
    Eq.mp (congrArg (fun x => InP N (C*x)) low_prod) (combine low low_cert)
  have hhi : InP N (C*(Z*p^5)) :=
    Eq.mp (congrArg (fun x => InP N (C*x)) high_prod) (combine high high_cert)
  have hM : M = C*(Z*p^3) := rfl
  have hmidEq : p*M = C*(Z*p^4) := by
    calc
      p*M = p*(C*(Z*p^3)) := congrArg (fun x => p*x) hM
      _ = p^1*(C*(Z*p^3)) :=
        congrArg (fun x => x*(C*(Z*p^3))) (pow_one p).symm
      _ = C*(Z*p^(1+3)) := shift_right p C Z 1 3
      _ = C*(Z*p^4) := congrArg (fun k : ℕ => C*(Z*p^k)) (show 1+3 = 4 from rfl)
  have hhiEq : p^2*M = C*(Z*p^5) := by
    calc
      p^2*M = p^2*(C*(Z*p^3)) := congrArg (fun x => p^2*x) hM
      _ = C*(Z*p^(2+3)) := shift_right p C Z 2 3
      _ = C*(Z*p^5) := congrArg (fun k : ℕ => C*(Z*p^k)) (show 2+3 = 5 from rfl)
  have hloM : InP N M := Eq.mpr (congrArg (InP N) hM) hlo
  exact ⟨hp, hpn, hloM,
    fun h => missing_mid (Eq.mp (congrArg (InP N) hmidEq) h),
    Eq.mpr (congrArg (InP N) hhiEq) hhi⟩


theorem disproof : ¬ Conjecture := by
  intro h
  obtain ⟨hp,hn,hlo,hnot,hhi⟩ := counterexample130203
  have hm := h N p M 2 1 hp hn (by decide) (by decide) hlo hhi
  rw [pow_one] at hm
  exact hnot hm


theorem disproof_source : ¬ ∀ (n p : ℕ), p.Prime → p ≤ n →
      ∀ (m a_exp : ℕ), m ∈ productsOfSubsets n →
        p ^ a_exp * m ∈ productsOfSubsets n →
        ∀ k : ℕ, 0 < k → k < a_exp → p ^ k * m ∈ productsOfSubsets n := by
  intro h
  exact disproof (source_equiv.mpr h)

#print axioms disproof
#print axioms disproof_source
end A060957.Case130203
