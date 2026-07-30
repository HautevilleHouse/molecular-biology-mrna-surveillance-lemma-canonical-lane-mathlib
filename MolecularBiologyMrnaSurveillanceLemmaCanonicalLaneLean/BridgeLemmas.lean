import HautevilleHouse.MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MrnaSurveillanceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse