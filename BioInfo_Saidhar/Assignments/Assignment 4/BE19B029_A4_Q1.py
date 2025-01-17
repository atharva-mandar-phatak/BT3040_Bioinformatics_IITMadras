import matplotlib.pyplot as plt
def matchstr(s1, s2):
    seq=[]
    seqrev=[]
    tempstr=''
    for i in range(len(s1)):
        if s1[i]==s2[i]:
            tempstr+=s1[i]
        else:
            seq.append(tempstr)
            tempstr=''
    return seq
def plot(s1, s2):
    x=[]
    y=[]
    for i in range(len(s1)):
        for j in range(len(s2)):
            if s1[i]==s2[j]:
                x.append(i)
                y.append(j)
    plt.scatter(x, y)
    plt.xlabel("string1")
    plt.ylabel("string2")
    plt.title("Dot Plot")
    plt.show()

if __name__=="__main__":
    string1='''MVHLTPEEKSAVTALWGKVNVDEVGGEALGRLLVVYPWTQRFFESFGDLSTPDAVMGNPK
VKAHGKKVLGAFSDGLAHLDNLKGTFATLSELHCDKLHVDPENFRLLGNVLVCVLAHHFG
KEFTPPVQAAYQKVVAGVANALAHKYH'''
    string2='''MVHWTAEEKQLITGLWGKVNVAECGAEALARLLIVYPWTQRFFASFGNLSSPTAILGNPM
VRAHGKKVLTSFGDAVKNLDNIKNTFSQLSELHCDKLHVDPENFRLLGDILIIVLAAHFS
KDFTPECQAAWQKLVRVVAHALARKYH'''
    plot(string1, string2)
match=matchstr(string1, string2)
print(match)