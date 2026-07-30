import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableLemma

structure MeromorphicSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure

def complexStructureDefault (M : MeromorphicSpace) : ComplexStructure := M.complexStructure

end MeromorphicFunctionsOneComplexVariableLemma
end HautevilleHouse
