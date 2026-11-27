import A060957.Data954316

namespace A060957.Case954316
open Finset
set_option maxHeartbeats 0
set_option maxRecDepth 100000

def zeroTest (t : ℕ) : Bool :=
  if N < t then true
  else if t ∣ Z*p^4 then
    if wt t = 0 then decide (t ∈ zeroList.toFinset) else true
  else true

def scan (lo : ℕ) : ℕ → Bool
  | 0 => zeroTest lo
  | k+1 => scan lo k && scan (lo + 2^k) k

lemma scan_sound (k lo t : ℕ) (hlo : lo ≤ t) (hhi : t < lo+2^k)
    (h : scan lo k = true) : zeroTest t = true := by
  induction k generalizing lo with
  | zero =>
    have he : t = lo := by simp at hhi; omega
    subst t
    exact h
  | succ k ih =>
    simp only [scan, Bool.and_eq_true] at h
    by_cases ht : t < lo+2^k
    · exact ih lo hlo ht h.1
    · apply ih (lo+2^k) (by omega) _ h.2
      rw [pow_succ] at hhi
      omega

lemma scan_join (lo k : ℕ) (h1 : scan lo k = true)
    (h2 : scan (lo+2^k) k = true) : scan lo (k+1) = true := by
  simp [scan,h1,h2]


end A060957.Case954316
