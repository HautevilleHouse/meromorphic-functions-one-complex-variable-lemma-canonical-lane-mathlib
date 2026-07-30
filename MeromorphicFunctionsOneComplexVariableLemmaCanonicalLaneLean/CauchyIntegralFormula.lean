import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure CauchyIntegralPackage where
  contour : Type u
  integrand : Type v
  derivativeOrder : Nat
  cauchyEstimates : Prop
  holomorphicDerivatives : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  cauchyEstimatesClosed : C.cauchyEstimates
  holomorphicDerivativesClosed : C.holomorphicDerivatives

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.cauchyEstimates ∧ C.holomorphicDerivatives

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage) (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C :=
  And.intro E.cauchyEstimatesClosed E.holomorphicDerivativesClosed

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse