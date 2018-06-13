import pandas as pd
import numpy as np
import json, pickle
from pathlib import Path
import pyperclip
cc = pyperclip.copy

from scipy.sparse import load_npz

class dummy(object):
    def __getitem__(self, item):
        l = In[:-1][ item ]
        if isinstance( l, list ):
            cc( "\n".join(l) )
        else:
            cc( l )

    @property
    def r(self):
        c = pyperclip.paste()
        print( c )
        return exec(c)
cl = dummy()
