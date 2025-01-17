s1='ACAGTCGAACG';
s2='ACCGTCCG';
a=zeros(strlength(s1)+1, strlength(s2)+1);
%a=[1, 2, 3, 4];
for i=0:strlength(s2)+1
    a(0,i)=i;
end
for i=0:strlength(s1)+1
    a(i,0)=i;
end
fprintf(a)
for i=1:strlength(s1)+1
    for j=1:strlength(s2)+1
        a(i,j)=min(a(i-1,j-1)+1,a(i,j-1)+1,a(i-1,j)+1);
    end
end
fprintf(a);