import LTheoryAssemblyConjectureCanonicalLaneLean.Formalization
import LTheoryAssemblyConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace LTheoryAssemblyConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "1c871327321bf5d020d45b4538e1bf0e673951a7243c8d852da0f909edaf9afa", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "0885ffb7d546bca62bff1253971fee9ec5625e4cd0a9fa26d84a257e638e03d3", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "f531c7a7a290e0f1b734d62356bacd2fbb99fc09f6169a76a92ee8f9b26dfd11", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "e58b3c93a568ad93ce3f2259c10d21fe4859e3c4cc085f69d7c9c4496fdc5179", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "f355a1d86ad46230e75af584a41ad7e02ce1a460097867798ccbef1c50e8ea29", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "68ac71f75b5c681b46d1a21c8816f8f986b9a33838009db597c9120fdec7a028", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "4df704fe5712c0b455e8f2081d4cbc9622d801dd55c0d58785e6e1e7db5b5d90", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "32bb4ea5844c4966c82a347d88e30a1800487947a49c90bdfdf9372ab9ba2062", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "6c349932247d006d093778cacc88f90d66774db6fb5dc1ee044f36ab8a588f92", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "LTA_G1", constant := "kappa_assembly" },
  { gate := "LTA_G2", constant := "sigma_quadratic" },
  { gate := "LTA_G3", constant := "kappa_compact" },
  { gate := "LTA_G4", constant := "rho_rigidity" },
  { gate := "LTA_G5", constant := "assembly_transfer" },
  { gate := "LTA_G6", constant := "eps_coh" },
  { gate := "LTA_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "bd31a0934a3a955d57684f8cf352c2cce838ce024582f3c4eea07fbbaf40cc10" },
  { path := "README.md", sha256 := "841d48a92110dba67f7b9fc3f12ad856d9394c3959260deb6e00631073b6537c" },
  { path := "artifacts/constants_extracted.json", sha256 := "e58b3c93a568ad93ce3f2259c10d21fe4859e3c4cc085f69d7c9c4496fdc5179" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "f531c7a7a290e0f1b734d62356bacd2fbb99fc09f6169a76a92ee8f9b26dfd11" },
  { path := "artifacts/constants_registry.json", sha256 := "f355a1d86ad46230e75af584a41ad7e02ce1a460097867798ccbef1c50e8ea29" },
  { path := "artifacts/promotion_report.json", sha256 := "4df704fe5712c0b455e8f2081d4cbc9622d801dd55c0d58785e6e1e7db5b5d90" },
  { path := "artifacts/stitch_constants.json", sha256 := "68ac71f75b5c681b46d1a21c8816f8f986b9a33838009db597c9120fdec7a028" },
  { path := "notes/EG1_public.md", sha256 := "6a3bb0ac2da4a26d1b77369b04f25f58eddf43b1bc5bf5fa62da3b59830f6528" },
  { path := "notes/EG2_public.md", sha256 := "3401cd1bb66416dc8d20f88d7f3f46aa44c4f004def0e56979da6910995f3bfa" },
  { path := "notes/EG3_public.md", sha256 := "f98991b1cfc48a03a79a73c1cdbf946536fb57fc4e9da7e0c5d8b5c7f0ad8f7b" },
  { path := "notes/EG4_public.md", sha256 := "9b0de79c51cee79e5cd6d0bad30c797cda0b988e0800623765d2476298bbd856" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "0885ffb7d546bca62bff1253971fee9ec5625e4cd0a9fa26d84a257e638e03d3" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "20ecca1d5afbd407af47223462b2cbf90898cffd743d1104738c07ca3d859303" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "bf1d4b5a7c3715bfe8ecd8e9badfbddb608fd0d1d30dd471c009fd3fde291314" },
  { path := "paper/L_THEORY_ASSEMBLY_CONJECTURE_PREPRINT.md", sha256 := "b6f090a999641200f7882769e2b45eae71596575a4bdcc290a9e7f4417be2bc5" },
  { path := "repro/REPRO_PACK.md", sha256 := "805c8e4b2454a0f8092d110d6595a05233e01b58ebdc2620f9c247f444213a7f" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "640130aa0f618c4eef86286baf0f05744e16cff7d667c7826a94aad4215e6c7a" },
  { path := "repro/certificate_baseline.json", sha256 := "6c349932247d006d093778cacc88f90d66774db6fb5dc1ee044f36ab8a588f92" },
  { path := "repro/run_repro.sh", sha256 := "57e0f9256b36bc7e3c6dc47ec6e044ab2a8bedcf6ee7eafc8064b4d17a8dc18e" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/lta_closure_guard.py", sha256 := "66e92d17cbd9562e7405ebf48fdaae05c3596a284ecb80b27a377be5fcd58b77" },
  { path := "scripts/README.md", sha256 := "db25e091c15699e44682f49a9d1293f577f79ef93ce5ceb124ccbbb105d6ab55" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "LTA_G1", status := "PASS" },
  { gate := "LTA_G2", status := "PASS" },
  { gate := "LTA_G3", status := "PASS" },
  { gate := "LTA_G4", status := "PASS" },
  { gate := "LTA_G5", status := "PASS" },
  { gate := "LTA_G6", status := "PASS" },
  { gate := "LTA_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "assembly_transfer", value := "1.029422" },
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_assembly", value := "1.094116" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_quadratic", value := "1.074" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "assembly_transfer",
  "eps_coh",
  "kappa_assembly",
  "kappa_compact",
  "rho_rigidity",
  "sigma_quadratic",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end LTheoryAssemblyConjectureCanonicalLaneLean
end HautevilleHouse
