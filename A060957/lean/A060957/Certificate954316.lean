import A060957.Scan954316Part0
import A060957.Scan954316Part1
import A060957.Scan954316Part2
import A060957.Scan954316Part3
import A060957.Scan954316Part4
import A060957.Scan954316Part5
import A060957.Scan954316Part6
import A060957.Scan954316Part7
import A060957.Scan954316Part8
import A060957.Scan954316Part9
import A060957.Scan954316Part10
import A060957.Scan954316Part11
import A060957.Scan954316Part12
import A060957.Scan954316Part13
import A060957.Scan954316Part14
import A060957.Scan954316Part15

namespace A060957.Case954316
open Finset
set_option maxHeartbeats 0
set_option maxRecDepth 100000

private lemma block_17_0 : scan 0 17 = true :=
  scan_join 0 16 block_16_0 block_16_1
private lemma block_17_1 : scan 131072 17 = true :=
  scan_join 131072 16 block_16_2 block_16_3
private lemma block_17_2 : scan 262144 17 = true :=
  scan_join 262144 16 block_16_4 block_16_5
private lemma block_17_3 : scan 393216 17 = true :=
  scan_join 393216 16 block_16_6 block_16_7
private lemma block_17_4 : scan 524288 17 = true :=
  scan_join 524288 16 block_16_8 block_16_9
private lemma block_17_5 : scan 655360 17 = true :=
  scan_join 655360 16 block_16_10 block_16_11
private lemma block_17_6 : scan 786432 17 = true :=
  scan_join 786432 16 block_16_12 block_16_13
private lemma block_17_7 : scan 917504 17 = true :=
  scan_join 917504 16 block_16_14 block_16_15
private lemma block_18_0 : scan 0 18 = true :=
  scan_join 0 17 block_17_0 block_17_1
private lemma block_18_1 : scan 262144 18 = true :=
  scan_join 262144 17 block_17_2 block_17_3
private lemma block_18_2 : scan 524288 18 = true :=
  scan_join 524288 17 block_17_4 block_17_5
private lemma block_18_3 : scan 786432 18 = true :=
  scan_join 786432 17 block_17_6 block_17_7
private lemma block_19_0 : scan 0 19 = true :=
  scan_join 0 18 block_18_0 block_18_1
private lemma block_19_1 : scan 524288 19 = true :=
  scan_join 524288 18 block_18_2 block_18_3
private lemma block_20_0 : scan 0 20 = true :=
  scan_join 0 19 block_19_0 block_19_1
lemma scan_all : scan 0 20 = true := block_20_0

lemma zero_certificate : ∀ t : Fin 954317,
    ((t : ℕ) ∣ Z*p^4) → wt (t : ℕ) = 0 → (t : ℕ) ∈ zeroList.toFinset := by
  intro t hd hw
  have ht : (t : ℕ) ≤ N := by unfold N; omega
  have ht' : (t : ℕ) < 0+2^20 := by omega
  have hb := scan_sound 20 0 (t : ℕ) (Nat.zero_le _) ht' scan_all
  simpa [zeroTest, not_lt_of_ge ht, hd, hw] using hb

lemma no_mid_remainder : canProd zeroList (Z*p^4) = false := by decide +kernel
lemma zeroList_pos : ∀ a ∈ zeroList, 0 < a := by
  intro a ha
  simp only [zeroList, List.mem_cons, List.not_mem_nil, or_false] at ha
  rcases ha with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h
  all_goals subst a
  all_goals decide

end A060957.Case954316
