import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure NMDSubstrateRecognitionPackage where
  prematureStopCodon : Prop
  exonJunctionComplex : Prop
  eJCDistanceThreshold : Prop
  upf1Activation : Prop
  substrateMarker : Prop

structure NMDSubstrateRecognitionEvidence (S : NMDSubstrateRecognitionPackage) where
  prematureStopCodonClosed : S.prematureStopCodon
  exonJunctionComplexClosed : S.exonJunctionComplex
  eJCDistanceThresholdClosed : S.eJCDistanceThreshold
  upf1ActivationClosed : S.upf1Activation
  substrateMarkerClosed : S.substrateMarker

def NMDSubstrateRecognitionClosed (S : NMDSubstrateRecognitionPackage) : Prop :=
  S.prematureStopCodon ∧ S.exonJunctionComplex ∧
  S.eJCDistanceThreshold ∧ S.upf1Activation ∧ S.substrateMarker

theorem nmd_substrate_recognition_closed_from_evidence
    (S : NMDSubstrateRecognitionPackage)
    (E : NMDSubstrateRecognitionEvidence S) :
    NMDSubstrateRecognitionClosed S := by
  exact And.intro E.prematureStopCodonClosed
    (And.intro E.exonJunctionComplexClosed
      (And.intro E.eJCDistanceThresholdClosed
        (And.intro E.upf1ActivationClosed E.substrateMarkerClosed)))

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse