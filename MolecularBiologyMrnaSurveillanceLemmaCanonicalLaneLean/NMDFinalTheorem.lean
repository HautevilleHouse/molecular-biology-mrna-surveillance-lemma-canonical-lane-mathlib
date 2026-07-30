import MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.NMDEndgame

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

def ConstrainedMrnaSurveillanceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mrna_surveillance_endgame (A : AdmissibleClass) :
    ConstrainedMrnaSurveillanceClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
