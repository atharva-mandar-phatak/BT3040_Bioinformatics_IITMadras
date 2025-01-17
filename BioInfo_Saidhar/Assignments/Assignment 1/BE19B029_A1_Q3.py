string="CTCGGATTTGTAAAGATCATGATCTCATACATAGTACCTAGCCATTG"
string=string.replace("C", "P")
string=string.replace("G", "C")
string=string.replace("A", "Q")
string=string.replace("T", "A")
string=string.replace("P", "G")
string=string.replace("Q", "T")
string=string[::-1]
print(string)