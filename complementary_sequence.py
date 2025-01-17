#Atharva Mandar Phatak | BE21B009 | BT30340 Assignment 1 |  
#Q3

bp_dict={'A':'T', 'C':'G', 'G':'C' , 'T':'A'}
original_sequence=list(input().upper())
count=0
for i in original_sequence:
    original_sequence[count]=bp_dict[f'{i}']
    count=count+1
final_sequence_reversed=''.join(map(str, original_sequence))
final_sequence=final_sequence_reversed[::-1]
print(final_sequence) #Prints the reversed sequence 







