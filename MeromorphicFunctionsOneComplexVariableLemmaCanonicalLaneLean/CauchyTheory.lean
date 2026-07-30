import canonicalLaneMathlib.AdmissibleClass
import MeromorphicFunctionsOneComplexVariableLemma.MeromorphicDomain

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure CauchyTheoryPackage {D : MeromorphicDomain} where
  contourIntegralDefined : Prop
  cauchyIntegralFormula : Prop
  cauchyResidueTheorem : Prop
  argumentPrinciple : Prop

structure CauchyTheoryEvidence {D : MeromorphicDomain} (C : CauchyTheoryPackage D) where
  contourIntegralDefinedClosed : C.contourIntegralDefined
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  cauchyResidueTheoremClosed : C.cauchyResidueTheorem
  argumentPrincipleClosed : C.argumentPrinciple

def CauchyTheoryClosed {D : MeromorphicDomain} (C : CauchyTheoryPackage D) : Prop :=
  C.contourIntegralDefined ∧ C.cauchyIntegralFormula ∧ C.cauchyResidueTheorem ∧ C.argumentPrinciple

theorem cauchy_theory_closed_from_evidence {D : MeromorphicDomain}
    (C : CauchyTheoryPackage D) (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C := by
  exact And.intro E.contourIntegralDefinedClosed
    (And.intro E.cauchyIntegralFormulaClosed
      (And.intro E.cauchyResidueTheoremClosed E.argumentPrincipleClosed))

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse