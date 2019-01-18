import pandas as pd
import numpy as np
import json, pickle
import itertools
from pathlib import Path
import pyperclip
cc = pyperclip.copy

from scipy.sparse import load_npz

class cl(object):
    def __getitem__(self, item):
        l = In[:-1][ item ]
        if isinstance( l, list ):
            pyperclip.copy( "\n".join(l) )
        else:
            pyperclip.copy( l )

    @property
    def r(self):
        c = pyperclip.paste()
        print( c )
        return exec(c)
cl = cl()

from IPython.core.magic import (register_line_magic, register_cell_magic,
                                register_line_cell_magic)
import subprocess

@register_line_magic
def pn(line):
    subprocess.call(["printf", "\033]2;%s\033\\", line])
