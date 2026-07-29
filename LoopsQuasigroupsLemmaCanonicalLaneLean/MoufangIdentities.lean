import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure MoufangIdentity where
  leftMoufang : ∀ a b c : A.object.carrier, A.object.binaryOp (A.object.binaryOp a (A.object.binaryOp b c)) a = A.object.binaryOp (A.object.binaryOp a b) (A.object.binaryOp c a)
  rightMoufang : ∀ a b c : A.object.carrier, A.object.binaryOp a (A.object.binaryOp b (A.object.binaryOp a c)) = A.object.binaryOp (A.object.binaryOp a b) (A.object.binaryOp a c)
  middleMoufang : ∀ a b c : A.object.carrier, A.object.binaryOp (A.object.binaryOp a b) (A.object.binaryOp c a) = A.object.binaryOp (A.object.binaryOp (A.object.binaryOp a b) c) a

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse