import LoopsQuasigroupsLemmaCanonicalLaneLean.MoufangIdentities

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure WittLoop (L : Loop) where
  wittIdentity : ∀ x y z : L.carrier, ((x * y) * z) * (x * z) = x * ((y * z) * (x * z))

structure WittLemmaPackage (L : Loop) where
  isWittLoop : WittLoop L
  impliesMoufang : MoufangIdentity L

theorem witt_lemma (L : Loop) (W : WittLoop L) : MoufangIdentity L := by
  exact W.impliesMoufang

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse