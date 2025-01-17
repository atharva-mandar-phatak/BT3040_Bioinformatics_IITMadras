# BT3040 Practical 1
---

*1. Download the EMBOSS package (http://emboss.sourceforge.net/download/) and copy to your Windows system. In case of Linux use the command: sudo apt-get install jemboss*

Downloaded the EMBOSS package using the given link by creating a remote drive in windows and using the given FTP specified in the website. then downloaded the exe file and installed it in the system.

*2. Using EMBOSS, find the complementary strand for the sequence: 
CTCGGATTTGTAAAGATCATGATCTCATACATAGTACCTAGCCATTG*

Using EMBOSS, I've used the REVSEQ Function which will reverse and complement the sequence, I've unchecked the reverse sequence and pasted the sequence and clicked enter. the result is as follows:
`GAGCCTAAACATTTCTAGTACTAGAGTATGTATCATGGATCGGTAAC`

*3. Write a program to find complementary strand for the sequence given in Q2.*

Python Program to find Complementary Strand for the sequence given in Q2:

`string="CTCGGATTTGTAAAGATCATGATCTCATACATAGTACCTAGCCATTG"
string=string.replace("C", "P")
string=string.replace("G", "C")
string=string.replace("A", "Q")
string=string.replace("T", "A")
string=string.replace("P", "G")
string=string.replace("Q", "T")
string=string[::-1]
print(string)`

*4. Using EMBOSS, find the protein sequence for
GACATTGTGAACAGTAAAAAAGTCCATGCAATGCGCAAGGAGCAGAAGAGGAAGCAGGGCAAGCAGCGCTCCATGGGCTCTCCCATGGACTACTCTCCTCTGCCCATCGACAAGCATGAGCCTGAATTTGGTCCATGCAGAAGAAAACTGGATGGG*

*(ii) Identify the reading frame equivalent to the following sequence.
PIQFSSAWTKFRLMLVDGQRRVVHGRAHGALLALLPLLLLAHCMDFFTVHNV*

Using EMBOSS, the 6 reading frames of protein sequence is: (Using TRANSEQ)

>_1
DIVNSKKVHAMRKEQKRKQGKQRSMGSPMDYSPLPIDKHEPEFGPCRRKLDG

>_2
TL*TVKKSMQCARSRRGSRASSAPWALPWTTLLCPSTSMSLNLVHAEENWMG

>_3
HCEQ*KSPCNAQGAEEEAGQAALHGLSHGLLSSAHRQA*A*IWSMQKKTGWX

>_4
PIQFSSAWTKFRLMLVDGQRRVVHGRAHGALLALLPLLLLAHCMDFFTVHNV

>_5
HPVFFCMDQIQAHACRWAEESSPWESPWSAACPASSSAPCALHGLFYCSQCX

>_6
PSSFLLHGPNSGSCLSMGRGE*SMGEPMERCLPCFLFCSLRIAWTFLLFTMS

(ii) The reading Frame equivalent to the given sequence in question is the fourth reading frame

*5. Write a program to translate the given DNA sequence (refer Q4) to protein sequence.*

The Program for translating the given DNA sequence to Protein sequence (with 6 reading frames) is:

`
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
`

*6. Write a code to search the DNA sequence provided in the Q4 for a specific string, where 
the string is user-specified string like ‘AAG’, ‘ACTA’, etc. The program should print the 
total number of matches for the given string and the positions of the matches. Run the 
code with different length of input string and observe the trend in no of matches*

In other words, this is finding motif of a DNA sequence. To find it, the code will be as follows(Given the mainstring is the same as given in Q4):

`
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
`

*7. Familiarize with other applications in EMBOSS. For example, melting temperature, 
bending, curvature etc.*

In addition to the above two applications in EMBOSS (REVSEQ and TRANSEQ), I've explored across various applicaitons in EMBOSS. Some of them are as follows:

| Description | Program Name |
| --------| -------- |
| Calculating GC Content | geecee |
| Protein to Nucleotide seq. | backtranseq |
| Plot Bending & Curvature of B-DNA | banana |
| Twisting of B-DNA | btwisted |
| Draw Helical net for Protein seq. | pepnet |
| Draw Helical wheel for Protein seq. | pepwheel |

*8. Write a program to compute the average base stacking energy for the sequence given in 
Q2 (AA: -4; AT: -7; AC: -5; AG: -11; TA: -7; TT: -2; TC: -3; TG: -4; CA: -9; CT: -5; CC: 
-6; CG: -7; GA: -9; GT: -6; GC: -4; GG: 11).*

`
def database(string):
    if (string[0]=="A"):
        if (string[1]=="A"):
            return -4
        elif (string[1]=="T"):
            return -7
        elif (string[1]=="C"):
            return -5
        elif (string[1]=="G"):
            return -11
    elif (string[0]=="T"):
        if (string[1]=="A"):
            return -7
        elif (string[1]=="T"):
            return -2
        elif (string[1]=="C"):
            return -3
        elif (string[1]=="G"):
            return -4
    elif (string[0]=="C"):
        if (string[1]=="A"):
            return -9
        elif (string[1]=="T"):
            return -5
        elif (string[1]=="C"):
            return -6
        elif (string[1]=="G"):
            return -7
    elif (string[0]=="G"):
        if (string[1]=="A"):
            return -9
        elif (string[1]=="T"):
            return -6
        elif (string[1]=="C"):
            return -4
        elif (string[1]=="G"):
            return 11
def avg_base_stack_egy(string):
    arr=[]
    summ=0
    for i in range(len(string)-1):
        arr.append(string[i:i+2])
        summ+=database(arr[i])
    avg=summ/(len(arr)-1)
    return avg
string="CTCGGATTTGTAAAGATCATGATCTCATACATAGTACCTAGCCATTG"
print(avg_base_stack_egy(string))
#Output=-5.933333333333334
`

*9. Compute the average melting temperature of the following sequences using Seq2Feature 
tool ( https://www.iitm.ac.in/bioinfo/SBFE/index.html ) and comment on the results (Enter 
one sequence at a time in fasta format)
(i) ATATATATAT ii) GCGCGCGCGC*

* Melting Temperature of (i) ATATATATAT: 48.0022 degrees
* Melting Temperature of (ii) GCGCGCGCGC: 107.867 degrees

The reason for (i) to have lower Melting Temperature than (ii) is because when we see it in molecular form, GC forms three hydrogen bonds with each other whereas AT forms only two hydrogen bonds with each other. So, when the bond strength is low, it is easy to seperate them and thus can be able to melt them at a lower temperature.

*10. Calculate the AT and GC content of the sequence AAATGGCCCTAA using Seq2Feature 
tool*

for the given sequence,
* AT content: 58.333333%
* GC content: 41.666667%