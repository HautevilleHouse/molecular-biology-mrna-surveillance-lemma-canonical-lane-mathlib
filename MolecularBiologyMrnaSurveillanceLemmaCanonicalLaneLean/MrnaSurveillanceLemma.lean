import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.MrnaSurveillancePathway

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure MrnaSurveillanceAdmittedObject where
  space : Type
  transcript : Type
  exonJunctionComplexes : List ExonJunctionComplex
  codonContext : Prop
  surveillanceCompetent : Prop
  conclusion : surveillanceCompetent

structure MrnaSurveillanceAdmissibleClass extends AdmissibleClass where
  object : MrnaSurveillanceAdmittedObject
  endpointSatisfied : object.surveillanceCompetent
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def MrnaSurveillanceWitnessClosed (O : MrnaSurveillanceAdmittedObject) : Prop :=
  O.surveillanceCompetent

def bridgeClosed (A : MrnaSurveillanceAdmissibleClass) : Prop :=
  MrnaSurveillanceWitnessClosed A.object

theorem bridge_from_admissible_class (A : MrnaSurveillanceAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : MrnaSurveillanceAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : MrnaSurveillanceAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedMrnaSurveillanceClosure (A : MrnaSurveillanceAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mrna_surveillance_endgame (A : MrnaSurveillanceAdmissibleClass) :
    ConstrainedMrnaSurveillanceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse