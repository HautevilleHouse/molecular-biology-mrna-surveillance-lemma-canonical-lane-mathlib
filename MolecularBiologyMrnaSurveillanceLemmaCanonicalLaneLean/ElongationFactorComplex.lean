import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure ElongationFactorComplex where
  eRF1 : Type u
  eRF3 : Type v
  ABCE1 : Type w
  complexFormation : Prop
  gtpHydrolysisCoupling : Prop
  complexFormationTerm : complexFormation
  gtpHydrolysisCouplingTerm : gtpHydrolysisCoupling

structure ElongationFactorEvidence (E : ElongationFactorComplex) where
  complexFormationClosed : E.complexFormation
  gtpHydrolysisCouplingClosed : E.gtpHydrolysisCoupling

def ElongationFactorComplexClosed (E : ElongationFactorComplex) : Prop :=
  E.complexFormation ∧ E.gtpHydrolysisCoupling

theorem elongation_factor_complex_closed_from_evidence
    (E : ElongationFactorComplex) (Ev : ElongationFactorEvidence E) :
    ElongationFactorComplexClosed E := by
  exact And.intro Ev.complexFormationClosed Ev.gtpHydrolysisCouplingClosed

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
