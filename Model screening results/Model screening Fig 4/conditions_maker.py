# -*- coding: utf-8 -*-
"""
conditions table creation for large space

@author: P311610
"""
import numpy as np
import pandas as pd
from itertools import product
from pathlib import Path
import os

def arange(start, end, stepsize):
    array = np.arange(start, end+stepsize, stepsize)
    return array


#Set the range of the parameter to screen solutions for arange(minvalue, maxvalue, stepsize)
# ranges = {
#     'AC_start': arange(0.02,0.2,0.02),
#     'trig_start': arange(0.001,0.01,0.001),
#     'FI_start': arange(0.005,0.05,0.005),
#     'SI_start': arange(0.1,0.4,0.02),
#     'sv': arange(0.00005,0.0002,0.000025),
# }
ranges = {
    'AC_start': arange(0.04,0.2,0.02),
    'trig_start': arange(0.001,0.005,0.0005),
    'FI_start': arange(0.01,0.05,0.005),
    'SI_start': arange(0.1,1,0.02),
    'sv': arange(0.0001,0.00015,0.000025),
}
# Generate the Cartesian product of the ranges and sort it as a DataFrame
conditions = pd.DataFrame(list(product(*ranges.values())), columns=ranges.keys())
conditions.index.name = 'i'
filepath = "X:\My Documents\PhD\Oscillations\paper\\Large_space_conditions_pClPhOAc paper.csv"
version = 1
# while filepath.exists():
#     filepath = Path(os.getcwd() + f"\\Large_space_conditions_Proolinol_v{version}.csv")
#     version += 1
conditions.to_csv(filepath)
