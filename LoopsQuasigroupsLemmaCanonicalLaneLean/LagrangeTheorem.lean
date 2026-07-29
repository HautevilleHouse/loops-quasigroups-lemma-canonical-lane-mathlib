import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure LagrangePackage where
  subloop : Type
  subloopClosed : ∀ a b : subloop, subloop.binaryOp a b ∈ subloop
  cosetDecomposition : ∀ a : A.object.carrier, ∀ b : subloop, A.object.binaryOp a b ∈ subloop
  orderDivides : A.object.carrier.card % subloop.subloop.card = 0

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse