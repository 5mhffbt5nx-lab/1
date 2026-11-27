import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.ByContra

/- Abstract integer-set component of the graph construction. Independently checked with Lean 4.36.0.
   No number-theoretic realization is assumed or asserted here. -/
namespace GapStructure

def Smooth (F : ℕ → Prop) (M h : ℕ) : Prop :=
  ∀ x : ℕ, (∃ a : ℕ, F a ∧ a ≤ x ∧ x ≤ a+h) ↔ x ≤ M+h

def Step (F : ℕ → Prop) (b x : ℕ) : Prop :=
  (∃ a : ℕ, F a ∧ a ≤ x ∧ x ≤ a+b) ∨
  ∃ a : ℕ, F a ∧ x = 2*b+a

def Gap (F : ℕ → Prop) (a g : ℕ) : Prop :=
  0 < g ∧ F a ∧ F (a+g+1) ∧
  ∀ x : ℕ, a < x → x < a+g+1 → ¬ F x

lemma smooth_bound {F : ℕ → Prop} {M h a : ℕ}
    (hs : Smooth F M h) (ha : F a) : a ≤ M := by
  have hh := (hs (a+h)).mp ⟨a,ha,by omega,le_rfl⟩
  omega

lemma smooth_initial (M h : ℕ) : Smooth (fun x => x ≤ M) M h := by
  intro x
  constructor
  · rintro ⟨a,ha,hax,hxa⟩
    omega
  · intro hx
    by_cases hxm : x ≤ M
    · exact ⟨x,hxm,le_rfl,by omega⟩
    · exact ⟨M,le_rfl,by omega,by omega⟩

lemma smooth_large {F : ℕ → Prop} {M h : ℕ}
    (h0 : F 0) (hM : F M) (hb : ∀ a, F a → a ≤ M) (hh : M ≤ h) :
    Smooth F M h := by
  intro x
  constructor
  · rintro ⟨a,ha,hax,hxa⟩
    have := hb a ha
    omega
  · intro hx
    by_cases hxM : x ≤ h
    · exact ⟨0,h0,by omega,by omega⟩
    · exact ⟨M,hM,by omega,by omega⟩

lemma step_normal {F : ℕ → Prop} {M b : ℕ}
    (hs : Smooth F M b) (x : ℕ) :
    Step F b x ↔ x ≤ M+b ∨ ∃ a, F a ∧ x = 2*b+a := by
  unfold Step
  rw [hs x]

lemma step_zero {F : ℕ → Prop} (h0 : F 0) (b : ℕ) : Step F b 0 := by
  exact Or.inl ⟨0,h0,le_rfl,by omega⟩

lemma step_top {F : ℕ → Prop} {M : ℕ} (hM : F M) (b : ℕ) :
    Step F b (M+2*b) := by
  exact Or.inr ⟨M,hM,by omega⟩

/-- If the smoothing radius covers the current module's half-width, it
    also smooths the enlarged set. This handles modules in increasing order. -/
lemma smooth_step {F : ℕ → Prop} {M b h : ℕ}
    (hs : Smooth F M h) (hM : F M) (hbh : b ≤ h) :
    Smooth (Step F b) (M+2*b) h := by
  intro x
  constructor
  · rintro ⟨z,hz,hzx,hxz⟩
    rcases hz with ⟨a,ha,haz,hza⟩ | ⟨a,ha,he⟩
    · have := smooth_bound hs ha
      omega
    · have := smooth_bound hs ha
      omega
  · intro hx
    by_cases h1 : x ≤ M+h
    · obtain ⟨a,ha,hax,hxa⟩ := (hs x).mpr h1
      exact ⟨a,Or.inl ⟨a,ha,le_rfl,by omega⟩,hax,hxa⟩
    · by_cases h2 : x ≤ M+h+b
      · exact ⟨M+b,Or.inl ⟨M,hM,by omega,le_rfl⟩,by omega,by omega⟩
      · let y := x-2*b
        have hy : y ≤ M+h := by dsimp [y]; omega
        obtain ⟨a,ha,hay,hya⟩ := (hs y).mpr hy
        have hxy : x = 2*b+y := by dsimp [y]; omega
        exact ⟨2*b+a,Or.inr ⟨a,ha,rfl⟩,by omega,by omega⟩

/-- Exact gap endpoints for a separated step b = M+g+1.
    The old gaps shift right; the new gap is the leftmost gap. -/
theorem gap_step_exact {F : ℕ → Prop} {M b g a k : ℕ}
    (h0 : F 0) (hM : F M) (hb : ∀ x, F x → x ≤ M)
    (hg : 0 < g) (hbg : b = M+g+1) :
    Gap (Step F b) a k ↔
      (a = M+b ∧ k = g) ∨ ∃ c, a = 2*b+c ∧ Gap F c k := by
  have hs : Smooth F M b := smooth_large h0 hM hb (by omega)
  have hn := step_normal hs
  constructor
  · rintro ⟨hk,ha,he,hempty⟩
    have ha' := (hn a).mp ha
    have he' := (hn (a+k+1)).mp he
    rcases ha' with hal | ⟨c,hc,hac⟩
    · have hla : a = M+b := by
        by_contra hne
        have hab : a+1 ≤ M+b := by omega
        exact hempty (a+1) (by omega) (by omega) ((hn (a+1)).mpr (Or.inl hab))
      rcases he' with hel | ⟨d,hd,hed⟩
      · omega
      · have hright : a+k+1 = 2*b := by
          by_contra hne
          have hmid : Step F b (2*b) := (hn (2*b)).mpr (Or.inr ⟨0,h0,by omega⟩)
          exact hempty (2*b) (by omega) (by omega) hmid
        exact Or.inl ⟨hla,by omega⟩
    · rcases he' with hel | ⟨d,hd,hed⟩
      · omega
      · right
        refine ⟨c,hac,hk,hc,?_,?_⟩
        · have hd' : d = c+k+1 := by omega
          simpa only [hd'] using hd
        · intro x hcx hxe hx
          have hmem := (hn (2*b+x)).mpr (Or.inr ⟨x,hx,rfl⟩)
          exact hempty (2*b+x) (by omega) (by omega) hmem
  · rintro (⟨ha,hk⟩ | ⟨c,ha,hk,hc,he,hempty⟩)
    · subst a
      subst k
      refine ⟨hg,(hn _).mpr (Or.inl le_rfl),?_,?_⟩
      · exact (hn _).mpr (Or.inr ⟨0,h0,by omega⟩)
      · intro x hxl hxr hx
        rcases (hn x).mp hx with hleft | ⟨d,hd,heq⟩ <;> omega
    · refine ⟨hk,?_,?_,?_⟩
      · exact (hn _).mpr (Or.inr ⟨c,hc,ha⟩)
      · exact (hn _).mpr (Or.inr ⟨c+k+1,he,by omega⟩)
      · intro x hxl hxr hx
        rcases (hn x).mp hx with hleft | ⟨d,hd,heq⟩
        · omega
        · exact hempty d (by omega) (by omega) hd

#print axioms gap_step_exact
#print axioms smooth_step
end GapStructure
