import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

def ConstrainedMeromorphicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_meromorphic_endgame (A : AdmissibleClass) :
    ConstrainedMeromorphicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse