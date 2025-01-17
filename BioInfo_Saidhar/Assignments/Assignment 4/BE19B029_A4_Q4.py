import numpy as np
import pandas as pd

def NnWa(s1, s2):
    arr=np.zeros((len(s1)+1, len(s2)+1))
    arr[:,0]=np.arange(0,2*(-len(s1)-1), -2)
    arr[0,:]=np.arange(0,2*(-len(s2)-1), -2)
    temp=[0, 0, 0]
    for i in range(len(s1)):
        for j in range(len(s2)):
            if (s1[i]==s2[j]):
                temp[0]=arr[i,j]+2
            else:
                temp[0]=arr[i,j]-1
            temp[1]=arr[i,j+1]-2
            temp[2]=arr[i+1,j]-2
            arr[i+1,j+1]=max(temp)
            print(temp)
    str1=" "+s1
    str2=" "+s2
    panda_df=pd.DataFrame(data=arr.astype(int), index=[i for i in str1], columns=[i for i in str2])
    print(panda_df)
    x=[]
    y=[]
    i=len(s1)
    j=len(s2)
    x.append(s1[i-1])
    y.append(s2[j-1])
    i-=1
    j-=1
    while i>0 or j>0:
        if max(arr[i][j], arr[i][j+1],arr[i+1][j])==arr[i][j]:
            x.append(s1[i-1])
            y.append(s2[j-1])
            i-=1
            j-=1
        elif max(arr[i][j], arr[i][j+1],arr[i+1][j])==arr[i][j+1]:
            x.append(s1[i-1])
            y.append('-')
            i-=1
        elif max(arr[i][j], arr[i][j+1],arr[i+1][j])==arr[i+1][j]:
            x.append('-')
            y.append(s1[j-1])
            j-=1
    x=''.join(x[::-1])
    y=''.join(y[::-1])
    print(x)
    print(y)

#-----MAIN PROGRAM-------
string1='ACAGTCGAACG'
string2='ACCGTCCG'
NnWa(string1, string2)