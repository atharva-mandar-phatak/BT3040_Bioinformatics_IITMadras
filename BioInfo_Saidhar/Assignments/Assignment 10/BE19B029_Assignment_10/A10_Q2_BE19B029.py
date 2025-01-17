import numpy as np
import pandas as pd
import math

def weight_matrix(strarr):
    AA_all=['A','C','D','E','F','G','H','I','K','L','M','N','P','Q','R','S','T','V','W','Y']
    align_mat=[[0 for i in range(len(strarr[0]))] for i in range(len(AA_all))]
    weight_mat=[[0.0 for i in range(len(strarr[0]))] for i in range(len(AA_all))]
    prob=1/20
    for i in range(len(strarr)):
        for j in range(len(strarr[i])):
            align_mat[AA_all.index(strarr[i][j])][j]+=1
    align_data=np.array(align_mat)
    print('Alignment Matrix:')
    df1=pd.DataFrame(align_data, AA_all, [i+1 for i in range(len(strarr[0]))])
    print(df1.to_string())
    for i in range(len(AA_all)):
        for j in range(len(strarr[0])):
            num=align_mat[i][j]+prob
            den=prob*(len(strarr)+1)
            fra=num/den
            weight_mat[i][j]=math.log(fra)
    weight_data=weight_mat
    print('Weight Matrix:')
    df2=pd.DataFrame(weight_data, AA_all, [i+1 for i in range(len(strarr[0]))])
    print(df2.to_string())

strings=['MVLSPADKTNVKGKVGAHAGEYGAAAW',
         'MKRLPADPPCVKGKVKAKAGDYGATTW',
         'MALSAADKTNVKSKVGGHAGEYGAATS',
         'MVLSAADKTNVKSKAGGNAGEWWAAAW',
         'MVLSAADKTNVKSKVLANAGEFGAAAW',
         'ALLPIRTTYHKKCASGHIPEEKDLNNV',
         'DEASSLKGHHIKKLEADALLIPLSASS',]
weight_matrix(strings)