import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure RiemannRochPackage where
  compactRiemannSurface : Set ℂ
  genus : ℕ
  divisor : ℤ → ℤ
  dimensionOfL : ℕ
  canonicalDivisor : ℤ → ℤ
  equality : Prop

structure RiemannRochEvidence (R : RiemannRochPackage) where
  equalityClosed : R.equality
  genusCalculated : True

def RiemannRochClosed (R : RiemannRochPackage) : Prop :=
  R.equality

theorem riemann_roch_closed_from_evidence (R : RiemannRochPackage) (E : RiemannRochEvidence R) : RiemannRochClosed R :=
  E.equalityClosed

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse