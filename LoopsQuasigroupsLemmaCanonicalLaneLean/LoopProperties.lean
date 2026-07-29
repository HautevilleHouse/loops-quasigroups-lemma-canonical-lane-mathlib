import canonicalLaneMathlib.AdmissibleClass
import LoopsQuasigroupsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure LoopProperties where
  identityElement : Prop
  associativityCondition : Prop
  powerAssociativity : Prop
  inverseAxion : Prop

structure LoopPropertiesEvidence (L : LoopProperties) where
  identityElementClosed : L.identityElement
  associativityConditionClosed : L.associativityCondition
  powerAssociativityClosed : L.powerAssociativity
  inverseAxionClosed : L.inverseAxion

def LoopPropertiesClosed (L : LoopProperties) : Prop :=
  L.identityElement ∧ L.associativityCondition ∧ L.powerAssociativity ∧ L.inverseAxion

theorem loop_properties_closed_from_evidence (L : LoopProperties)
    (E : LoopPropertiesEvidence L) : LoopPropertiesClosed L := by
  exact And.intro E.identityElementClosed
    (And.intro E.associativityConditionClosed
      (And.intro E.powerAssociativityClosed E.inverseAxionClosed))

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse