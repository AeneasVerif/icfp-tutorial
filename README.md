# Installation

**Recommended**: the installation should only take a few minutes:
1. clone this repo
2. install [Visual Studio Code](https://code.visualstudio.com)
3. install the **Lean 4** extension (*warning*: do not confuse it with the *Lean 3*
   extension)
4. open this folder inside of VS Code
5. open the file  `Tutorial/Exercises.lean`
6. wait for Lean to download and build the project dependencies

**If you do not want to use VS Code**, you can directly [install
Lean](https://lean-lang.org/lean4/doc/setup.html), then run `lake build` and finally open
the file `Tutorial/Exercises.lean`.

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
