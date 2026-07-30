import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure NonsenseMediatedDecayPathway where
  prematureTerminationCodon : Prop
  surveillanceComplexRecruitment : Prop
  mrnaDecayExecution : Prop
  prematureTerminationCodonTerm : prematureTerminationCodon
  surveillanceComplexRecruitmentTerm : surveillanceComplexRecruitment
  mrnaDecayExecutionTerm : mrnaDecayExecution

structure NMDEvidence (N : NonsenseMediatedDecayPathway) where
  prematureTerminationCodonClosed : N.prematureTerminationCodon
  surveillanceComplexRecruitmentClosed : N.surveillanceComplexRecruitment
  mrnaDecayExecutionClosed : N.mrnaDecayExecution

def NMDClosed (N : NonsenseMediatedDecayPathway) : Prop :=
  N.prematureTerminationCodon ∧ N.surveillanceComplexRecruitment ∧ N.mrnaDecayExecution

theorem nmd_closed_from_evidence (N : NonsenseMediatedDecayPathway)
    (Ev : NMDEvidence N) : NMDClosed N := by
  exact And.intro Ev.prematureTerminationCodonClosed
    (And.intro Ev.surveillanceComplexRecruitmentClosed Ev.mrnaDecayExecutionClosed)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
