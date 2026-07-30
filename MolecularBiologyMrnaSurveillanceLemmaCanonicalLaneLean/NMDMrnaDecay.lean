import MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.NMDExonJunctionComplex

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure MrnaDecayMechanism where
  deadenylation : Prop
  decapping : Prop
  exosomeDegradation : Prop
  decayComplete : deadenylation ∧ decapping ∧ exosomeDegradation

structure MrnaDecayEvidence (D : MrnaDecayMechanism) where
  deadenylationClosed : D.deadenylation
  decappingClosed : D.decapping
  exosomeDegradationClosed : D.exosomeDegradation

theorem decay_closed_from_evidence (D : MrnaDecayMechanism) (E : MrnaDecayEvidence D) : D.decayComplete :=
  And.intro E.deadenylationClosed (And.intro E.decappingClosed E.exosomeDegradationClosed)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
