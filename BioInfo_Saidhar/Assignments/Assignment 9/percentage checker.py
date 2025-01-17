file=open('90percent.txt')
data=file.read().splitlines()
lines=0
for i in data:
    if i[0]=='>':
        lines+=1
print(lines)