import numpy as np
from scipy.integrate import solve_ivp
import pandas as pd
import matplotlib.pyplot as plt


def model_function(AC_start, trigger_start, FI_start, SI_start, flow_sv, time, timestep): #input are initial concentrations, space velocity (flow_sv), time of modelling and timestep
    rate_const = {'kI': 0.0449, 'kII': 0.505, 'kIII': 0.00370, 'kIV': 500,  'sv': flow_sv} #input reaction rate constants
    
    start_conc = {'AC': AC_start, 'trigger': trigger_start, 'Amine': 0,
                  'FI': FI_start, 'FIOH': 0, 'SI': SI_start, 'SIOH': 0, 'AmineAc': 0, 'DBF': 0}
    
    AC_in, trigger_in, FI_in, SI_in = AC_start, trigger_start, FI_start, SI_start

# def model as function of time, current state (y) and measured rate constant   
    def model(t, y, rate_const):
        AC, trigger, Amine, FI, FIOH, SI, SIOH, AmineAc, DBF = y
        
            
#Reaction definitions
        Autocatalysis = rate_const['kII']*AC*Amine
        initiation = rate_const['kI']*AC*trigger
        Slow_inhib = rate_const['kIII']*Amine*SI
        Fast_inhib = rate_const['kIV']*Amine*FI
        sv = rate_const['sv']


#def model of ODEs for all known components       
        dAC = -initiation - Autocatalysis + sv*(AC_in-AC)
        dtrigger = sv*(trigger_in-trigger) # = 0
        dAmine = initiation + Autocatalysis - Fast_inhib - Slow_inhib -sv*Amine
        dFI = -Fast_inhib + sv*(FI_in - FI)
        dFIOH = Fast_inhib - sv*FIOH
        dSI = -Slow_inhib + sv*(SI_in-SI)
        dSIOH = Slow_inhib - sv*SI
        dDBF = initiation + Autocatalysis - sv*DBF
        dAmineAc = Fast_inhib + Slow_inhib - sv*AmineAc
        return [dAC, dtrigger, dAmine, dFI, dFIOH, dSI, dSIOH, dAmineAc, dDBF]
        
    solution = solve_ivp(model, [0, time], list(start_conc.values()), t_eval=np.arange(0, time, timestep), args=(rate_const,), method='RK45')
    
    model_output = pd.DataFrame(data=solution.y.transpose(), columns=start_conc.keys())
    model_output['time'] = solution.t
    
    return model_output #return dataframe of concentrations of each component over time


model = model_function(0.1, 0.002, 0.03, 1.8, 0.0001, 24*3600, 10)
# data2 = pd.read_csv("X:\My Documents\PhD\Oscillations\My Data\GC-Flows\MLC_263\\Et1PC sustained.csv")
data2 = pd.read_csv("X:\My Documents\PhD\Oscillations\paper\\figure\\standard flow.csv")

#plot of the model result
plt.plot(model['time']/3600, model['Amine'], linewidth = 1, c= 'tab:red', label =  'Amine ' + 'modeled ' )
plt.plot(model['time']/3600, model['AmineAc'], linewidth = 1, c= 'tab:blue', label = 'Inhibited amine ' +'modeled' )
plt.plot(model['time']/3600, model['AC'], linewidth = 1, c= 'tab:blue', label = 'Fmoc-Amine ' +'modeled' )


plt.legend(loc = 'best')
plt.xlabel('time (h)')
plt.ylabel('concentration (M)')
plt.show()



