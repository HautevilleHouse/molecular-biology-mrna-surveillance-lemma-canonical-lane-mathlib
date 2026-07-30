import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure ExonJunctionComplex where
  carrier : Type
  depositedDuringSplicing : Prop
  rnaBinding : Prop
  nmdActivationSignal : Prop

structure NmdActivationFactors where
  upf1 : ExonJunctionComplex
  upf2 : ExonJunctionComplex
  upf3 : ExonJunctionComplex
  smg1 : Prop
  smg5 : Prop
  smg7 : Prop
  phosphorylationEvent : Prop

structure SurveillancePathwayPackage where
  eJCs : List ExonJunctionComplex
  activators : NmdActivationFactors
  prematureTerminationCodon : Prop
  mrnaDecayTriggered : Prop
  nonsenseMediatedDecay : Prop

structure SurveillancePathwayEvidence (P : SurveillancePathwayPackage) where
  prematureTerminationCodonClosed : P.prematureTerminationCodon
  mrnaDecayTriggeredClosed : P.mrnaDecayTriggered
  nonsenseMediatedDecayClosed : P.nonsenseMediatedDecay

def SurveillancePathwayClosed (P : SurveillancePathwayPackage) : Prop :=
  P.prematureTerminationCodon ∧ P.mrnaDecayTriggered ∧ P.nonsenseMediatedDecay

theorem surveillance_pathway_closed_from_evidence
    (P : SurveillancePathwayPackage) (E : SurveillancePathwayEvidence P) :
    SurveillancePathwayClosed P := by
  exact And.intro E.prematureTerminationCodonClosed
    (And.intro E.mrnaDecayTriggeredClosed E.nonsenseMediatedDecayClosed)

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse