import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure MeromorphicDomain where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : @ComplexStructure carrier topology
  domainType : DomainType
  deriving Type

inductive DomainType where
  | puncturedPlane
  | disk
  | annulus
  | riemannSphere
  deriving Type

structure MeromorphicAdmittedObject where
  domain : MeromorphicDomain
  function : carrier → ℂ
  meromorphicInDomain : Prop
  polesPossiblyLocated : Prop
  conclusion : meromorphicInDomain

structure MeromorphicEndgameState where
  object : MeromorphicAdmittedObject

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  O.meromorphicInDomain

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse