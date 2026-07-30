import HautevilleHouse.MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : MrnaSurveillanceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MrnaSurveillanceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse