import pandas as pd
import numpy as np

if __name__=="__main__":
    file=open('input.txt')
    data=file.read().splitlines()
arr=[]
for i in range(int(len(data)/10)):
    subarr=[]
    for j in range(10):
        print(data[10*i+j], end=' ')
        subarr.append(data[10*i+j])
    arr.append(subarr)
    print('')