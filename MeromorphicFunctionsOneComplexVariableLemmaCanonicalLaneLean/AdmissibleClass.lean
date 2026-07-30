import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : MeromorphicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MeromorphicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MeromorphicFunctionsOneComplexVariableLemmaCanonicalLaneLean
end HautevilleHouse