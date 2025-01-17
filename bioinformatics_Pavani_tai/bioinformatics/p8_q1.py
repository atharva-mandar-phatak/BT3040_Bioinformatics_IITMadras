seq1 = "AMENLNMDLLYMAAAVMMGLAAIGAAIGIGILGGKFLEGAARQPDLIPLLRTQFFIVMGLVDAIPMIAVGLGLYVMFAVA"
seq2 = "AADVSAAVGATGQSGMTYRLGLSWDWDKSWWQTSTGRLTGYWDAGYTYWEGGDEGAGKHSLSFAPVFVYEFAGDSIKPFIEAGIGVAAFSGTRVGDQNLGSSLNFEDRIGAGLKFANGQSVGVRAIHYSNAGLKQPNDGIESYSLFYKIPI"
seq3 = "MALLPAAPGAPARATPTRWPVGCFNRPWTKWSYDEALDGIKAAGYAWTGLLTASKPSLHHATATPEYLAALKQKSRHAA"

def get_aa_dict():
    aa_dict = {
        'A': 0, 'C': 0, 'D': 0, 'E': 0, 'F': 0,
        'G': 0, 'H': 0, 'I': 0, 'K': 0, 'L': 0,
        'M': 0, 'N': 0, 'P': 0, 'Q': 0, 'R': 0,
        'S': 0, 'T': 0, 'V': 0, 'W': 0, 'Y': 0 }
    return aa_dict
    
def get_composition(seq):
    aa_comp  = get_aa_dict()
    for aa in seq:
        aa_comp[aa]+=1
        
    for key in aa_comp.keys():
        aa_comp[key] /= len(seq)
        
    return aa_comp
    
def get_distance(seq1, seq2):
    seq1_comp = get_composition(seq1)
    seq2_comp = get_composition(seq2)
    
    diff = 0 ; hamm = 0; euc = 0
    for aa in seq1_comp.keys():
        diff = abs(seq1_comp[aa] - seq2_comp[aa])
        hamm += diff
        euc += diff**2
        
    euc **= 0.5
    
    print("Hamming Distance =" , hamm, "\nEuclidean Distance =", euc)
    
get_distance(seq1, seq2)
get_distance(seq2, seq3)
get_distance(seq3, seq1)
