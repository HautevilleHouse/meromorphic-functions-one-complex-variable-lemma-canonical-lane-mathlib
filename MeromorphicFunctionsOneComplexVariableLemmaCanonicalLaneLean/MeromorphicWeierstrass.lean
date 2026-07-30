import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure MeromorphicWeierstrassPackage where
  targetFunction : ℂ → ℂ
  zerosAndPoles : Set ℂ
  productRepresentation : ℂ → ℂ
  convergence : Prop
  representationMatches : Prop

structure MeromorphicWeierstrassEvidence (M : MeromorphicWeierstrassPackage) where
  convergenceClosed : M.convergence
  representationClosed : M.representationMatches

def MeromorphicWeierstrassClosed (M : MeromorphicWeierstrassPackage) : Prop :=
  M.convergence ∧ M.representationMatches

theorem meromorphic_weierstrass_closed_from_evidence (M : MeromorphicWeierstrassPackage) (E : MeromorphicWeierstrassEvidence M) : MeromorphicWeierstrassClosed M :=
  And.intro E.convergenceClosed E.representationClosed

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse