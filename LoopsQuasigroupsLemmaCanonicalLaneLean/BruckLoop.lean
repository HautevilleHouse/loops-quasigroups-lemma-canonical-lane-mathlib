import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopsQuasigroupsLemmaCanonicalLaneLean.BolLoop

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure BruckLoopPackage (B : BolLoopPackage) where
  automorphicInverseProperty : ∀ a b : B.set,
    B.multiplication (B.multiplication a b) (B.multiplication a b) =
    B.multiplication (B.multiplication a a) (B.multiplication b b)
  extraIdentity : ∀ a b : B.set,
    B.multiplication (B.multiplication a (B.multiplication b a)) b =
    B.multiplication a (B.multiplication b (B.multiplication a b))

structure BruckLoopEvidence {B : BolLoopPackage} (K : BruckLoopPackage B) where
  automorphicInversePropertyClosed : K.automorphicInverseProperty
  extraIdentityClosed : K.extraIdentity

def BruckLoopClosed {B : BolLoopPackage} (K : BruckLoopPackage B) : Prop :=
  K.automorphicInverseProperty ∧ K.extraIdentity

theorem bruck_loop_closed_from_evidence {B : BolLoopPackage} (K : BruckLoopPackage B) (E : BruckLoopEvidence K) : BruckLoopClosed K := by
  exact And.intro E.automorphicInversePropertyClosed E.extraIdentityClosed

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse