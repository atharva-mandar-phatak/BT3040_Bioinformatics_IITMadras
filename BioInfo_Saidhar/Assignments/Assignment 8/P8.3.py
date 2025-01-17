import matplotlib.pyplot as plt
import numpy as np
def Hgm_with_window_length(seq, d):
    hydrophobicity_values={'A': 13.85, 'D': 11.61, 'C': 15.37, 'E': 11.38, 'F': 13.93, 'G': 13.34,
                           'H': 13.82, 'I': 15.28, 'K': 11.58, 'L': 14.13, 'M': 13.86, 'N': 13.02,
                           'P': 12.35, 'Q': 12.61, 'R': 13.10, 'S': 13.39, 'T': 12.70, 'V': 14.56,
                           'W': 15.48, 'Y': 13.88}
    H_val = []
    l = int(d/2)
    n = len(seq)
    for i in range(l):
        H_val.append(hydrophobicity_values[seq[i]])
    for i in range(l,n-l-1):
        a=0
        for j in range(-l,l):
            a+=hydrophobicity_values[seq[i+j]]
        a=a/d
        H_val.append(a)
    for i in range(n-l-1,n):
        H_val.append(hydrophobicity_values[seq[i]])
    plt.plot(H_val,'-*')
    plt.xlabel('Amino Acid residue')
    plt.ylabel('Hydrophobicity values')
    plt.title('Hydrophobicity profile with window length')
    plt.plot(np.mean(H_val)*np.ones(n),'r')
    plt.show()
    
a ='ALLSFERKYRVRGGTLIGGDLFDFWVGPYFVGFFGVSAIFFIFLGVSLIGYAASQGPTWDPFAISINPPDLKYGLGAAPLLEGGFWQAITVCALGAFISWMLREVEISRKLGIGWHVPLAFCVPIFMFCVLQVFRPLLLGSWGHAFPYGILSHLDWVNNFGYQYLNWHYNPGHMSSVSFLFVNAMALGLHGGLILSVANPGDGDKVKTAEHENQYFRDVVGYSIGALSIHRLGLFLASNIFLTGAFGTIASGPFWTRGWPEWWGWWLDIPFWS'
Hgm_with_window_length(a,9)
Hgm_with_window_length(a,19)