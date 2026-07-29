import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopsQuasigroupsLemmaCanonicalLaneLean.QuasigroupStructure

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure MoufangLoopPackage (Q : QuasigroupStructure) where
  identityElement : Q.set
  identityLeft : ∀ a : Q.set, Q.multiplication identityElement a = a
  identityRight : ∀ a : Q.set, Q.multiplication a identityElement = a
  isotopeOfMoufang : Prop
  moufangIdentities : ∀ a b c : Q.set,
    Q.multiplication (Q.multiplication a (Q.multiplication b c)) a =
    Q.multiplication (Q.multiplication a b) (Q.multiplication c a)

structure MoufangLoopEvidence {Q : QuasigroupStructure} (M : MoufangLoopPackage Q) where
  identityLeftClosed : M.identityLeft
  identityRightClosed : M.identityRight
  moufangIdentitiesClosed : M.moufangIdentities

def MoufangLoopClosed {Q : QuasigroupStructure} (M : MoufangLoopPackage Q) : Prop :=
  M.identityLeft ∧ M.identityRight ∧ M.moufangIdentities

theorem moufang_loop_closed_from_evidence {Q : QuasigroupStructure} (M : MoufangLoopPackage Q) (E : MoufangLoopEvidence M) : MoufangLoopClosed M := by
  exact And.intro E.identityLeftClosed (And.intro E.identityRightClosed E.moufangIdentitiesClosed)

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse