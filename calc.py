import core
import os.path

CysCandScr2eGFR = None
with open(os.path.join(os.path.dirname(__file__), "json", "CysCandScr.json"), "rt") as f:
    CysCandScr2eGFR = core.run(f.read())

Scr2eGFR = None
with open(os.path.join(os.path.dirname(__file__), "json", "Scr.json"), "rt") as f:
    Scr2eGFR = core.run(f.read())

Ccr = None
with open(os.path.join(os.path.dirname(__file__), "json", "Ccr.json"), "rt") as f:
    Ccr = core.run(f.read())

K = None
with open(os.path.join(os.path.dirname(__file__), "json", "K.json"), "rt") as f:
    K = core.run(f.read())

R = None
with open(os.path.join(os.path.dirname(__file__), "json", "R.json"), "rt") as f:
    R = core.run(f.read())