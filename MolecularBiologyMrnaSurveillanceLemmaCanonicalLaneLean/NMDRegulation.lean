import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.MrnaSurveillancePathway

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure NmdRegulationPackage (P : SurveillancePathwayPackage) where
  upfPhosphorylation : Prop
  smg1KinaseActivity : Prop
  degrdationEfficiency : Type u
  regulatoryCheckpoints : Prop

structure NmdRegulationEvidence {P : SurveillancePathwayPackage}
    (R : NmdRegulationPackage P) where
  upfPhosphorylationClosed : R.upfPhosphorylation
  smg1KinaseActivityClosed : R.smg1KinaseActivity
  regulatoryCheckpointsClosed : R.regulatoryCheckpoints

def NmdRegulationClosed {P : SurveillancePathwayPackage}
    (R : NmdRegulationPackage P) : Prop :=
  R.upfPhosphorylation ∧ R.smg1KinaseActivity ∧ R.regulatoryCheckpoints

theorem nmd_regulation_closed_from_evidence
    {P : SurveillancePathwayPackage} (R : NmdRegulationPackage P)
    (E : NmdRegulationEvidence R) : NmdRegulationClosed R := by
  exact And.intro E.upfPhosphorylationClosed
    (And.intro E.smg1KinaseActivityClosed E.regulatoryCheckpointsClosed)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse