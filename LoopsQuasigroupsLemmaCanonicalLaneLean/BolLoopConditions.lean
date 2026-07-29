import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure BolLoopCondition where
  leftBol : Prop
  rightBol : Prop
  leftBolTerm : leftBol
  rightBolTerm : rightBol

structure BolLoopEvidence (B : BolLoopCondition) where
  leftBolClosed : B.leftBol
  rightBolClosed : B.rightBol

def BolLoopClosed (B : BolLoopCondition) : Prop :=
  B.leftBol ∧ B.rightBol

theorem bol_loop_closed_from_evidence (B : BolLoopCondition)
    (E : BolLoopEvidence B) : BolLoopClosed B := by
  exact And.intro E.leftBolClosed E.rightBolClosed

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse
