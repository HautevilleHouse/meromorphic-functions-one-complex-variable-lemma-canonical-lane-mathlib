import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure ArgumentPrinciplePackage where
  functionF : ℂ → ℂ
  contour : ℂ → ℂ
  zerosCount : ℕ
  polesCount : ℕ
  windingNumber : ℤ
  result : Prop

structure ArgumentPrincipleEvidence (A : ArgumentPrinciplePackage) where
  zerosPolesClosed : A.result
  windingNumberClosed : A.windingNumber = (A.zerosCount : ℤ) - (A.polesCount : ℤ)

def ArgumentPrincipleClosed (A : ArgumentPrinciplePackage) : Prop :=
  A.result ∧ A.windingNumber = (A.zerosCount : ℤ) - (A.polesCount : ℤ)

theorem argument_principle_closed_from_evidence (A : ArgumentPrinciplePackage) (E : ArgumentPrincipleEvidence A) : ArgumentPrincipleClosed A :=
  And.intro E.zerosPolesClosed E.windingNumberClosed

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse