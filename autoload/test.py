import sys
import re
import lib

param = {}
com = re.compile("^--")
for index, str in enumerate(sys.argv):
    if com.match(str):
        name = str.replace("-", "")
        index = index + 1
        value = sys.argv[index]
        param[name] = value

if param.get("line"):
    print lib.cterm2Gui(param.get("line"))
