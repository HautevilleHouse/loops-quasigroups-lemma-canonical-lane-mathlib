import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopsQuasigroupsLemmaCanonicalLaneLean.QuasigroupStructure

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure BolLoopPackage where
  set : Type u
  multiplication : set → set → set
  identityElement : set
  identityLeft : ∀ a : set, multiplication identityElement a = a
  identityRight : ∀ a : set, multiplication a identityElement = a
  leftBolIdentity : ∀ a b c : set,
    multiplication (multiplication a (multiplication b c)) b =
    multiplication (multiplication a b) (multiplication c b)

structure BolLoopEvidence (B : BolLoopPackage) where
  identityLeftClosed : B.identityLeft
  identityRightClosed : B.identityRight
  leftBolIdentityClosed : B.leftBolIdentity

def BolLoopClosed (B : BolLoopPackage) : Prop :=
  B.identityLeft ∧ B.identityRight ∧ B.leftBolIdentity

theorem bol_loop_closed_from_evidence (B : BolLoopPackage) (E : BolLoopEvidence B) : BolLoopClosed B := by
  exact And.intro E.identityLeftClosed (And.intro E.identityRightClosed E.leftBolIdentityClosed)

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse