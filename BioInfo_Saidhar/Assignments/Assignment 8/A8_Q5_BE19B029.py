def case1(head,string):
    a=['I','L']
    b=['D','E','R','K']
    print(head)
    strlen=6
    strarr=[]
    for i in range(len(string)-strlen+1):
        if string[i:i+3]=='STV' and string[i+3] in a and string[i+4] in a and string[i+5] not in b:
            print(i, string[i:i+strlen])
            strarr.append(string[i:i+strlen])
    if len(strarr)==0:
           print('No Matches Found')
           #print('')

def case2(head,string):
    c=['F','I','L','V']
    d=['R','K']
    e=['F','I','L','V','W','Y']
    print(head)
    strlen=14
    strarr=[]
    for i in range(len(string)-strlen+1):
        if string[i] in c and string[i+1]=='Q' and string[i+5] in d and string[i+6]=='G' and string[i+10] in d and string[i+13] in e:
            print(i, string[i:i+strlen])
            strarr.append(string[i:i+strlen])
    if len(strarr)==0:
        print('No Matches Found')
        #print('')

if __name__=="__main__":
    file=open('Q4.fasta')
    #file=open('input.txt')
    data=file.read().splitlines()
    file.close()

a=''
string=[]
head=[]
for i in data:
    if i[0]=='>':
        head.append(i)
        string.append(a)
        a=''
    else:
        a+=str(i)
string.append(a)
string.pop(0)
for i in range(len(string)):
    string[i]=string[i].replace('\n', '')
for i in range(len(head)):
    head[i]=head[i].replace('\n','')

for i in range(len(head)):
    print('Search result for the pattern S-T-V-[IL](2)-{DERK}')
    print('position and pattern in the given sequence:')
    case1(head[i],string[i])
for j in range(len(head)):
    print('Search result for the pattern [FILV]-Q-x-x-x-[RK]-G-x-x-x-[RK]-x-x-[FILVWY]')
    print('position and pattern in the given sequence:')
    case2(head[i],string[i])