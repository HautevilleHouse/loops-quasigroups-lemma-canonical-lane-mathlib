import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopsQuasigroupsLemmaCanonicalLaneLean

structure Projection (X : Type) where
  toFun : X → X
  idempotent : ∀ x : X, toFun (toFun x) = toFun x

def loopsQuasigroupsProjection : Projection AdmissibleClass := {
  toFun := λ x => x
  idempotent := by intro x; rfl
}

theorem projection_idempotent (x : AdmissibleClass) :
    loopsQuasigroupsProjection.toFun (loopsQuasigroupsProjection.toFun x) = loopsQuasigroupsProjection.toFun x := by
  exact loopsQuasigroupsProjection.idempotent x

end LoopsQuasigroupsLemmaCanonicalLaneLean
end HautevilleHouse