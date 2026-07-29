import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

def ConstrainedLoopsQuasigroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_loops_quasigroups_endgame (A : AdmissibleClass) :
    ConstrainedLoopsQuasigroupsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse