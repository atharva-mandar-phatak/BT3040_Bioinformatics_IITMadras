
def AA_Comp_Match(seq):
    group_A = {'A': 8.47, 'D': 5.97, 'C': 1.39, 'E': 6.32, 'T': 5.79,
    'F': 3.91, 'G': 7.82, 'H': 2.26, 'I': 5.71, 'V': 7.02,
    'K': 5.76, 'L': 8.48, 'M': 2.21, 'N': 4.54, 'W': 1.44,
    'P': 4.63, 'Q': 3.82, 'R': 4.93, 'S': 5.94, 'Y': 3.58}
    group_B = {'A': 8.95, 'D': 5.91, 'C': 0.47, 'E': 4.78, 'T': 6.54,
    'F': 3.68, 'G': 8.54, 'H': 1.25, 'I': 4.77, 'V': 6.76,
    'K': 4.93, 'L': 8.78, 'M': 1.56, 'N': 5.74, 'W': 1.24,
    'P': 3.74, 'Q': 4.75, 'R': 5.24, 'S': 8.05, 'Y': 4.13}
    A=[]
    B=[]
    for j in range(len(seq)):
        if seq[j] in AA_Comp_Data:
            AA_Comp_Data.update({seq[j]:AA_Comp_Data[seq[j]]+1})
        else:
            AA_Comp_Data[seq[j]]=1
    for j in AA_Comp_Data:
        AA_Comp_Data[j]=AA_Comp_Data[j]*100/len(seq)
    for k in AA_Comp_Data:
        A.append(AA_Comp_Data[k]-group_A[k])
        B.append(AA_Comp_Data[k]-group_B[k])
    for k in range(len(A)):
        A[k]*=A[k]
        B[k]*=B[k]
    print("Deviation score of A=", end=" ")
    print(sum(A))
    print("Deviation score of B=", end=" ")
    print(sum(B))
    if sum(A)>sum(B):
        print("The given sequence is close to B")
    else:
        print("the given sequence is close to A")
        

AA_Comp_Data={}
seq1='RATPTRWPVGCFNRPWTKWSYDEALDGIKAAGYAWTGLLTASKPSLHHATATPEYLAALKQKSRHAA'
seq2='AAAVMMGLAAIGAAIGIGILGGKFLEGAARQPDLIPLLRTQFFIVMGLVDAIPMIAVGLGLYVMFAVA'
seq3='AADVSAAVGATGQSGMTYRLGLSWDWDKSWWQTSTGRLTGYWDAGYTYWEGGDEGAGKHSLSFAPVFVYEFAGDSIKPFIEAGIGVAAFSGTRVGDQNLGSSLNFEDRIGAGLKFANGQSVGVRAIHYSNAGLKQPNDGIESYSLFYKIPI'
print("Sequence 1")
AA_Comp_Match(seq1)
print("Sequence 2")
AA_Comp_Match(seq2)
print("Sequence 3")
AA_Comp_Match(seq3)