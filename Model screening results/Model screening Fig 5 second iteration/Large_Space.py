import numpy as np
from numpy import diff
from scipy.integrate import solve_ivp
from scipy.signal import find_peaks
import datetime
import pandas as pd
import os
from itertools import product
from joblib import Parallel, delayed

start_time = datetime.datetime.now()
  

# def model as function of time, current state (y) and measured rate constant   
def model_function(condition, time, timestep):
    AC_start, trig_start, FI_start, SI_start, sv = condition.iloc[0]['AC_start'], condition.iloc[0]['trig_start'], condition.iloc[0]['FI_start'], condition.iloc[0]["SI_start"], condition.iloc[0]["sv"]
    rate_const = {'kini': 0.0232183  , 'kac': 0.0362314  , 'kfi': 0.182253  , 'ksi': 0.0022801 , 'flow': sv}
    # print(AC_start)
    start_conc = {'AC': AC_start, 'trigger': trig_start, 'Amine': 0,
                  'FI': FI_start, 'FIOH': 0, 'SI': SI_start, 'SIOH': 0, 'AmineAc': 0, 'DBF': 0}
    
    AC_in, trigger_in, FI_in, SI_in = AC_start, trig_start, FI_start, SI_start

# def model as function of time, current state (y) and measured rate constant   
    def model(t, y, rate_const):
        AC, trigger, Amine, FI, FIOH, SI, SIOH, AmineAc, DBF = y
        
            
#def reactions
        Autocatalysis = rate_const['kac']*AC*Amine
        initiation = rate_const['kini']*AC*trigger
        Slow_inhib = rate_const['ksi']*Amine*SI
        Fast_inhib = rate_const['kfi']*Amine*FI
        flow = rate_const['flow']

#def model of ODEs        
        dAC = -initiation - Autocatalysis + flow*(AC_in-AC)
        dtrigger = flow*(trigger_in-trigger) # = 0
        dAmine = initiation + Autocatalysis - Fast_inhib - Slow_inhib -flow*Amine
        dFI = -Fast_inhib + flow*(FI_in - FI)
        dFIOH = Fast_inhib - flow*FIOH
        dSI = -Slow_inhib + flow*(SI_in-SI)
        dSIOH = Slow_inhib - flow*SI
        dDBF = initiation + Autocatalysis - flow*DBF
        dAmineAc = Fast_inhib + Slow_inhib - flow*AmineAc
        return [dAC, dtrigger, dAmine, dFI, dFIOH, dSI, dSIOH, dAmineAc, dDBF]

    solution = solve_ivp(model, [0, time], list(start_conc.values()), t_eval=np.arange(0, time, timestep), args=(rate_const,), method='RK45')
    model_output = pd.DataFrame(data=solution.y.transpose(), columns=start_conc.keys())
    model_output['time'] = solution.t
    return model_output

# function to determine oscillations
def Oscillates(model_output):
    peaks_index,_=find_peaks(model_output['Amine'], prominence=0.001, distance = 3)
    if len(peaks_index) < 3:
        state = 0
        return state
    else:
        state = 1
        return state

def Sustained(model_output, state):
    periods = []
    if state == 0:
        sustainability = 0
        amplitude_mean = 0
        period = 0
        amplitude_std_dev = 0
        period_std_dev = 0
        columns = ["state", "sustainability", "amplitude_mean", "amplitude_std_dev", "period", "period_std_dev"]
        df = pd.DataFrame([[state, sustainability, amplitude_mean, amplitude_std_dev, period, period_std_dev]], columns = columns)
        return df
    else:
        peaks_index,_=find_peaks(model_output['Amine'], prominence=0.001, distance = 3)
        peaks_amplitude = model_output['Amine'][peaks_index].values.tolist()
        peaks_amplitude.pop(0)
        peaks_time = model_output['time'][peaks_index].values.tolist()
        peaks_time.pop(0)
        last_peak = peaks_amplitude[-1]
        error_peak = 0.8*peaks_amplitude[0]
        if last_peak > error_peak:
            sustainability = 1
            amplitude_mean = np.mean(peaks_amplitude)
            amplitude_std_dev = np.std(peaks_amplitude)
            for l in range(len(peaks_time)):
                    if l == 0:
                        continue
                    else:
                        dx = peaks_time[l]-peaks_time[l-1]
                        periods = np.append(periods, dx)
            period = np.mean(periods)
            period_std_dev = np.std(periods)
            columns = ["state", "sustainability", "amplitude_mean", "amplitude_std_dev", "period", "period_std_dev"]
            df = pd.DataFrame([[state, sustainability, amplitude_mean, amplitude_std_dev, period, period_std_dev]], columns = columns)
            return df
        
        else:
            sustainability = 2
            amplitude_mean = "-"
            period = "-"
            amplitude_std_dev = "-"
            period_std_dev = "-"
            columns = ["state", "sustainability", "amplitude_mean", "amplitude_std_dev", "period", "period_std_dev"]
            df = pd.DataFrame([[state, sustainability, amplitude_mean, amplitude_std_dev, period, period_std_dev]], columns = columns)
    return df
    
def Process(condition, model_output): 
#Create output as model solution function of derivative ( == limit cycle)
#define if the function oscillates
    state = Oscillates(model_output)
    properties = Sustained(model_output, state).set_index(condition.index)
    result = pd.concat([condition, properties], axis=1)
    return result

def solve_process(condition, time, timestep):
    model_output = model_function(condition, time, timestep)
    single_output = Process(condition, model_output)
    return single_output

output_list =[]
def Large_space(conditions, time, timestep):
    for l in range(len(conditions)):
        condition = pd.DataFrame([conditions.loc[l]])
        output=solve_process(condition, time, timestep)
        output_list.append(output)
    Output_total = pd.concat(output_list)
    return Output_total


#Set the range of the parameter to screen solutions for arange(minvalue, maxvalue, stepsize)
conditions_table = "Large_space_conditions_Et1PC2.csv"
conditions = pd.read_csv(os.getcwd() + "//" + conditions_table)


time = 30*3600
timestep = 10
folder = os.getcwd() + "//"
file_name = "LAS Et1PC 1 better rates paper format.csv"
test = Parallel(n_jobs=128)(delayed(solve_process)(pd.DataFrame([conditions.loc[l]]), time, timestep) for l in range(len(conditions)))
df = pd.concat(test)

df.to_csv(folder + file_name)
end_time = datetime.datetime.now()
print("Run time: ", end_time-start_time)