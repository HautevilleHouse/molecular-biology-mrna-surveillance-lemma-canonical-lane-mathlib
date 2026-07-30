import MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.NMDAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure UpfComplex where
  upf1Active : Prop
  upf2Upf3Complex : Prop
  eRF1eRF3Recruitment : Prop
  decappingActivity : Prop
  closedState : upf1Active ∧ upf2Upf3Complex ∧ eRF1eRF3Recruitment ∧ decappingActivity

theorem upf_complex_closed (U : UpfComplex) : U.closedState :=
  And.intro U.upf1Active (And.intro U.upf2Upf3Complex (And.intro U.eRF1eRF3Recruitment U.decappingActivity))

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
