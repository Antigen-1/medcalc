PYTHON=python
JSON_FILES=json/CysCandScr.json json/Scr.json json/Ccr.json json/K.json json/R.json

.PHONY: run, all, clean

all: $(JSON_FILES) core.py

json/%.json: lib.scm scm/%.scm
	mkdir -p json
	rkt-pythonize -s -r -o $@ $^

core.py:
	rkt-pythonize -c > $@

run: $(JSON_FILES) core.py
	$(PYTHON) -i calc.py

clean:
	-rm -rf json/ __pycache__/ core.py