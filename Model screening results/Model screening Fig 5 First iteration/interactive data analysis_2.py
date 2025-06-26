# -*- coding: utf-8 -*-
"""
Created on Thu Apr 18 17:07:27 2024
Data visualization
@author: Maëlle
"""

import pandas as pd
import matplotlib.pyplot as plt
import os
from matplotlib.widgets import Slider  
from matplotlib.colors import ListedColormap

#load the data
folder = os.getcwd() + "//"
file_name = "LAS Et1PC from pulse.csv"
df = pd.read_csv(folder + file_name)

#load colors corresponding to "not oscillating, damped, oscillating"
custom_cmap = ListedColormap(['red', 'green', 'orange'])

#define the subplots and 1st "template" plot. create new df with the right set of conditions (fixed) and plot it as function of x (SI_start),y (AC_start) and c (state)
fig, ax = plt.subplots()
fig.subplots_adjust(bottom=0.25)
df_trig = df[df['trig_start'] == min(df['trig_start'])]
df_FI = df_trig[df_trig['FI_start'] == min(df['FI_start'])]
df_sv = df_FI[df_FI['sv'] == min(df['sv'])]
y = df_sv['SI_start']
x = df_sv['AC_start']
c = df_sv['sustainability']
l = ax.scatter(x, y, c=c+1, cmap=custom_cmap)

#position the different sliders
ax_trig = fig.add_axes([0.15, 0.11, 0.65, 0.03])
ax_FI = fig.add_axes([0.15, 0.06, 0.65, 0.03])
ax_sv = fig.add_axes([0.15, .01, 0.65, 0.03])

#set all sliders depending on the related column of conditions
slider_trig = Slider(
    ax_trig, 'trigger', min(df['trig_start']), max(df['trig_start']),
    valinit=min(df['trig_start']), valstep=df['trig_start'].unique())

slider_FI = Slider(
    ax_FI, 'FI', min(df['FI_start']), max(df['FI_start']),
    valinit=min(df['FI_start']), valstep=df['FI_start'].unique())

slider_sv = Slider(
    ax_sv, 'sv', min(df['sv']), max(df['sv']),
    valinit=min(df['sv']), valstep=df['sv'].unique())

#define the update function to update the graph when moving each slider (recalculate the define function with new starting conditions)
def update(val):
    trigger = slider_trig.val
    FI = slider_FI.val
    sv = slider_sv.val
    df_trig = df[df['trig_start'] == trigger]
    df_FI = df_trig[df_trig['FI_start'] == FI]
    df_sv = df_FI[df_FI['sv'] == sv]
    l = ax.scatter(df_sv['AC_start'],df_sv['SI_start'], c=df_sv['sustainability'], cmap=custom_cmap)

#set the update function for each slider
slider_trig.on_changed(update)
slider_FI.on_changed(update)
slider_sv.on_changed(update)

ax.set_title('Initial conditions screening')
ax.set_ylabel('Starting slow inhibitor (M)')
ax.set_xlabel('Starting fuel (M)')
plt.show()
    