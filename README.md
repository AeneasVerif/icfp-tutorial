# Installation

**Recommended**: the installation should only take a few minutes:
1. Clone this repo
2. Install [Visual Studio Code](https://code.visualstudio.com)
3. Install the **Lean 4** extension (*warning*: do not confuse it with the *Lean 3*
   extension)
4. Open this folder inside of VS Code (`File` > `Open folder`)
5. Open the file  `Tutorial/Exercises.lean` (by using the explorer on the left)
6. Wait for Lean to download and build the project dependencies.
   You may have to click on the `Restart file` button (on the bottom right)

**If you do not want to use VS Code**, you can directly [install
Lean](https://lean-lang.org/lean4/doc/setup.html), then run `lake build` and finally open
the file `Tutorial/Exercises.lean`.

# Zulip

If you have questions, do not hesitate to join the [Zulip](https://aeneas-verif.zulipchat.com/)!

# Generating the .lean files

In order to minimize the setup time, we will not install Charon and Aeneas during this
session, which means we will not regenerate the .lean files.
If you want to regenerate the .lean files, do the following:

1. Clone the repos:
```
git clone git@github.com:AeneasVerif/aeneas.git
git clone git@github.com:AeneasVerif/charon.git
```

2. Build the projects (see their READMEs to get the list of dependencies):
```
cd aeneas && make
cd charon && make
```

3. Goto the `icfp-tutorial` repo and create symbolic links to the Charon and Aeneas
clones. For instance:
```
cd icfp-tutorial
ln -s ../aeneas aeneas
ln -s ../charon charon
```

4. Run `make`

Note: `make` will simply run the following commands:

1. We first need to call Charon to retrieve the AST of the program.
   The following command generates the `tutorial.llbc` file, which contains the LLBC of
   the program (LLBC is a cleaned up version of MIR, one of the intermediate languages
   used by the Rust compiler - Charon links itself to the Rust compiler to retrieve this
   AST):
   `cd source && ../charon/bin/charon --hide-marker-traits --dest ../`
2. Then, we need to call Aeneas to actually perform the translation to Lean:
   `aeneas/bin/aeneas -backend lean tutorial.llbc`
