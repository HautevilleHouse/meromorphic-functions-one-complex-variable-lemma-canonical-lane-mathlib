import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MeromorphicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MeromorphicFunctionsOneComplexVariableLemmaCanonicalLaneLean
end HautevilleHouse