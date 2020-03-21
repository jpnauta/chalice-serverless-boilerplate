import os

from setup import ROOT_DIR

# Import each routes module in modules
modules_folder = os.path.join(ROOT_DIR, "modules/")
for module in os.listdir(modules_folder):
    if os.path.isdir(os.path.join(modules_folder, module)):
        try:
            __import__(f"modules.{module}.routes")
        except ImportError:
            pass
