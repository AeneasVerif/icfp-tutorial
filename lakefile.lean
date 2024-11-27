import Lake
open Lake DSL

require base from git
  "https://github.com/AeneasVerif/aeneas.git" @ "main" / "backends/lean"

package «tutorial» {}
@[default_target] lean_lib Tutorial
