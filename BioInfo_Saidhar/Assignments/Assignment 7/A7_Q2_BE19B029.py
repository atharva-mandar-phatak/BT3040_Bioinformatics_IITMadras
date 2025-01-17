mwdict={'A': 85, 'C': 115, 'D': 130, 'E': 145, 'F': 160, 'G': 70, 'W': 200,
'H': 150, 'I': 125, 'K': 145, 'L': 125, 'M': 143, 'N': 130, 'Y': 175,
'P': 110, 'Q': 140, 'R': 170, 'S': 100, 'T': 115, 'V': 110}

strings=['''RATPTRWPVGCFNRPWTKWSYDEALDGIKAAGYAWTGLLTASKPSLHHATATPEYLAALKQKSRHAA''',
         '''AAAVMMGLAAIGAAIGIGILGGKFLEGAARQPDLIPLLRTQFFIVMGLVDAIPMIAVGLGLYVMFAVA''',
         '''AADVSAAVGATGQSGMTYRLGLSWDWDKSWWQTSTGRLTGYWDAGYTYWEGGDEGAGKHSLSFAPVFVYEFAGDSIKPFIEAGIGVAAFSGTRVGDQNLGSSLNFEDRIGAGLKFANGQSVGVRAIHYSNAGLKQPNDGIESYSLFYKIPI''']

for i in strings:
    mw=0
    aacompdict={}
    for j in range(len(i)):
        if i[j] in aacompdict:
            aacompdict.update({i[j]:aacompdict[i[j]]+1})
        else:
            aacompdict[i[j]]=1
    for k in aacompdict:
        mw+=aacompdict[k]*mwdict[k]
    mw-=(len(strings[strings.index(i)])-1)*18
    #print("Molecular Weight of seq", i, "=", mw, "\n")
    print("Molecular Weight of seq", strings.index(i)+1, "=", mw, "\n")