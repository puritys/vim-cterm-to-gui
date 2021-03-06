import vim
import sys
import os
import inspect

cmd_folder = os.path.realpath(os.path.abspath(os.path.split(inspect.getfile( inspect.currentframe() ))[0]))
if cmd_folder not in sys.path:
    sys.path.insert(0, cmd_folder)
import lib

line = vim.current.line[0:]
result = lib.cterm2Gui(line)
if result:
    (row, col) = vim.current.window.cursor
    vim.current.buffer[row - 1] = result
