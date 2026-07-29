import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure MoufangIdentity where
  leftMoufang : Prop
  rightMoufang : Prop
  middleMoufang : Prop
  leftMoufangTerm : leftMoufang
  rightMoufangTerm : rightMoufang
  middleMoufangTerm : middleMoufang

structure MoufangEvidence (M : MoufangIdentity) where
  leftMoufangClosed : M.leftMoufang
  rightMoufangClosed : M.rightMoufang
  middleMoufangClosed : M.middleMoufang

def MoufangClosed (M : MoufangIdentity) : Prop :=
  M.leftMoufang ∧ M.rightMoufang ∧ M.middleMoufang

theorem moufang_closed_from_evidence (M : MoufangIdentity)
    (E : MoufangEvidence M) : MoufangClosed M := by
  exact And.intro E.leftMoufangClosed
    (And.intro E.rightMoufangClosed E.middleMoufangClosed)

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse
