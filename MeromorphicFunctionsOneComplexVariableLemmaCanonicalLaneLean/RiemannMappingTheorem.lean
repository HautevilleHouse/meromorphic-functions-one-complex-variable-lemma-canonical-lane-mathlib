import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure RiemannMappingPackage where
  simplyConnectedDomain : Type u
  conformalMap : Type v
  biholomorphismToUnitDisk : Prop
  boundaryCorrespondence : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  biholomorphismToUnitDiskClosed : R.biholomorphismToUnitDisk
  boundaryCorrespondenceClosed : R.boundaryCorrespondence

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.biholomorphismToUnitDisk ∧ R.boundaryCorrespondence

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) : RiemannMappingClosed R :=
  And.intro E.biholomorphismToUnitDiskClosed E.boundaryCorrespondenceClosed

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse