import MeromorphicFunctionsOneComplexVariableLemma.RiemannMappingLemma

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure AnalyticContinuationPackage (M : MeromorphicSpace) where
  continuationFunction : ℂ → ℂ
  pathIndependent : Prop
  monodromyTheorem : Prop

structure AnalyticContinuationEvidence {M : MeromorphicSpace} (P : AnalyticContinuationPackage M) where
  pathIndependentClosed : P.pathIndependent
  monodromyTheoremClosed : P.monodromyTheorem

def AnalyticContinuationClosed {M : MeromorphicSpace} (P : AnalyticContinuationPackage M) : Prop :=
  P.pathIndependent ∧ P.monodromyTheorem

theorem analytic_continuation_closed {M : MeromorphicSpace} (P : AnalyticContinuationPackage M) (E : AnalyticContinuationEvidence P) : AnalyticContinuationClosed P := by
  exact And.intro E.pathIndependentClosed E.monodromyTheoremClosed

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse
