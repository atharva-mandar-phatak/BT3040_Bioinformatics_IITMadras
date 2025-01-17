def match(a, b, c):
    if (a=='A'):
        if (b=='A'):
            if (c=='T' or c=='C'):
                return 'N'
            elif (c=='A' or c=='G'):
                return 'K'
        elif (b=='C'):
            return 'T'
        elif (b=='G'):
            if (c=='T'or c=='C'):
                return 'S'
            elif (c=='A'or c=='G'):
                return 'R'
        elif (b=='T'):
            if (c=='T'or c=='C'or c=='A'):
                return 'I'
            elif (c=='G'):
                return 'M'
    elif (a=='C'):
        if (b=='A'):
            if (c=='T'or c=='C'):
                return 'H'
            elif (c=='A'or c=='G'):
                return 'Q'
        elif (b=='C'):
            return 'P'
        elif (b=='G'):
            return 'R'
        elif (b=='T'):
            return 'L'
    elif (a=='G'):
        if (b=='A'):
            if (c=='T'or c=='C'):
                return 'D'
            elif (c=='A'or c=='G'):
                return 'E'
        elif (b=='C'):
            return 'A'
        elif (b=='G'):
            return 'G'
        elif (b=='T'):
            return 'V'
    elif (a=='T'):
        if (b=='A'):
            if (c=='T'or c=='C'):
                return 'Y'
        elif (b=='C'):
            return 'S'
        elif (b=='G'):
            if (c=='C'or c=='T'):
                return 'C'
            elif (c=='G'):
                return 'W'
        elif (b=='T'):
            if (c=='C'or c=='T'):
                return 'F'
            elif (c=='A'or c=='G'):
                return 'L'
string="GACATTGTGAACAGTAAAAAAGTCCATGCAATGCGCAAGGAGCAGAAGAGGAAGCAGGGCAAGCAGCGCTCCATGGGCTCTCCCATGGACTACTCTCCTCTGCCCATCGACAAGCATGAGCCTGAATTTGGTCCATGCAGAAGAAAACTGGATGGG"
compstr=string[::-1]
compstr=compstr.replace("A", "P")
compstr=compstr.replace("C", "Q")
compstr=compstr.replace("G", "C")
compstr=compstr.replace("T", "A")
compstr=compstr.replace("P", "T")
compstr=compstr.replace("Q", "G")
s=[]
string=list(string)
compstr=list(compstr)
strstr=string.copy()
revstr=compstr.copy()
for j in range(0,6):
    print("Reading Frame no.: ", j+1)
    if (j<3):
        s=[]
        for i in range(int(len(string)/3)):
            s.append(match(strstr[3*i], strstr[3*i+1], strstr[3*i+2]))
        s=['*' if i is None else i for i in s]
        if (j==2):
            s.pop(len(s)-1)
            s.append('X')
        strstr.pop(0)
        strstr.append(string[j])
        for i in range(len(s)):
            print(s[i], end='')
        print("")
    else:
        s=[]
        for i in range(int(len(string)/3)):
            s.append(match(revstr[3*i], revstr[3*i+1], revstr[3*i+2]))
        s=['*' if i is None else i for i in s]
        if (j==5):
            s.pop(len(s)-1)
            s.append('X')
        revstr.pop(0)
        revstr.append(compstr[len(compstr)-1-j+3])
        for i in range(len(s)):
            print(s[i], end='')
        print("")
'''
for i in range(int(len(string)/3)-1):
    s.append(match(string[3*i], string[3*i+1], string[3*i+2]))
s=['*' if i is None else i for i in s]
for i in range(len(s)):
    print(s[i], end='')
'''