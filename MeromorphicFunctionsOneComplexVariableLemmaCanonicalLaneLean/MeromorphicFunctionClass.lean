import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure MeromorphicAdmittedObject where
  domain : Type u
  topologyDomain : TopologicalSpace domain
  complexStructure : TopologicalSpace Complex
  meromorphicFunction : domain -> Complex
  isolatedSingularities : Set domain
  hasWeierstrassProduct : Prop
  conclusion : hasWeierstrassProduct

structure AdmissibleClass where
  object : MeromorphicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MeromorphicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse