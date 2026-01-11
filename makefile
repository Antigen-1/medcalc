PYTHON=python

.PHONY: run, all, clean

all: core.py json/all.json

json/all.json: scm/*.scm lib.scm pkg.scm
	mkdir -p json
	rkt-pythonize -s -r -o $@ $^

core.py:
	rkt-pythonize -c > $@

run: core.py json/all.json
	$(PYTHON) -i calc.py

clean:
	-rm -rf json/ __pycache__/ core.py