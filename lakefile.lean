import Lake
open Lake DSL

require base from git
  "https://github.com/AeneasVerif/aeneas.git" @ "main" / "backends/lean"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

package «tutorial» {}
@[default_target] lean_lib Tutorial
