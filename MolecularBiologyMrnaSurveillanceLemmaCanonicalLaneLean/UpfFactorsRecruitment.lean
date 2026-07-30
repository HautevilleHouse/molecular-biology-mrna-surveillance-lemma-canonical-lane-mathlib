import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure UpfFactorsRecruitment where
  upf1Binding : Prop
  upf2Upf3Complex : Prop
  eJcDependency : Prop
  upf1BindingTerm : upf1Binding
  upf2Upf3ComplexTerm : upf2Upf3Complex
  eJcDependencyTerm : eJcDependency

structure UpfRecruitmentEvidence (U : UpfFactorsRecruitment) where
  upf1BindingClosed : U.upf1Binding
  upf2Upf3ComplexClosed : U.upf2Upf3Complex
  eJcDependencyClosed : U.eJcDependency

def UpfRecruitmentClosed (U : UpfFactorsRecruitment) : Prop :=
  U.upf1Binding ∧ U.upf2Upf3Complex ∧ U.eJcDependency

theorem upf_recruitment_closed_from_evidence (U : UpfFactorsRecruitment)
    (Ev : UpfRecruitmentEvidence U) : UpfRecruitmentClosed U := by
  exact And.intro Ev.upf1BindingClosed
    (And.intro Ev.upf2Upf3ComplexClosed Ev.eJcDependencyClosed)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
