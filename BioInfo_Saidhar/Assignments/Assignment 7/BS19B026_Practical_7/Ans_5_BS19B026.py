def AA_Properties(seq):
    Hgm=0
    Ca=0
    Et=0
    for j in seq:
        Hgm+=Hgm_data[j]
        Ca+=Ca_data[j]
        Et+=Et_data[j]
    Hgm=Hgm/len(seq)
    print("\nThe given sequence is:")
    print(seq, "\n")
    print('Hydrophobicity of the given sequence is :',Hgm)
    print('Helical contact area of the given sequence is :',Ca)
    print('Total non bonded Energy for the given sequence is:', Et)

Hgm_data={'A': 13.85, 'C': 15.37, 'D': 11.61, 'E': 11.38, 'F': 13.93, 'G': 11.38, 'W': 15.48,
'H': 13.82, 'I': 15.28, 'K': 11.58, 'L': 14.13, 'M': 13.86, 'N': 11.61, 'Y': 13.88,
'P': 12.35, 'Q': 12.61, 'R': 13.10, 'S': 13.39, 'T': 12.70, 'V': 14.56}
Ca_data={'A': 20, 'C': 25, 'D': 26, 'E': 33, 'F': 46, 'G': 13, 'W': 61,
'H': 37, 'I': 39, 'K': 46, 'L': 35, 'M': 43, 'N': 28, 'Y': 46,
'P': 22, 'Q': 36, 'R': 55, 'S': 20, 'T': 28, 'V': 33}
Et_data={'A': 1.9, 'C': 2.04, 'D': 1.52, 'E': 1.54, 'F': 1.86, 'G': 1.9, 'W': 1.87,
'H': 1.76, 'I': 1.95, 'K': 1.37, 'L': 1.97, 'M': 1.96, 'N': 1.56, 'Y': 1.69,
'P': 1.7, 'Q': 1.52, 'R': 1.48, 'S': 1.75, 'T': 1.77, 'V': 1.98}

sequence1='RATPTRWPVGCFNRPWTKWSYDEALDGIKAAGYAWTGLLTASKPSLHHATATPEYLAALKQKSRHAA'
sequence2='AAAVMMGLAAIGAAIGIGILGGKFLEGAARQPDLIPLLRTQFFIVMGLVDAIPMIAVGLGLYVMFAVA'
sequence3='AADVSAAVGATGQSGMTYRLGLSWDWDKSWWQTSTGRLTGYWDAGYTYWEGGDEGAGKHSLSFAPVFVYEFAGDSIKPFIEAGIGVAAFSGTRVGDQNLGSSLNFEDRIGAGLKFANGQSVGVRAIHYSNAGLKQPNDGIESYSLFYKIPI'

AA_Properties(sequence1)
AA_Properties(sequence2)
AA_Properties(sequence3)