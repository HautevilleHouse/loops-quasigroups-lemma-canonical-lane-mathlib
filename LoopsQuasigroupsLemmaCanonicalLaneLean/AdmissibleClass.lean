import Mathlib.Data.Set.Basic

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure LoopsQuasigroupsAdmittedObject where
  carrier : Type
  binaryOp : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier
  leftIdentity : ∀ a : carrier, binaryOp identity a = a
  rightIdentity : ∀ a : carrier, binaryOp a identity = a
  leftInverse : ∀ a : carrier, binaryOp (inverse a) a = identity
  rightInverse : ∀ a : carrier, binaryOp a (inverse a) = identity
  associative : ∀ a b c : carrier, binaryOp (binaryOp a b) c = binaryOp a (binaryOp b c)

structure AdmissibleClass where
  object : LoopsQuasigroupsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse