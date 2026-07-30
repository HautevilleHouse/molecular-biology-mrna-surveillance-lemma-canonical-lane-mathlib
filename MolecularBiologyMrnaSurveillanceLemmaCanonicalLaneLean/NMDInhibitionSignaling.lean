import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure NMDInhibitionSignalingPackage where
  smg1KinaseActivated : Prop
  upf1Phosphorylated : Prop
  smg5Recruited : Prop
  smg7Recruited : Prop
  decayPathwayEngaged : Prop

structure NMDInhibitionSignalingEvidence (S : NMDInhibitionSignalingPackage) where
  smg1KinaseActivatedClosed : S.smg1KinaseActivated
  upf1PhosphorylatedClosed : S.upf1Phosphorylated
  smg5RecruitedClosed : S.smg5Recruited
  smg7RecruitedClosed : S.smg7Recruited
  decayPathwayEngagedClosed : S.decayPathwayEngaged

def NMDInhibitionSignalingClosed (S : NMDInhibitionSignalingPackage) : Prop :=
  S.smg1KinaseActivated ∧ S.upf1Phosphorylated ∧ S.smg5Recruited ∧ S.smg7Recruited ∧ S.decayPathwayEngaged

theorem nmd_inhibition_signaling_closed_from_evidence (S : NMDInhibitionSignalingPackage) (E : NMDInhibitionSignalingEvidence S) : NMDInhibitionSignalingClosed S := by
  exact And.intro E.smg1KinaseActivatedClosed (And.intro E.upf1PhosphorylatedClosed (And.intro E.smg5RecruitedClosed (And.intro E.smg7RecruitedClosed E.decayPathwayEngagedClosed)))

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
