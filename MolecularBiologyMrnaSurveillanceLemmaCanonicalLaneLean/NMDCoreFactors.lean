import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure NMDCoreFactorsPackage where
  upf1Recruited : Prop
  upf2ScaffoldFormed : Prop
  upf3Recruited : Prop
  smg6Activated : Prop
  p-bodyLocalized : Prop

structure NMDCoreFactorsEvidence (N : NMDCoreFactorsPackage) where
  upf1RecruitedClosed : N.upf1Recruited
  upf2ScaffoldFormedClosed : N.upf2ScaffoldFormed
  upf3RecruitedClosed : N.upf3Recruited
  smg6ActivatedClosed : N.smg6Activated
  p-bodyLocalizedClosed : N.p-bodyLocalized

def NMDCoreFactorsClosed (N : NMDCoreFactorsPackage) : Prop :=
  N.upf1Recruited ∧ N.upf2ScaffoldFormed ∧ N.upf3Recruited ∧ N.smg6Activated ∧ N.p-bodyLocalized

theorem nmd_core_factors_closed_from_evidence (N : NMDCoreFactorsPackage) (E : NMDCoreFactorsEvidence N) : NMDCoreFactorsClosed N := by
  exact And.intro E.upf1RecruitedClosed (And.intro E.upf2ScaffoldFormedClosed (And.intro E.upf3RecruitedClosed (And.intro E.smg6ActivatedClosed E.p-bodyLocalizedClosed)))

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
