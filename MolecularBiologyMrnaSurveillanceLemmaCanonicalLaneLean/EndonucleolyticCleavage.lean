import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure EndonucleolyticCleavage where
  smg6Recruitment : Prop
  cleavageSiteRecognition : Prop
  mrnaFragmentation : Prop
  smg6RecruitmentTerm : smg6Recruitment
  cleavageSiteRecognitionTerm : cleavageSiteRecognition
  mrnaFragmentationTerm : mrnaFragmentation

structure CleavageEvidence (C : EndonucleolyticCleavage) where
  smg6RecruitmentClosed : C.smg6Recruitment
  cleavageSiteRecognitionClosed : C.cleavageSiteRecognition
  mrnaFragmentationClosed : C.mrnaFragmentation

def CleavageClosed (C : EndonucleolyticCleavage) : Prop :=
  C.smg6Recruitment ∧ C.cleavageSiteRecognition ∧ C.mrnaFragmentation

theorem cleavage_closed_from_evidence (C : EndonucleolyticCleavage)
    (Ev : CleavageEvidence C) : CleavageClosed C := by
  exact And.intro Ev.smg6RecruitmentClosed
    (And.intro Ev.cleavageSiteRecognitionClosed Ev.mrnaFragmentationClosed)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
