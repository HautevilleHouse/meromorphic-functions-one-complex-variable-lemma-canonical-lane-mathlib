import canonicalLaneMathlib.AdmissibleClass
import MeromorphicFunctionsOneComplexVariableLemma.MeromorphicDomain

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure ValueDistributionPackage {D : MeromorphicDomain} where
  picardTheorem : Prop
  nevanlinnaCharacteristicFunction : Prop
  deficiencyRelation : Prop
  secondMainTheorem : Prop

structure ValueDistributionEvidence {D : MeromorphicDomain}
    (V : ValueDistributionPackage D) where
  picardTheoremClosed : V.picardTheorem
  nevanlinnaCharacteristicFunctionClosed : V.nevanlinnaCharacteristicFunction
  deficiencyRelationClosed : V.deficiencyRelation
  secondMainTheoremClosed : V.secondMainTheorem

def ValueDistributionClosed {D : MeromorphicDomain}
    (V : ValueDistributionPackage D) : Prop :=
  V.picardTheorem ∧ V.nevanlinnaCharacteristicFunction ∧
  V.deficiencyRelation ∧ V.secondMainTheorem

theorem value_distribution_closed_from_evidence {D : MeromorphicDomain}
    (V : ValueDistributionPackage D) (E : ValueDistributionEvidence V) :
    ValueDistributionClosed V := by
  exact And.intro E.picardTheoremClosed
    (And.intro E.nevanlinnaCharacteristicFunctionClosed
      (And.intro E.deficiencyRelationClosed E.secondMainTheoremClosed))

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse