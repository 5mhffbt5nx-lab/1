import Lean
namespace A060957Smoke
set_option maxHeartbeats 0
set_option maxRecDepth 100000
/-- Finite exact test of a reduced list only. It is NOT the full counterexample. -/
def canProd : List Nat → Nat → Bool
  | [], m => decide (m = 1)
  | a :: l, m => canProd l m || (decide (a ∣ m) && canProd l (m/a))

def zero954316 : List Nat := [1,101,2679,2737,3526,4147,5735,10201,270579,276437,356126,418847,579235,700553,753269,878275,895869,954193,954316]
theorem residual954316_3 : canProd zero954316 (378089444731722233953867379643788100 * 101^3) = true := by decide
#print axioms residual954316_3
theorem residual954316_4 : canProd zero954316 (378089444731722233953867379643788100 * 101^4) = false := by decide
#print axioms residual954316_4
theorem residual954316_5 : canProd zero954316 (378089444731722233953867379643788100 * 101^5) = true := by decide
#print axioms residual954316_5

def zero130203 : List Nat := [1,53,481,627,805,1054,1189,2809,25493,33231,35815,42665,55862,59755,62279,62974,63017,64493,78039,82708,130203]
theorem residual130203_3 : canProd zero130203 (92568222856376731590410384100 * 53^3) = true := by decide
#print axioms residual130203_3
theorem residual130203_4 : canProd zero130203 (92568222856376731590410384100 * 53^4) = false := by decide
#print axioms residual130203_4
theorem residual130203_5 : canProd zero130203 (92568222856376731590410384100 * 53^5) = true := by decide
#print axioms residual130203_5
end A060957Smoke
