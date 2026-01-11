import core
import os.path

(call, help, pkgs) = (None, None, None)
with open(os.path.join(os.path.dirname(__file__), "json", "all.json"), "rt") as f:
    (call, help, pkgs) = core.run(f.read())

print("pkgs: ", end="")
print(", ".join(pkgs()))

Ccr = call("Ccr")
Scr2eGFR = call("Scr2eGFR")
CysCandScr2eGFR = call("CysCandScr2eGFR")
R = call("R")
K = call("K")