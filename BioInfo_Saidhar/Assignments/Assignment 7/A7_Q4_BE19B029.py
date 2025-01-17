import pandas as pd
def ResPairPref(seq):
    AA_all=['A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y']

    Pref_1 = [[0 for i in range(len(AA_all))] for i in range(len(AA_all))]
    Pref_2 = [[0 for i in range(len(AA_all))] for i in range(len(AA_all))]
    Pref_3 = [[0 for i in range(len(AA_all))] for i in range(len(AA_all))]
    composition = [0]*len(AA_all)
    for i in range(len(seq)):
        aa = seq[i]
        ind = AA_all.index(aa)
        composition[ind]+=1
        
    for i in AA_all:
        for j in AA_all:
            pair = i+j
            for k in range(len(seq)-1):
                if pair==seq[k:k+2]:
                    Pref_1[AA_all.index(i)][AA_all.index(j)]+=1
                    Pref_2[AA_all.index(i)][AA_all.index(j)]+=1
                    Pref_3[AA_all.index(i)][AA_all.index(j)]+=1
            if composition[AA_all.index(i)]==0 or composition[AA_all.index(j)]==0:
                Pref_1[AA_all.index(i)][AA_all.index(j)]=0
                Pref_2[AA_all.index(i)][AA_all.index(j)]=0
                Pref_3[AA_all.index(i)][AA_all.index(j)]=0
            else:
                Pref_1[AA_all.index(i)][AA_all.index(j)]=(Pref_1[AA_all.index(i)][AA_all.index(j)]*100)/(composition[AA_all.index(i)]+composition[AA_all.index(j)])
                Pref_2[AA_all.index(i)][AA_all.index(j)]=(Pref_2[AA_all.index(i)][AA_all.index(j)]*100)/(len(seq)-1)
                Pref_3[AA_all.index(i)][AA_all.index(j)]=(Pref_3[AA_all.index(i)][AA_all.index(j)]*100)/(composition[AA_all.index(i)]*composition[AA_all.index(j)])
    print('\nPair-wise preference score for the given sequnce:')
    print('\nFormula 1 : ')
    print(pd.DataFrame(Pref_1, columns=AA_all, dtype=float).to_string())
    
    print('\nPair-wise preference score for the given sequnce:')
    print('\nFormula 2 : ')
    print(pd.DataFrame(Pref_2, columns=AA_all, dtype=float).to_string())
    
    print('\nPair-wise preference score for the given sequnce:')
    print('\nFormula 3 : ')
    print(pd.DataFrame(Pref_3, columns=AA_all, dtype=float).to_string())
    
    '''for i in range(AA_all):
        for j in range(AA_all):
            print(Pref_1[i][j], end=' ')
        print('\n')
    
    print('\nFormula 2 : ')
    for i in range(AA_all):
        for j in range(AA_all):
            print(Pref_2[i][j], end=' ')
    print('\n')
    
    print('\nFormula 3 : ')
    for i in range(AA_all):
        for j in range(AA_all):
            print(Pref_3[i][j], end=' ')
    print('\n')
    return Pref_1,Pref_2,Pref_3'''

strings=['''RATPTRWPVGCFNRPWTKWSYDEALDGIKAAGYAWTGLLTASKPSLHHATATPEYLAALKQKSRHAA''',
         '''AAAVMMGLAAIGAAIGIGILGGKFLEGAARQPDLIPLLRTQFFIVMGLVDAIPMIAVGLGLYVMFAVA''',
         '''AADVSAAVGATGQSGMTYRLGLSWDWDKSWWQTSTGRLTGYWDAGYTYWEGGDEGAGKHSLSFAPVFVYEFAGDSIKPFIEAGIGVAAFSGTRVGDQNLGSSLNFEDRIGAGLKFANGQSVGVRAIHYSNAGLKQPNDGIESYSLFYKIPI''']
for i in strings:
    print("For Sequence", strings.index(i))
    ResPairPref(i)