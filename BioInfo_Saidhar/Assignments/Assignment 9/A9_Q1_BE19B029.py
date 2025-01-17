def euclidean(score1, score2):
    total=0
    for i in range(len(score1)):
        total+=(abs(score1[i]-score2[i]))**2
    total=total**0.5
    return total

def hamming(score1, score2):
    total=0
    for i in range(len(score1)):
        total+=abs(score1[i]-score2[i])
    return total

def scores(string):
    AminoAcids=['A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y']
    score=[0 for i in range(len(AminoAcids))]
    for i in range(len(string)):
        score[AminoAcids.index(string[i])]+=1
    for i in range(len(score)):
        score[i]=score[i]/len(string)
    return score

strings=['AMENLNMDLLYMAAAVMMGLAAIGAAIGIGILGGKFLEGAARQPDLIPLLRTQFFIVMGLVDAIPMIAVGLGLYVMFAVA',
         'AADVSAAVGATGQSGMTYRLGLSWDWDKSWWQTSTGRLTGYWDAGYTYWEGGDEGAGKHSLSFAPVFVYEFAGDSIKPFIEAGIGVAAFSGTRVGDQNLGSSLNFEDRIGAGLKFANGQSVGVRAIHYSNAGLKQPNDGIESYSLFYKIPI',
         'MALLPAAPGAPARATPTRWPVGCFNRPWTKWSYDEALDGIKAAGYAWTGLLTASKPSLHHATATPEYLAALKQKSRHAA']
scorearr=[]
for i in strings:
    scorearr.append(scores(i))
euclideandist=[]
hammingdist=[]
for i in range(-1, len(scorearr)-1):
    print('euclidean score between {} and {} are'.format(len(strings) if i==-1 else i+1, i+2), euclidean(scorearr[i], scorearr[i+1]))
    euclideandist.append(euclidean(scorearr[i], scorearr[i+1]))
for i in range(-1, len(scorearr)-1):
    print('hamming score between {} and {} are'.format(len(strings) if i==-1 else i+1, i+2), hamming(scorearr[i], scorearr[i+1]))
    hammingdist.append(hamming(scorearr[i], scorearr[i+1]))

print('The closest Euclidean distance is', min(euclideandist))
print('The closest Hamming distance is', min(hammingdist))