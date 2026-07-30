import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure SMDTargetingPackage where
  nmdTargetTranscriptIdentified : Prop
  decappingComplexRecruited : Prop
  xrn1ExonucleaseDegradation : Prop
  mrnaClearedFromCytoplasm : Prop

structure SMDTargetingEvidence (S : SMDTargetingPackage) where
  nmdTargetTranscriptIdentifiedClosed : S.nmdTargetTranscriptIdentified
  decappingComplexRecruitedClosed : S.decappingComplexRecruited
  xrn1ExonucleaseDegradationClosed : S.xrn1ExonucleaseDegradation
  mrnaClearedFromCytoplasmClosed : S.mrnaClearedFromCytoplasm

def SMDTargetingClosed (S : SMDTargetingPackage) : Prop :=
  S.nmdTargetTranscriptIdentified ∧ S.decappingComplexRecruited ∧ S.xrn1ExonucleaseDegradation ∧ S.mrnaClearedFromCytoplasm

theorem smd_targeting_closed_from_evidence (S : SMDTargetingPackage) (E : SMDTargetingEvidence S) : SMDTargetingClosed S := by
  exact And.intro E.nmdTargetTranscriptIdentifiedClosed (And.intro E.decappingComplexRecruitedClosed (And.intro E.xrn1ExonucleaseDegradationClosed E.mrnaClearedFromCytoplasmClosed))

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
