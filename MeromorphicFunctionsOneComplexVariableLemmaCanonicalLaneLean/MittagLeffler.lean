import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure MittagLefflerPackage where
  domain : ℂ
  prescribedPolesPrincipalParts : Type u
  meromorphicExistence : Prop
  uniquenessUpToEntire : Prop

structure MittagLefflerEvidence (M : MittagLefflerPackage) where
  meromorphicExistenceClosed : M.meromorphicExistence
  uniquenessUpToEntireClosed : M.uniquenessUpToEntire

def MittagLefflerClosed (M : MittagLefflerPackage) : Prop :=
  M.meromorphicExistence ∧ M.uniquenessUpToEntire

theorem mittag_leffler_closed_from_evidence (M : MittagLefflerPackage) (E : MittagLefflerEvidence M) : MittagLefflerClosed M :=
  And.intro E.meromorphicExistenceClosed E.uniquenessUpToEntireClosed

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse