import canonicalLaneMathlib.AdmissibleClass
import LoopsQuasigroupsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure QuasigroupIdentity where
  leftDivision : Prop
  rightDivision : Prop
  inverseProperty : Prop
  latinSquare : Prop

structure QuasigroupIdentityEvidence (Q : QuasigroupIdentity) where
  leftDivisionClosed : Q.leftDivision
  rightDivisionClosed : Q.rightDivision
  inversePropertyClosed : Q.inverseProperty
  latinSquareClosed : Q.latinSquare

def QuasigroupIdentityClosed (Q : QuasigroupIdentity) : Prop :=
  Q.leftDivision ∧ Q.rightDivision ∧ Q.inverseProperty ∧ Q.latinSquare

theorem quasigroup_identity_closed_from_evidence (Q : QuasigroupIdentity)
    (E : QuasigroupIdentityEvidence Q) : QuasigroupIdentityClosed Q := by
  exact And.intro E.leftDivisionClosed
    (And.intro E.rightDivisionClosed
      (And.intro E.inversePropertyClosed E.latinSquareClosed))

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse