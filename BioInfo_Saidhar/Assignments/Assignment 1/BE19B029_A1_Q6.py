def find_motif(ms, ss):
    arr=[]
    for i in range(len(ms)-len(ss)):
        if (ms[i:i+len(ss)]==ss):
            arr.append(i+1)
    return arr
mainstring="GACATTGTGAACAGTAAAAAAGTCCATGCAATGCGCAAGGAGCAGAAGAGGAAGCAGGGCAAGCAGCGCTCCATGGGCTCTCCCATGGACTACTCTCCTCTGCCCATCGACAAGCATGAGCCTGAATTTGGTCCATGCAGAAGAAAACTGGATGGG"
substring=input()
arr=find_motif(mainstring, substring)
print("total number of matches: ", len(arr))
print("Position of matches:")
for i in range(len(arr)):
    print(arr[i], end=' ')