import MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.NMDMrnaDecay

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedNMDClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_nmd_endgame (A : AdmissibleClass) : ConstrainedNMDClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
