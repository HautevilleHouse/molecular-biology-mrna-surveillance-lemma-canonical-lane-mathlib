import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.BridgeLemmas
import MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

def ConstrainedNMDSurveillanceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_nmd_surveillance_endgame (A : AdmissibleClass) :
    ConstrainedNMDSurveillanceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse