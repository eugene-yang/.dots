import pandas as pd
import numpy as np
import json, pickle
import itertools
from pathlib import Path

import gzip

try:
    import rich
    print = rich.print
    from rich import pretty
    pretty.install()
    from rich import traceback
    traceback.install(show_locals=False)
    print("=== Using Rich ===")
except ImportError:
    pass

try:
    from tqdm.auto import tqdm
    tqdm.pandas()
except ImportError:
    print("=== Not importing tqdm ===")

try:
    import pyperclip
    cc = pyperclip.copy
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
except ImportError:
    print("=== Not loading pyperclip ===")

try:
    import ir_datasets as irds
except ImportError:
    pass

try:
    import ir_measures as irms
    from ir_measures import *
except ImportError:
    pass


from IPython.core.magic import (register_line_magic, register_cell_magic,
                                register_line_cell_magic)
import subprocess

@register_line_magic
def pn(line):
    subprocess.call(["printf", "\033]2;%s\033\\", line])
