import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemmaCanonicalLaneLean

structure MeromorphicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MeromorphicAdmittedObject where
  space : MeromorphicSpace
  meromorphicFunction : Prop
  domainOpenConnected : Prop
  isolatedZerosPoles : Prop
  conclusion : meromorphicFunction ∧ isolatedZerosPoles

structure MeromorphicEndgameState where
  object : MeromorphicAdmittedObject

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  O.conclusion

end MeromorphicFunctionsOneComplexVariableLemmaCanonicalLaneLean
end HautevilleHouse