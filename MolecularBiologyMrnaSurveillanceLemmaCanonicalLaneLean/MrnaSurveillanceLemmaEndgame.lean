import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.ElongationFactorComplex
import HautevilleHouse.MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.NonsenseMediatedDecayPathway
import HautevilleHouse.MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.UpfFactorsRecruitment
import HautevilleHouse.MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.EndonucleolyticCleavage

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.gateWitness.elim id (fun h => False.elim h)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness.elim (fun h => False.elim h) id

def ConstrainedMrnaSurveillanceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mrna_surveillance_endgame (A : AdmissibleClass) :
    ConstrainedMrnaSurveillanceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
