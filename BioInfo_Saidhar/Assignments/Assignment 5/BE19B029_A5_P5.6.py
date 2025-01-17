string1='''MVHWTAEEKQLITGLWGKVNVAECGAEALARLLIVYPWTQRFFASFGNLSSPTAILGNPMVRAHGKKVLTSFGDAVKNLDNIKNTFSQLSELHCDKLHVDPENFRLLGDILIIVLAAHFSKDFTPECQAAWQKLVRVVAHALARKYH'''
string2='''MVHLTPEEKSAVTALWGKVNVDEVGGEALGRLLVVYPWTQRFFESFGDLSTPDAVMGNPKVKAHGKKVLGAFSDGLAHLDNLKGTFATLSELHCDKLHVDPENFRLLGNVLVCVLAHHFGKEFTPPVQAAYQKVVAGVANALAHKYH'''
count=0
for i in range(len(string1)):
    if string1[i]==string2[i]:
        count+=1
print("query=", (100-max(len(string1), len(string2))+min(len(string1), len(string2))))
print("sequence identity", (count/min(len(string1), len(string2)))*100)
print("Gap Percentage", max(len(string1), len(string2))-min(len(string1), len(string2)))

