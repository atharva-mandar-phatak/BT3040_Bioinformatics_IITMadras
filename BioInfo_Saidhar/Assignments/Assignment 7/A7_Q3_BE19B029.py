
group_A = {'A': 8.47, 'D': 5.97, 'C': 1.39, 'E': 6.32, 'T': 5.79,
'F': 3.91, 'G': 7.82, 'H': 2.26, 'I': 5.71, 'V': 7.02,
'K': 5.76, 'L': 8.48, 'M': 2.21, 'N': 4.54, 'W': 1.44,
'P': 4.63, 'Q': 3.82, 'R': 4.93, 'S': 5.94, 'Y': 3.58}
group_B = {'A': 8.95, 'D': 5.91, 'C': 0.47, 'E': 4.78, 'T': 6.54,
'F': 3.68, 'G': 8.54, 'H': 1.25, 'I': 4.77, 'V': 6.76,
'K': 4.93, 'L': 8.78, 'M': 1.56, 'N': 5.74, 'W': 1.24,
'P': 3.74, 'Q': 4.75, 'R': 5.24, 'S': 8.05, 'Y': 4.13}
aacompdict={}
strings=['''RATPTRWPVGCFNRPWTKWSYDEALDGIKAAGYAWTGLLTASKPSLHHATATPEYLAALKQKSRHAA''',
         '''AAAVMMGLAAIGAAIGIGILGGKFLEGAARQPDLIPLLRTQFFIVMGLVDAIPMIAVGLGLYVMFAVA''',
         '''AADVSAAVGATGQSGMTYRLGLSWDWDKSWWQTSTGRLTGYWDAGYTYWEGGDEGAGKHSLSFAPVFVYEFAGDSIKPFIEAGIGVAAFSGTRVGDQNLGSSLNFEDRIGAGLKFANGQSVGVRAIHYSNAGLKQPNDGIESYSLFYKIPI''']
for i in strings:
    arra=[]
    arrb=[]
    print("sequence serial number", strings.index(i)+1)
    for j in range(len(i)):
        if i[j] in aacompdict:
            aacompdict.update({i[j]:aacompdict[i[j]]+1})
        else:
            aacompdict[i[j]]=1
    for j in aacompdict:
        aacompdict[j]=aacompdict[j]*100/len(i)
    for k in aacompdict:
        arra.append(aacompdict[k]-group_A[k])
        arrb.append(aacompdict[k]-group_B[k])
    for k in range(len(arra)):
        arra[k]*=arra[k]
        arrb[k]*=arrb[k]
    print("std dev from A=", end=" ")
    print(sum(arra))
    print("std dev from B=", end=" ")
    print(sum(arrb))
    if sum(arra)>sum(arrb):
        print("The given sequence is close to B")
    else:
        print("the given sequence is close to A")