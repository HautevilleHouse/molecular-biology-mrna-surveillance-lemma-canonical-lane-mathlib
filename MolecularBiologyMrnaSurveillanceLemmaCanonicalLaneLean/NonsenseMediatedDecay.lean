import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure NonsenseMediatedDecayPackage where
  prematureStopCodon : Prop
  exonJunctionComplexPresent : Prop
  upfProteinsRecruited : Prop
  mrnaDegradationActivated : Prop
  surveillanceCompleted : Prop

structure NonsenseMediatedDecayEvidence (N : NonsenseMediatedDecayPackage) where
  prematureStopCodonClosed : N.prematureStopCodon
  exonJunctionComplexPresentClosed : N.exonJunctionComplexPresent
  upfProteinsRecruitedClosed : N.upfProteinsRecruited
  mrnaDegradationActivatedClosed : N.mrnaDegradationActivated
  surveillanceCompletedClosed : N.surveillanceCompleted

def NonsenseMediatedDecayClosed (N : NonsenseMediatedDecayPackage) : Prop :=
  N.prematureStopCodon ∧ N.exonJunctionComplexPresent ∧
  N.upfProteinsRecruited ∧ N.mrnaDegradationActivated ∧
  N.surveillanceCompleted

theorem nonsense_mediated_decay_closed_from_evidence (N : NonsenseMediatedDecayPackage)
    (E : NonsenseMediatedDecayEvidence N) : NonsenseMediatedDecayClosed N := by
  exact And.intro E.prematureStopCodonClosed
    (And.intro E.exonJunctionComplexPresentClosed
      (And.intro E.upfProteinsRecruitedClosed
        (And.intro E.mrnaDegradationActivatedClosed E.surveillanceCompletedClosed)))

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
