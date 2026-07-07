import LTheoryAssemblyConjectureCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace LTheoryAssemblyConjectureCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end LTheoryAssemblyConjectureCanonicalLaneLean
end HautevilleHouse
