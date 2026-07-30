import canonicalLaneMathlib.AdmissibleClass
import MeromorphicFunctionsOneComplexVariableLemma.MeromorphicDomain

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure RiemannMappingAndContinuationPackage {D : MeromorphicDomain} where
  riemannMappingTheorem : Prop
  analyticContinuationUnique : Prop
  monodromyTheorem : Prop
  sheafStructureDefined : Prop

structure RiemannMappingAndContinuationEvidence {D : MeromorphicDomain}
    (R : RiemannMappingAndContinuationPackage D) where
  riemannMappingTheoremClosed : R.riemannMappingTheorem
  analyticContinuationUniqueClosed : R.analyticContinuationUnique
  monodromyTheoremClosed : R.monodromyTheorem
  sheafStructureDefinedClosed : R.sheafStructureDefined

def RiemannMappingAndContinuationClosed {D : MeromorphicDomain}
    (R : RiemannMappingAndContinuationPackage D) : Prop :=
  R.riemannMappingTheorem ∧ R.analyticContinuationUnique ∧
  R.monodromyTheorem ∧ R.sheafStructureDefined

theorem riemann_mapping_and_continuation_closed_from_evidence {D : MeromorphicDomain}
    (R : RiemannMappingAndContinuationPackage D)
    (E : RiemannMappingAndContinuationEvidence R) :
    RiemannMappingAndContinuationClosed R := by
  exact And.intro E.riemannMappingTheoremClosed
    (And.intro E.analyticContinuationUniqueClosed
      (And.intro E.monodromyTheoremClosed E.sheafStructureDefinedClosed))

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse