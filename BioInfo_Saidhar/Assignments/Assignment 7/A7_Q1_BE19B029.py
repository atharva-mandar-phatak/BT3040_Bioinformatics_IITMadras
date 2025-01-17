
import pandas as pd

strings=['''RATPTRWPVGCFNRPWTKWSYDEALDGIKAAGYAWTGLLTASKPSLHHATATPEYLAALKQKSRHAA''',
         '''AAAVMMGLAAIGAAIGIGILGGKFLEGAARQPDLIPLLRTQFFIVMGLVDAIPMIAVGLGLYVMFAVA''',
         '''AADVSAAVGATGQSGMTYRLGLSWDWDKSWWQTSTGRLTGYWDAGYTYWEGGDEGAGKHSLSFAPVFVYEFAGDSIKPFIEAGIGVAAFSGTRVGDQNLGSSLNFEDRIGAGLKFANGQSVGVRAIHYSNAGLKQPNDGIESYSLFYKIPI''']
AA_all=['A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y']
pandadict={'A':[],'C':[],'D':[],'E':[],'F':[],'G':[],'H':[],'I':[],'K':[],'L':[],'M':[],'N':[],
           'P':[],'Q':[],'R':[],'S':[],'T':[],'V':[],'W':[],'Y':[]}

for i in strings:
    aacompdict={}
    for j in range(len(i)):
        if i[j] in aacompdict:
            aacompdict.update({i[j]:aacompdict[i[j]]+1})
        else:
            aacompdict[i[j]]=1
    for j in aacompdict:
        aacompdict[j]=aacompdict[j]*100/len(i)
    #print(aacompdict, '\n')
    '''for j in AA_all:
        if j in i:
            print(j, ':', aacompdict[j], end=" ")
        else:
            print(j, ':', '0', end=" ")'''
    for i in AA_all:
        if i in aacompdict:
            pandadict[i].append(aacompdict[i])
        else:
            pandadict[i].append(0)
    aacompdict.clear()
print(pd.DataFrame.from_dict(pandadict, orient='index', columns=['Seq 1', 'Seq 2', 'Seq 3']))