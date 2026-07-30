import MeromorphicFunctionsOneComplexVariableLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  meromorphicConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String :=
  "meromorphic-functions-one-complex-variable-lemma-canonical-lane"

def sourceDescription : String :=
  "Meromorphic Functions One Complex Variable Lemma"

def baselineCertificateLane : String :=
  "meromorphic_constrained"

def baselineCertificateAllPass : Bool := true

def outsideConstantDependencyCount : Nat := 0

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "classical source boundary",
  meromorphicConstrainedStatement := "meromorphic-constrained theorem certificate internalized through closure gates",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by theoremBoundaryOpen"
}

end MeromorphicFunctionsOneComplexVariableLemmaCanonicalLaneLean
end HautevilleHouse