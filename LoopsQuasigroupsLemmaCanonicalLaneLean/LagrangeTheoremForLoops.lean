import canonicalLaneMathlib.AdmissibleClass
import LoopsQuasigroupsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure LagrangeTheoremForLoops where
  subloopLagrange : Prop
  cosetDecomposition : Prop
  indexProperty : Prop

structure LagrangeTheoremForLoopsEvidence (L : LagrangeTheoremForLoops) where
  subloopLagrangeClosed : L.subloopLagrange
  cosetDecompositionClosed : L.cosetDecomposition
  indexPropertyClosed : L.indexProperty

def LagrangeTheoremForLoopsClosed (L : LagrangeTheoremForLoops) : Prop :=
  L.subloopLagrange ∧ L.cosetDecomposition ∧ L.indexProperty

theorem lagrange_theorem_for_loops_closed_from_evidence
    (L : LagrangeTheoremForLoops) (E : LagrangeTheoremForLoopsEvidence L) :
    LagrangeTheoremForLoopsClosed L := by
  exact And.intro E.subloopLagrangeClosed
    (And.intro E.cosetDecompositionClosed E.indexPropertyClosed)

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse