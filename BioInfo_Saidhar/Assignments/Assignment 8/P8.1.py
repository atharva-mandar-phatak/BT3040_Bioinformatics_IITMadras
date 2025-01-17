import matplotlib.pyplot as plt
import numpy as np


def hydrophobicityplot(string):
    hydrophobicity_values={'A': 13.85, 'D': 11.61, 'C': 15.37, 'E': 11.38, 'F': 13.93, 'G': 13.34,
                           'H': 13.82, 'I': 15.28, 'K': 11.58, 'L': 14.13, 'M': 13.86, 'N': 13.02,
                           'P': 12.35, 'Q': 12.61, 'R': 13.10, 'S': 13.39, 'T': 12.70, 'V': 14.56,
                           'W': 15.48, 'Y': 13.88}
    X=[]
    Y=[]
    for i in range(len(string)):
        X.append(i)
        Y.append(hydrophobicity_values[string[i]])
    plt.plot(X, Y)
    Ymean=sum(Y)/len(Y)
    Ymeanarr=[Ymean for i in range(len(Y))]
    plt.plot(X, Ymeanarr, c='r')
    plt.show()
    UpDownArr=[]
    for i in range(len(Y)):
        if Y[i]>Ymean:
            UpDownArr.append(1)
        else:
            UpDownArr.append(0)
    print(UpDownArr)
    #Alpha Helix
    print('Alpha Strands:')
    for i in range(len(Y)-3):
        arr1=[1, 1, 0, 0]
        arr2=[0, 0, 1, 1]
        arr=[UpDownArr[i],UpDownArr[i+1],UpDownArr[i+2],UpDownArr[i+3]]
        if (arr==arr1 or arr==arr2):
            print('Position {} to {} -'.format(i+1, i+4), np.array(arr))
    #Beta Barrel
    print('Beta barrel')
    for i in range(len(Y)-4):
        arr1=[1, 0, 1, 0]
        arr2=[0, 1, 0, 1]
        arr=[UpDownArr[i],UpDownArr[i+1],UpDownArr[i+2],UpDownArr[i+3]]
        if (arr==arr1 or arr==arr2):
            for j in range(i+4,len(Y)):
                if j%2==0:
                    if arr[0:4]==arr1 and UpDownArr[j]==1:
                        arr.append(UpDownArr[j])
                    else:
                        break
                    if arr[0:4]==arr2 and UpDownArr[j]==0:
                        arr.append(UpDownArr[j])
                    else:
                        break
                else:
                    if arr[0:4]==arr1 and UpDownArr[j]==0:
                        arr.append(UpDownArr[j])
                    else:
                        break
                    if arr[0:4]==arr2 and UpDownArr[j]==1:
                        arr.append(UpDownArr[j])
                    else:
                        break
            print('Position {} to {}'.format(i+1, len(arr)+i+1), np.array(arr))
                
strings=['FDCAEYRSTNIYGYGLYEVSMKPAKNTGIVSSFFTYTGPAHGTQWEIDIEFLGKDTTKVQFNYYTNGVGGHEKVISLGFDASKGFHTYAFDWQPGYIKWYVDGVLK',
         'KASEDLVKKHAGVLGAILKKKGHHEAELKPLAQSHATKAHKNIFISEAIIHVLHSRHPGDFGADAQGAMNKALELFRKDIAAKYKELGY',
         'TVEGAGSIAAATGFVKKDQLGKNEEGAPQEGILEDMPVDPDNEAYEMPSEEGYQDYEPEA']
for i in range(len(strings)):
    hydrophobicityplot(strings[i])