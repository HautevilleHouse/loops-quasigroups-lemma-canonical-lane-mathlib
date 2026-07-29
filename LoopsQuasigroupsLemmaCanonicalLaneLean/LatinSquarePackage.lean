import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure LatinSquarePackage where
  set : Type u
  binaryOp : set → set → set
  multiplicationTable : set → set → set → Prop
  latinPropertyRow : ∀ a b : set, ∃! c : set, binaryOp a c = b
  latinPropertyCol : ∀ b c : set, ∃! a : set, binaryOp a c = b
  multiplicationTableConsistent : ∀ a b c : set, multiplicationTable a b c ↔ binaryOp a b = c

structure LatinSquareEvidence (L : LatinSquarePackage) where
  latinPropertyRowClosed : L.latinPropertyRow
  latinPropertyColClosed : L.latinPropertyCol
  multiplicationTableConsistentClosed : L.multiplicationTableConsistent

def LatinSquareClosed (L : LatinSquarePackage) : Prop :=
  L.latinPropertyRow ∧ L.latinPropertyCol ∧ L.multiplicationTableConsistent

theorem latin_square_closed_from_evidence (L : LatinSquarePackage) (E : LatinSquareEvidence L) : LatinSquareClosed L := by
  exact And.intro E.latinPropertyRowClosed (And.intro E.latinPropertyColClosed E.multiplicationTableConsistentClosed)

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse