# code functions that will allow us to run predictions 
# everytime a user triggers them 

import joblib

def predict(data):
    clf = joblib.load("rf_model.sav")
    return clf.predict(data)



