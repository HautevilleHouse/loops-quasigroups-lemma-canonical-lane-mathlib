import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure LoopsQuasigroupSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LoopsQuasigroupAdmittedObject where
  space : LoopsQuasigroupSpace
  isLoop : Prop
  satisfiesQuasigroupIdentities : Prop
  conclusion : satisfiesQuasigroupIdentities

def LoopsQuasigroupWitnessClosed (O : LoopsQuasigroupAdmittedObject) : Prop :=
  O.satisfiesQuasigroupIdentities

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse
