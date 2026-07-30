import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure NMDObject where
  transcript : Type
  prematureStopCodon : Prop
  surveillanceRecognition : Prop
  mrnaDecayInitiated : Prop
  conclusion : prematureStopCodon ∧ surveillanceRecognition ∧ mrnaDecayInitiated

structure NMDAdmittedObject where
  object : NMDObject
  endosomeDefect : Prop
  repriming : Prop
  gateWitness : endosomeDefect ∨ repriming

structure AdmissibleClass where
  object : NMDAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
