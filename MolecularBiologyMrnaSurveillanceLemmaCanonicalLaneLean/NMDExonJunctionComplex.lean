import MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.NMDAdmissibleClass
import MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean.NMDUpfPathway

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure ExonJunctionComplex where
  eif4a3Bound : Prop
  magohBound : Prop
  rnpS1Bound : Prop
  upf2RecruitingDomain : Prop
  closed : eif4a3Bound ∧ magohBound ∧ rnpS1Bound ∧ upf2RecruitingDomain

structure EJCevidence where
  eif4a3Closed : eif4a3Bound
  magohClosed : magohBound
  rnpS1Closed : rnpS1Bound
  upf2RecruitingDomainClosed : upf2RecruitingDomain

theorem ejc_closed_from_evidence (EJC : ExonJunctionComplex) (E : EJCevidence) : EJC.closed :=
  And.intro E.eif4a3Closed (And.intro E.magohClosed (And.intro E.rnpS1Closed E.upf2RecruitingDomainClosed))

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
