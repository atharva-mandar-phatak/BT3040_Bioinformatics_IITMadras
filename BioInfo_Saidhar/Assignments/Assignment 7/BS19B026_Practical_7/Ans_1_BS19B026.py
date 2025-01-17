def AA_Comp(seq):
    AA_all=['A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y']
    AA_Composition={}
    for j in range(len(seq)):
        if seq[j] not in AA_Composition:
            AA_Composition[seq[j]]=1
        else:
            AA_Composition.update({seq[j]:AA_Composition[seq[j]]+1})
    for j in AA_Composition:
        AA_Composition[j]=AA_Composition[j]*100/len(seq)
    for j in AA_all:
        if j not in seq:
            print(j, ':', '0', end=" ")
        else:
            print(j, ':', AA_Composition[j], end=" ")
    AA_Composition.clear()

seq1='RATPTRWPVGCFNRPWTKWSYDEALDGIKAAGYAWTGLLTASKPSLHHATATPEYLAALKQKSRHAA'
seq2='AAAVMMGLAAIGAAIGIGILGGKFLEGAARQPDLIPLLRTQFFIVMGLVDAIPMIAVGLGLYVMFAVA'
seq3='AADVSAAVGATGQSGMTYRLGLSWDWDKSWWQTSTGRLTGYWDAGYTYWEGGDEGAGKHSLSFAPVFVYEFAGDSIKPFIEAGIGVAAFSGTRVGDQNLGSSLNFEDRIGAGLKFANGQSVGVRAIHYSNAGLKQPNDGIESYSLFYKIPI'

print("Amino Acid Composition of Sequence 1:")
AA_Comp(seq1)
print("Amino Acid Composition of Sequence 2:")
AA_Comp(seq2)
print("Amino Acid Composition of Sequence 3:")
AA_Comp(seq3)