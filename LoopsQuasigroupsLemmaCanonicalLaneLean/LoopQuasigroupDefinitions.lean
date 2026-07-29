import LoopsQuasigroupsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure Loop where
  carrier : Type u
  mul : carrier → carrier → carrier
  one : carrier
  leftInv : carrier → carrier
  rightInv : carrier → carrier
  leftInvMul : ∀ x : carrier, (leftInv x) * x = one
  mulRightInv : ∀ x : carrier, x * (rightInv x) = one
  mulAssoc : ∀ x y z : carrier, (x * y) * z = x * (y * z)

structure Quasigroup where
  carrier : Type u
  mul : carrier → carrier → carrier
  div : carrier → carrier → carrier
  leftDiv : carrier → carrier → carrier
  mulDivCancel : ∀ a b : carrier, a * (div a b) = b
  divMulCancel : ∀ a b : carrier, (leftDiv a b) * a = b

structure LoopQuasigroup where
  carrier : Type u
  mul : carrier → carrier → carrier
  one : carrier
  div : carrier → carrier → carrier
  leftDiv : carrier → carrier → carrier
  leftInv : carrier → carrier
  rightInv : carrier → carrier
  isLoop : Loop (LoopQuasigroup.mk carrier mul one leftInv rightInv ?_ ?_ ?_)
  isQuasigroup : Quasigroup (LoopQuasigroup.mk carrier mul div leftDiv ?_ ?_)

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse