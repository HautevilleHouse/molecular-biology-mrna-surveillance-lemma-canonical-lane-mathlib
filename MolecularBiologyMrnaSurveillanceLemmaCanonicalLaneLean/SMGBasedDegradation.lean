import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure SMGBasedDegradationPackage where
  smg6EndonucleaseActivity : Prop
  smg5Smg7Heterodimer : Prop
  upf1Dephosphorylation : Prop
  mrnaCleavage : Prop
  exosomeRecruitment : Prop

structure SMGBasedDegradationEvidence (D : SMGBasedDegradationPackage) where
  smg6EndonucleaseActivityClosed : D.smg6EndonucleaseActivity
  smg5Smg7HeterodimerClosed : D.smg5Smg7Heterodimer
  upf1DephosphorylationClosed : D.upf1Dephosphorylation
  mrnaCleavageClosed : D.mrnaCleavage
  exosomeRecruitmentClosed : D.exosomeRecruitment

def SMGBasedDegradationClosed (D : SMGBasedDegradationPackage) : Prop :=
  D.smg6EndonucleaseActivity ∧ D.smg5Smg7Heterodimer ∧
  D.upf1Dephosphorylation ∧ D.mrnaCleavage ∧ D.exosomeRecruitment

theorem smg_based_degradation_closed_from_evidence
    (D : SMGBasedDegradationPackage)
    (E : SMGBasedDegradationEvidence D) :
    SMGBasedDegradationClosed D := by
  exact And.intro E.smg6EndonucleaseActivityClosed
    (And.intro E.smg5Smg7HeterodimerClosed
      (And.intro E.upf1DephosphorylationClosed
        (And.intro E.mrnaCleavageClosed E.exosomeRecruitmentClosed)))

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse