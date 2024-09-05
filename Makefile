.PHONY: all
all: Tutorial.lean

.PHONY: tutorial.llbc
tutorial.llbc:
	cd source && ../charon/bin/charon --hide-marker-traits --dest ../

Tutorial.lean: tutorial.llbc
	aeneas/bin/aeneas -backend lean tutorial.llbc
