def match_pentaPP(s1, s2):
    thisdict = {}
    for i in range(len(string1)-4):
        if string1[i:i+5] not in thisdict:
            thisdict[string1[i:i+5]]=1
        else:
            thisdict[string2[i:i+5]]+=1
        if string2[i:i+5] not in thisdict:
            thisdict[string2[i:i+5]]=1
        else:
            thisdict[string2[i:i+5]]+=1
    return thisdict

string1='''MVHWTAEEKQLITGLWGKVNVAECGAEALARLLIVYPWTQRFFASFGNLSSPTAILGNPMVRAHGKKVLTSFGDAVKNLDNIKNTFSQLSELHCDKLHVDPENFRLLGDILIIVLAAHFSKDFTPECQAAWQKLVRVVAHALARKYH'''
string2='''MVHLTPEEKSAVTALWGKVNVDEVGGEALGRLLVVYPWTQRFFESFGDLSTPDAVMGNPKVKAHGKKVLGAFSDGLAHLDNLKGTFATLSELHCDKLHVDPENFRLLGNVLVCVLAHHFGKEFTPPVQAAYQKVVAGVANALAHKYH'''

print(match_pentaPP(string1, string2))