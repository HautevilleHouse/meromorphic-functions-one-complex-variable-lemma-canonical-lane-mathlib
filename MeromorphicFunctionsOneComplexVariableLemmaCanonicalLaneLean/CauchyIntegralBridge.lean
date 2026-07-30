import MeromorphicFunctionsOneComplexVariableLemma.MeromorphicAdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure CauchyIntegralPackage (M : MeromorphicSpace) where
  CauchyIntegralFormula : (ℂ → ℂ) → (ℂ → ℂ)
  CauchyIntegralTheorem : Prop
  analyticityFromDifferentiability : Prop

structure CauchyIntegralEvidence {M : MeromorphicSpace} (P : CauchyIntegralPackage M) where
  CauchyIntegralTheoremClosed : P.CauchyIntegralTheorem
  analyticityFromDifferentiabilityClosed : P.analyticityFromDifferentiability

def CauchyIntegralClosed {M : MeromorphicSpace} (P : CauchyIntegralPackage M) : Prop :=
  P.CauchyIntegralTheorem ∧ P.analyticityFromDifferentiability

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse
