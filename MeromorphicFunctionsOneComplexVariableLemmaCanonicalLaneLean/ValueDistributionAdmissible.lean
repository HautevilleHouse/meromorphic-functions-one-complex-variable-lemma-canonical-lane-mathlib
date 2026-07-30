import MeromorphicFunctionsOneComplexVariableLemma.AnalyticContinuationStructure

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure ValueDistributionPackage (M : MeromorphicSpace) where
  nevanlinnaCharacteristic : ℂ → ℝ
  deficiencyRelation : Prop
  secondMainTheorem : Prop

structure ValueDistributionEvidence {M : MeromorphicSpace} (P : ValueDistributionPackage M) where
  deficiencyRelationClosed : P.deficiencyRelation
  secondMainTheoremClosed : P.secondMainTheorem

def ValueDistributionClosed {M : MeromorphicSpace} (P : ValueDistributionPackage M) : Prop :=
  P.deficiencyRelation ∧ P.secondMainTheorem

theorem value_distribution_closed {M : MeromorphicSpace} (P : ValueDistributionPackage M) (E : ValueDistributionEvidence P) : ValueDistributionClosed P := by
  exact And.intro E.deficiencyRelationClosed E.secondMainTheoremClosed

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse
