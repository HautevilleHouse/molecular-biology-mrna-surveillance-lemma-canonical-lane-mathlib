import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure NonstopDecayPackage where
  missingStopCodon : Prop
  ribosomeReachesMrnaEnd : Prop
  skiComplexRecruited : Prop
  exosomeDegradation : Prop
  surveillanceResolved : Prop

structure NonstopDecayEvidence (N : NonstopDecayPackage) where
  missingStopCodonClosed : N.missingStopCodon
  ribosomeReachesMrnaEndClosed : N.ribosomeReachesMrnaEnd
  skiComplexRecruitedClosed : N.skiComplexRecruited
  exosomeDegradationClosed : N.exosomeDegradation
  surveillanceResolvedClosed : N.surveillanceResolved

def NonstopDecayClosed (N : NonstopDecayPackage) : Prop :=
  N.missingStopCodon ∧ N.ribosomeReachesMrnaEnd ∧
  N.skiComplexRecruited ∧ N.exosomeDegradation ∧
  N.surveillanceResolved

theorem nonstop_decay_closed_from_evidence (N : NonstopDecayPackage)
    (E : NonstopDecayEvidence N) : NonstopDecayClosed N := by
  exact And.intro E.missingStopCodonClosed
    (And.intro E.ribosomeReachesMrnaEndClosed
      (And.intro E.skiComplexRecruitedClosed
        (And.intro E.exosomeDegradationClosed E.surveillanceResolvedClosed)))

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
