import matplotlib.pyplot as plt
import numpy as np


def amphipaticityplot(string):
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
    #Alpha Helix
    print('Alpha helix:')
    count=0
    for i in range(len(Y)-7):
        arr1=[1, 1, 0, 0, 1, 1, 0, 0]
        arr2=[0, 0, 1, 1, 0, 0, 1, 1]
        arr=[UpDownArr[i],UpDownArr[i+1],UpDownArr[i+2],UpDownArr[i+3], UpDownArr[i+4], UpDownArr[i+5], UpDownArr[i+6], UpDownArr[i+7]]
        if (arr==arr1 or arr==arr2):
            print('Position {} to {} -'.format(i+1, i+8), np.array(arr))
            count+=1
    if count==0:
        print('There are not alpha helix in this sequence')
    #Beta sheet
    print('Beta Strands:')
    count=0
    amparr=[]
    for i in range(len(Y)-5):
        arr1=[1, 0, 1, 0, 1, 0]
        arr2=[0, 1, 0, 1, 0, 1]
        arr=[UpDownArr[i],UpDownArr[i+1],UpDownArr[i+2],UpDownArr[i+3], UpDownArr[i+4], UpDownArr[i+5]]
        if (arr==arr1 or arr==arr2):
            print('Position {} to {} -'.format(i+1, i+8), np.array(arr))
            count+=1
            amparr.append([Y[i],Y[i+1],Y[i+2],Y[i+3], Y[i+4], Y[i+5]])
    if count==0:
        print('There are not beta strands in this sequence')
    #amphipaticity
    above=[0 for i in range(count)]
    below=[0 for i in range(count)]
    for i in range(count):
        for j in range(len(amparr[i])):
            if amparr[i][j]>Ymean:
                above[i]+=amparr[i][j]
            else:
                below[i]+=amparr[i][j]
        above[i]=above[i]/3
        below[i]=below[i]/3
    for i in range(count):
        print('{:.2f}'.format(abs(above[i]-below[i])))

strings=['ALLSFERKYRVRGGTLIGGDLFDFWVGPYFVGFFGVSAIFFIFLGVSLIGYAASQGPTWDPFAISINPPDLKYGLGAAPLLEGGFWQAITVCALGAFISWMLREVEISRKLGIGWHVPLAFCVPIFMFCVLQVFRPLLLGSWGHAFPYGILSHLDWVNNFGYQYLNWHYNPGHMSSVSFLFVNAMALGLHGGLILSVANPGDGDKVKTAEHENQYFRDVVGYSIGALSIHRLGLFLASNIFLTGAFGTIASGPFWTRGWPEWWGWWLDIPFWS']
for i in range(len(strings)):
    amphipaticityplot(strings[i])