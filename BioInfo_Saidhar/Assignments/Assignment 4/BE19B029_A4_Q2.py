def score(s1, s2):
    score=0
    for i in range(len(s1)):
        if (s1[i]==s2[i]):
            score+=1
        elif (s1[i]=='-' or s2[i]=='-'):
            if (s1[i-1]=='-' or s2[i-1]=='-'):
                score-=1
            else:
                score-=3
    return score

#------MAIN CODE------
string1='AATCTATA'
string2='AAG--ATA'
print(score(string1, string2))