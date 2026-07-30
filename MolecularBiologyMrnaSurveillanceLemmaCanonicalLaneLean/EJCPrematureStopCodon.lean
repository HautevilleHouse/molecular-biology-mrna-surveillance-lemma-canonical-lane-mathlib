import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure EJCPrematureStopCodonPackage where
  pjcAssembled : Prop
  nonsenseCodonDetected : Prop
  upf1RecruitmentTriggered : Prop
  nmdSubstrateMarked : Prop

structure EJCPrematureStopCodonEvidence (E : EJCPrematureStopCodonPackage) where
  pjcAssembledClosed : E.pjcAssembled
  nonsenseCodonDetectedClosed : E.nonsenseCodonDetected
  upf1RecruitmentTriggeredClosed : E.upf1RecruitmentTriggered
  nmdSubstrateMarkedClosed : E.nmdSubstrateMarked

def EJCPrematureStopCodonClosed (E : EJCPrematureStopCodonPackage) : Prop :=
  E.pjcAssembled ∧ E.nonsenseCodonDetected ∧ E.upf1RecruitmentTriggered ∧ E.nmdSubstrateMarked

theorem ejc_premature_stop_codon_closed_from_evidence (E : EJCPrematureStopCodonPackage) (Ev : EJCPrematureStopCodonEvidence E) : EJCPrematureStopCodonClosed E := by
  exact And.intro Ev.pjcAssembledClosed (And.intro Ev.nonsenseCodonDetectedClosed (And.intro Ev.upf1RecruitmentTriggeredClosed Ev.nmdSubstrateMarkedClosed))

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
