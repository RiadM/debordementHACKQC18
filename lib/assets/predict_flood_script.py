# -*- coding: utf-8 -*-
"""
Created on Sun May  6 00:38:07 2018

@author: Yacine Mahdid (BIAPT Lab)
"""

import os
import sys
import pickle
import sklearn


number_params = len(sys.argv) - 1;

# Load data (deserialize)
with open('flood_predictor.pickle', 'rb') as handle:
    clf1 = pickle.load(handle)
    
with open('idx.pickle', 'rb') as handle:
    idx= pickle.load(handle)
    
#clf1 = joblib.load('flood_predictor.pkl') 
#idx = joblib.load('idx.pkl')

month = sys.argv[1];
rain = sys.argv[2]
index = 0
return_str = "["
for i in set(idx):
    prediction = clf1.predict([[i,rain,month]])[0]
    if(prediction < 20):
        prediction = str(0)
    elif(prediction < 150):
        prediction = str(1)
    else:
        prediction = str(2)
    if((index + 1) != 150):
        return_str = return_str + prediction  + ","
    else:
        return_str = return_str + prediction
    index += 1;
return_str = return_str + "]"
print(return_str)


#sys.exit(return_str)
