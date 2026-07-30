import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean

structure RibosomeProfilingPackage where
  ribosomeDensityMap : Prop
  readCountsNormalized : Prop
  codonResolution : Prop
  noiseModelCalibrated : Prop

structure RibosomeProfilingEvidence (R : RibosomeProfilingPackage) where
  ribosomeDensityMapClosed : R.ribosomeDensityMap
  readCountsNormalizedClosed : R.readCountsNormalized
  codonResolutionClosed : R.codonResolution
  noiseModelCalibratedClosed : R.noiseModelCalibrated

def RibosomeProfilingClosed (R : RibosomeProfilingPackage) : Prop :=
  R.ribosomeDensityMap ∧ R.readCountsNormalized ∧ R.codonResolution ∧ R.noiseModelCalibrated

theorem ribosome_profiling_closed_from_evidence (R : RibosomeProfilingPackage) (E : RibosomeProfilingEvidence R) : RibosomeProfilingClosed R := by
  exact And.intro E.ribosomeDensityMapClosed (And.intro E.readCountsNormalizedClosed (And.intro E.codonResolutionClosed E.noiseModelCalibratedClosed))

end MolecularBiologyMrnaSurveillanceLemmaCanonicalLaneLean
end HautevilleHouse
