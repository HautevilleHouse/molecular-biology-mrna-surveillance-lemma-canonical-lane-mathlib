import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.RibosomeStalling
import MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.NonsenseMediatedDecay
import MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.NonstopDecay

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let R : RibosomeStallingPackage := A.gateWitness
  RibosomeStallingClosed R

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.gateWitness

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
