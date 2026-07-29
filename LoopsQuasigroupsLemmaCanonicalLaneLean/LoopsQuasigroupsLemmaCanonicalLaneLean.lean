import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas
import canonicalLaneMathlib.FinalTheorem
import canonicalLaneMathlib.MathlibObjects

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

-- This file aggregates the main components of the package.

theorem package_closure : ∀ A : AdmissibleClass, ConstrainedLoopsQuasigroupsClosure A :=
  constrained_loops_quasigroups_endgame

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse
