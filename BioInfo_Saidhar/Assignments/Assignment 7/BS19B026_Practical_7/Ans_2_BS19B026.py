def Molecular_Weight(seq):
    Mol_Weight_Data={'A': 85, 'C': 115, 'D': 130, 'E': 145, 'F': 160, 'G': 70, 'W': 200,
    'H': 150, 'I': 125, 'K': 145, 'L': 125, 'M': 143, 'N': 130, 'Y': 175,
    'P': 110, 'Q': 140, 'R': 170, 'S': 100, 'T': 115, 'V': 110}    
    AA_Comp_Data={}
    Molecular_Weight=0
    for j in range(len(seq)):
        if seq[j] not in AA_Comp_Data:
            AA_Comp_Data[seq[j]]=1
        else:
            AA_Comp_Data.update({seq[j]:AA_Comp_Data[seq[j]]+1})
    for k in AA_Comp_Data:
        Molecular_Weight+=AA_Comp_Data[k]*Mol_Weight_Data[k]
    Molecular_Weight-=(len(seq)-1)*18
    print(Molecular_Weight)


seq1='RATPTRWPVGCFNRPWTKWSYDEALDGIKAAGYAWTGLLTASKPSLHHATATPEYLAALKQKSRHAA'
seq2='AAAVMMGLAAIGAAIGIGILGGKFLEGAARQPDLIPLLRTQFFIVMGLVDAIPMIAVGLGLYVMFAVA'
seq3='AADVSAAVGATGQSGMTYRLGLSWDWDKSWWQTSTGRLTGYWDAGYTYWEGGDEGAGKHSLSFAPVFVYEFAGDSIKPFIEAGIGVAAFSGTRVGDQNLGSSLNFEDRIGAGLKFANGQSVGVRAIHYSNAGLKQPNDGIESYSLFYKIPI'
print("Molecular weight of seq 1:", end=" ")
Molecular_Weight(seq1)
print("Molecular weight of seq 2:", end=" ")
Molecular_Weight(seq2)
print("Molecular weight of seq 3:", end=" ")
Molecular_Weight(seq3)