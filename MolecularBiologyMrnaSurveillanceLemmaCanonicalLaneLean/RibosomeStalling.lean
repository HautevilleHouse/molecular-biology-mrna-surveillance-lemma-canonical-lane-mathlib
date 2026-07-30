import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure RibosomeStallingPackage where
  stalledComplex : Type u
  elongationStalled : Prop
  noGoDecayInduced : Prop
  mrnaCleavageTriggered : Prop
  surveillanceRecruited : Prop

structure RibosomeStallingEvidence (R : RibosomeStallingPackage) where
  elongationStalledClosed : R.elongationStalled
  noGoDecayInducedClosed : R.noGoDecayInduced
  mrnaCleavageTriggeredClosed : R.mrnaCleavageTriggered
  surveillanceRecruitedClosed : R.surveillanceRecruited

def RibosomeStallingClosed (R : RibosomeStallingPackage) : Prop :=
  R.elongationStalled ∧ R.noGoDecayInduced ∧
  R.mrnaCleavageTriggered ∧ R.surveillanceRecruited

theorem ribosome_stalling_closed_from_evidence (R : RibosomeStallingPackage)
    (E : RibosomeStallingEvidence R) : RibosomeStallingClosed R := by
  exact And.intro E.elongationStalledClosed
    (And.intro E.noGoDecayInducedClosed
      (And.intro E.mrnaCleavageTriggeredClosed E.surveillanceRecruitedClosed))

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
