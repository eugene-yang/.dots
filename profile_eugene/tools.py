import pandas as pd
import numpy as np
import json, pickle
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
