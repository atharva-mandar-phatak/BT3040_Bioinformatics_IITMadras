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
    avg=summ/(len(arr))
    return avg

string="CTCGGATTTGTAAAGATCATGATCTCATACATAGTACCTAGCCATTG"
print(avg_base_stack_egy(string))