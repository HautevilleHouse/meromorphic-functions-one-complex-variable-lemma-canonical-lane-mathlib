import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure ResidueTheoremPackage where
  contour : Type u
  meromorphicFunction : Type v
  residues : Type w
  sumOfResidues : Prop
  integralPrincipalValue : Prop

structure ResidueTheoremEvidence (R : ResidueTheoremPackage) where
  sumOfResiduesClosed : R.sumOfResidues
  integralPrincipalValueClosed : R.integralPrincipalValue

def ResidueTheoremClosed (R : ResidueTheoremPackage) : Prop :=
  R.sumOfResidues ∧ R.integralPrincipalValue

theorem residue_theorem_closed_from_evidence (R : ResidueTheoremPackage) (E : ResidueTheoremEvidence R) : ResidueTheoremClosed R :=
  And.intro E.sumOfResiduesClosed E.integralPrincipalValueClosed

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse