import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure WeierstrassFactorizationPackage where
  entireFunctionSpace : Type u
  zeroSet : set ℂ
  elementaryFactors : Type v
  productConvergence : Prop
  factorizationApplied : Prop

structure WeierstrassFactorizationEvidence (W : WeierstrassFactorizationPackage) where
  productConvergenceClosed : W.productConvergence
  factorizationAppliedClosed : W.factorizationApplied

def WeierstrassFactorizationClosed (W : WeierstrassFactorizationPackage) : Prop :=
  W.productConvergence ∧ W.factorizationApplied

theorem weierstrass_factorization_closed_from_evidence (W : WeierstrassFactorizationPackage) (E : WeierstrassFactorizationEvidence W) : WeierstrassFactorizationClosed W :=
  And.intro E.productConvergenceClosed E.factorizationAppliedClosed

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse