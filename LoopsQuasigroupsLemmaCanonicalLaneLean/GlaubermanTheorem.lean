import LoopsQuasigroupsLemmaCanonicalLaneLean.MoufangIdentities
import LoopsQuasigroupsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure GlaubermanTheoremPackage (L : Loop) (M : MoufangIdentity L) where
  glaubermanCondition : Prop
  impliesSoluble : Prop
  conditionHolds : glaubermanCondition
  impliesSolubleProof : glaubermanCondition → impliesSoluble

structure GlaubermanEvidence (L : Loop) (M : MoufangIdentity L) (G : GlaubermanTheoremPackage L M) where
  conditionClosed : G.glaubermanCondition
  solubleClosed : G.impliesSoluble

def GlaubermanClosed (L : Loop) (M : MoufangIdentity L) (G : GlaubermanTheoremPackage L M) : Prop :=
  G.glaubermanCondition ∧ G.impliesSoluble

theorem glauberman_closed_from_evidence (L : Loop) (M : MoufangIdentity L) (G : GlaubermanTheoremPackage L M) (E : GlaubermanEvidence L M G) : GlaubermanClosed L M G := by
  exact And.intro E.conditionClosed E.solubleClosed

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse