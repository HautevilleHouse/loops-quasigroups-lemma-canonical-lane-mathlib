import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopsQuasigroupsLemmaCanonicalLaneLean.LatinSquarePackage

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure QuasigroupStructure where
  set : Type u
  multiplication : set → set → set
  divisionLeft : set → set → set
  divisionRight : set → set → set
  leftDivisionProperty : ∀ a b : set, multiplication a (divisionLeft a b) = b
  rightDivisionProperty : ∀ a b : set, multiplication (divisionRight b a) a = b
  latinSquareFromQuasigroup : LatinSquarePackage
  latinSquareFromQuasigroupSet : latinSquareFromQuasigroup.set = set
  latinSquareFromQuasigroupOp : ∀ a b : set,
    latinSquareFromQuasigroup.binaryOp a b = multiplication a b

structure QuasigroupEvidence (Q : QuasigroupStructure) where
  leftDivisionPropertyClosed : Q.leftDivisionProperty
  rightDivisionPropertyClosed : Q.rightDivisionProperty
  latinSquareFromQuasigroupConsistent :
    Q.latinSquareFromQuasigroup.set = Q.set ∧
    (∀ a b : Q.set, Q.latinSquareFromQuasigroup.binaryOp a b = Q.multiplication a b)

def QuasigroupClosed (Q : QuasigroupStructure) : Prop :=
  Q.leftDivisionProperty ∧ Q.rightDivisionProperty ∧
  (Q.latinSquareFromQuasigroup.set = Q.set ∧
   (∀ a b : Q.set, Q.latinSquareFromQuasigroup.binaryOp a b = Q.multiplication a b))

theorem quasigroup_closed_from_evidence (Q : QuasigroupStructure) (E : QuasigroupEvidence Q) : QuasigroupClosed Q := by
  exact And.intro E.leftDivisionPropertyClosed (And.intro E.rightDivisionPropertyClosed E.latinSquareFromQuasigroupConsistent)

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse