import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  O.hasWeierstrassProduct

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MeromorphicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse