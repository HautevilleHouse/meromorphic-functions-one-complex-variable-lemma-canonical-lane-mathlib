import MeromorphicFunctionsOneComplexVariableLemma.MeromorphicFunctionStructure

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure RiemannMappingPackage (M : MeromorphicSpace) where
  simplyConnectedDomain : Prop
  biholomorphicMap : ℂ → ℂ
  mapProperties : Prop

structure RiemannMappingEvidence {M : MeromorphicSpace} (P : RiemannMappingPackage M) where
  simplyConnectedDomainClosed : P.simplyConnectedDomain
  mapPropertiesClosed : P.mapProperties

def RiemannMappingClosed {M : MeromorphicSpace} (P : RiemannMappingPackage M) : Prop :=
  P.simplyConnectedDomain ∧ P.mapProperties

theorem riemann_mapping_closed {M : MeromorphicSpace} (P : RiemannMappingPackage M) (E : RiemannMappingEvidence P) : RiemannMappingClosed P := by
  exact And.intro E.simplyConnectedDomainClosed E.mapPropertiesClosed

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse
