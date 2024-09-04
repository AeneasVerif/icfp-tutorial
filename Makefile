AENEAS_HOME ?= ../aeneas
CHARON_HOME ?= ../../charon

.PHONY: all
all: Tutorial.lean

.PHONY: tutorial.llbc
tutorial.llbc:
	cd source && $(CHARON_HOME)/bin/charon --hide-marker-traits --dest ../

Tutorial.lean: tutorial.llbc
	$(AENEAS_HOME)/bin/aeneas -backend lean tutorial.llbc
