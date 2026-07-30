import canonicalLaneMathlib.AdmissibleClass
import MeromorphicFunctionsOneComplexVariableLemma.MeromorphicDomain

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure MeromorphicFunctionPackage {D : MeromorphicDomain} where
  laurentExpansionAtPole : Prop
  essentialSingularityClassification : Prop
  weierstrassFactorization : Prop
  mittagLefflerDecomposition : Prop
  poleOrderCalculated : Prop

structure MeromorphicFunctionEvidence {D : MeromorphicDomain}
    (M : MeromorphicFunctionPackage D) where
  laurentExpansionAtPoleClosed : M.laurentExpansionAtPole
  essentialSingularityClassificationClosed : M.essentialSingularityClassification
  weierstrassFactorizationClosed : M.weierstrassFactorization
  mittagLefflerDecompositionClosed : M.mittagLefflerDecomposition
  poleOrderCalculatedClosed : M.poleOrderCalculated

def MeromorphicFunctionClosed {D : MeromorphicDomain}
    (M : MeromorphicFunctionPackage D) : Prop :=
  M.laurentExpansionAtPole ∧ M.essentialSingularityClassification ∧
  M.weierstrassFactorization ∧ M.mittagLefflerDecomposition ∧ M.poleOrderCalculated

theorem meromorphic_function_closed_from_evidence {D : MeromorphicDomain}
    (M : MeromorphicFunctionPackage D) (E : MeromorphicFunctionEvidence M) :
    MeromorphicFunctionClosed M := by
  exact And.intro E.laurentExpansionAtPoleClosed
    (And.intro E.essentialSingularityClassificationClosed
      (And.intro E.weierstrassFactorizationClosed
        (And.intro E.mittagLefflerDecompositionClosed E.poleOrderCalculatedClosed)))

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse