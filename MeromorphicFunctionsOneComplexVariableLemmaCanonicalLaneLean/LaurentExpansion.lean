import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure LaurentExpansionPackage where
  center : ℂ
  principalPart : ℤ → ℂ
  analyticPart : ℤ → ℂ
  regionOfConvergence : Set ℂ
  isolatedSingularity : Prop

structure LaurentExpansionEvidence (L : LaurentExpansionPackage) where
  uniquenessClosed : ∀ (n : ℤ), L.principalPart n = 0 → L.analyticPart n = 0
  convergenceClosed : L.regionOfConvergence ≠ ∅

def LaurentExpansionClosed (L : LaurentExpansionPackage) : Prop :=
  L.isolatedSingularity ∧ L.regionOfConvergence ≠ ∅

theorem laurent_expansion_closed_from_evidence (L : LaurentExpansionPackage) (E : LaurentExpansionEvidence L) : LaurentExpansionClosed L :=
  And.intro L.isolatedSingularity E.convergenceClosed

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse