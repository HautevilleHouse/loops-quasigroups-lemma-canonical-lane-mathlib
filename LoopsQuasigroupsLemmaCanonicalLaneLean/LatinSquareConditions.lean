import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure LatinSquareCondition where
  rowCondition : Prop
  columnCondition : Prop
  symbolCondition : Prop
  rowConditionTerm : rowCondition
  columnConditionTerm : columnCondition
  symbolConditionTerm : symbolCondition

structure LatinSquareEvidence (L : LatinSquareCondition) where
  rowConditionClosed : L.rowCondition
  columnConditionClosed : L.columnCondition
  symbolConditionClosed : L.symbolCondition

def LatinSquareClosed (L : LatinSquareCondition) : Prop :=
  L.rowCondition ∧ L.columnCondition ∧ L.symbolCondition

theorem latin_square_closed_from_evidence (L : LatinSquareCondition)
    (E : LatinSquareEvidence L) : LatinSquareClosed L := by
  exact And.intro E.rowConditionClosed
    (And.intro E.columnConditionClosed E.symbolConditionClosed)

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse
