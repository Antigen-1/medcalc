import core
import os.path

eGFR = None
with open(os.path.join(os.path.dirname(__file__), "eGFR.json"), "rt") as f:
    eGFR = core.run(f.read())