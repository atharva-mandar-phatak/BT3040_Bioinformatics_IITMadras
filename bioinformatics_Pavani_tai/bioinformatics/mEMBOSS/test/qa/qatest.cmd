# QA test commands
seqret [-sequence] ../../data/hba.fa -feature -ufo ../../data/hba.gff -auto -sformat fasta
seqret [-sequence] ../../data/noid.fa -feature -ufo ../../data/noid.gff -sid HBA_HUMAN -sprotein -stdout -auto -sformat fasta
seqret [-sequence] ../../data/noid.fa -stdout -auto -sformat fasta -sid fred
seqret [-sequence] ../../data/noid.fa -stdout -auto -sformat fasta -sid fred -osformat ncbi
seqret [-sequence] ../../data/hba.fa -stdout -auto -sformat fasta -sdbname fred
seqret [-sequence] ../../data/hba.fa -stdout -auto -sformat fasta -sdbname fred -osformat ncbi
seqret [-sequence] ../../data/hba.fa -stdout -auto -sformat fasta -osdbname fred
seqret [-sequence] ../../data/hba.fa -stdout -auto -sformat fasta -osdbname fred -osformat ncbi
seqret [-sequence] ../../data/hba.fa -stdout -auto -sformat fasta -sdbname jim -osdbname fred -osformat ncbi
cachedas -servername tdas -auto -cachefile /home/emboss/.embossdata/qatests.server.dasregistry
seqret [-sequence] tdas:uniprot:P00280 -sbegin1 1 -send1 10 [-outseq] stdout -auto
seqret [-sequence] "tdas:uniprot:{P00280, p12344}" [-outseq] stdout -auto
seqret [-sequence] tdas:uniparc:UPI000000000A -sbegin1 1 -send1 10 [-outseq] stdout -auto
seqret [-sequence] tensembldasgrch37:11 -sbegin1 60001 -send1 60010 [-outseq] stdout -auto
cachedas -servername tensembldasserver -auto -cachefile /home/emboss/.embossdata/qatests.server.ensembldasserver
seqret [-sequence] tensembldasserver:Homo_sapiens_GRCh37_reference:11 -sbegin1 60001 -send1 60010 [-outseq] stdout -auto
cachedbfetch -servername twsdbfetch -auto -cachefile /home/emboss/.embossdata/qatests.server.twsdbfetch
cachedbfetch -servername tdbfetch -auto -cachefile /home/emboss/.embossdata/qatests.server.tdbfetch
seqret [-sequence] fasta::tdbfetch:uniprotkb:P06213 [-outseq] stdout -auto
ontoget [-oboterms] tdbfetch:edam:0352 [-outfile] stdout -auto
textget [-text] uniprotxml::tdbfetch:uniprotkb:p12345 [-outfile] stdout -auto
cacheebeyesearch -cachefile /home/emboss/.embossdata/qatests.server.ebeye -auto
aaindexextract -infile ../../data/aaindex1.test
abiview -graph cps -infile ../../data/abiview.abi
aligncopy -sequences ../../data/globins.msf
aligncopypair -sequences ../../data/globins.msf
antigenic [-sequence] tsw:amir_pseae -auto
antigenic -sequence tsw:actb1_takru
antigenic -rformat gff -sequence tsw:actb1_takru
backtranambig -sequence tsw:opsd_human
backtranseq -sequence tsw:opsd_human
backtranseq -cfile Edrome.cut -sequence tsw:ach2_drome
backtranseq -sequence ../../data/104k.nbrf
banana -outfile banana.data -nograph -sequence tembl:u68037
banana -nooutfile -graph ps -sequence tembl:u68037
banana -graph data -sequence tembl:u68037
biosed [-sequence] tembl:x65923 [-outseq] x65923.rna -targetregion T -replace U
biosed [-sequence] tsw:amir_pseae [-outseq] amir_pseae.pep -targetregion PPP -replace XXPPPXX
btwisted -auto [-sequence] tembl:ab000095 -sbegin1 100 -send1 120
cai [-seqall] TEMBL:AB009602
chaos [-sequence] tembl:j01636 -graph cps
chaos [-sequence] tembl:j01636 -graph data
charge [-seqall] tsw:hbb_human
checktrans -sequence ../../data/paamir.pep
chips -sbegin 135 -send 1292 -seqall tembl:x13776
cirdna -graphout cps -infile ../../data/data.cirp
codcmp -first Eecoli.cut -second Ehaein.cut
codcopy -infile Eecoli.cut
codcopy -oformat emboss -infile Eecoli.cut
codcopy -oformat cut -infile Eecoli.cut
codcopy -oformat gcg -infile Eecoli.cut
codcopy -oformat cutg -infile Eecoli.cut
codcopy -oformat cutgaa -infile Eecoli.cut
codcopy -oformat spsum -infile Eecoli.cut
codcopy -oformat cherry -infile Eecoli.cut
codcopy -oformat transterm -infile Eecoli.cut
codcopy -oformat codehop -infile Eecoli.cut
codcopy -oformat staden -infile Eecoli.cut
codcopy -oformat numstaden -infile Eecoli.cut
codcopy -format emboss -infile ../codcopy-outemboss/eecoli.emboss
codcopy -format cut -infile ../codcopy-outcut/eecoli.cut
codcopy -format gcg -infile ../codcopy-outgcg/eecoli.gcg
codcopy -format cutg -infile ../codcopy-outcutg/eecoli.cutg
codcopy -format cutgaa -infile ../codcopy-outcutgaa/eecoli.cutgaa
codcopy -format spsum -infile ../codcopy-outspsum/eecoli.spsum
codcopy -format cherry -infile ../codcopy-outcherry/eecoli.cherry
codcopy -format transterm -infile ../codcopy-outtransterm/eecoli.transterm
codcopy -format codehop -infile ../codcopy-outcodehop/eecoli.codehop
codcopy -format staden -infile ../codcopy-outstaden/eecoli.staden
codcopy -format numstaden -infile ../codcopy-outnumstaden/eecoli.numstaden
coderet -seqall tembl:x03487
coderet -nocdsoutseq -notranslationoutseq -norestoutseq -seqall tembl:X03487
compseq [-sequence] tembl:x65923 -word 2 [-outfile] result3.comp
compseq [-sequence] tembl:x65923 -word 6 [-outfile] result6.comp -nozerocount
compseq [-sequence] tembl:x65923 -word 3 [-outfile] result3.comp -frame 2 -infile ../../data/prev.comp
cons -sequence ../../data/dna.msf -outseq aligned.cons
consambig -sequence ../../data/dna.msf -outseq aligned.consambig
cpgplot [-sequence] tembl:u68037 -graph cps
cpgplot [-sequence] tembl:u68037 -graph data
cpgreport [-sequence] tembl:u68037
cusp -sbegin 135 -send 1292 -sequence tembl:x13776
cutgextract -directory ../../data
cutgextract -species "Aedes *" -directory ../../data
cutgextract -species "Aedes *" -filename EAedes -directory ../../data
cutseq [-sequence] tembl:x13776 [-outseq] gatta2.seq -from 10 -to 12
cutseq [-sequence] tembl:x13776 -from 1 -to 20 -outseq jsh.seq
cutseq [-sequence] tembl:x13776 [-outseq] starta.seq -sbegin -1000 -send 1290
dan -sequence tembl:x13776
dan -plot -graph cps -sequence tembl:x13776
dan -plot -graph data -sequence tembl:x13776
density [-seqall] tembl:x13776
density [-seqall] tembl:x13776 -display quad -graph cps
density [-seqall] tembl:x13776 -display dual -graph cps
seqret [-sequence] "temblall:*" [-outseq] test.out -auto
seqret [-sequence] "temblvrt:*" [-outseq] test.out -auto
seqret [-sequence] "temblrest:*" [-outseq] test.out -auto
dbiblast -fields acc,sv,des -dbname swnew -directory ../../data
dbiblast -fields acc,sv,des -nosystemsort -dbname swnew -directory ../../data
dbiblast -nosystemsort -dbname swnew -directory ../../data
dbiblast -dbname swnew -directory ../../data
seqret [-sequence] qapblast-id:CO9_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapblast-id:E2BB_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapblast-id:TM21_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapblast-id:ODO2_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapblast-acc:P53450 [-outseq] test.out -auto
seqret [-sequence] qapblast-acc:P79755 [-outseq] test.out -auto
seqret [-sequence] qapblast-acc:Q90515 [-outseq] test.out -auto
seqret [-sequence] "qapblast:*" [-outseq] test.out -auto
seqret [-sequence] "qapblast:n*" [-outseq] test.out -auto
dbiblast -dbname swsplit -directory ../../data -filenames "swsplit.*.pin" -seqtype P
dbiblast -dbname swsplit -directory ../../data -filenames "swsplit.*.*" -seqtype P
dbiblast -dbname swsplit -directory ../../data -filenames "swsplit.00.pin swsplit.01.pin swsplit.02.pin swsplit.03.pin swsplit.04.pin" -seqtype P
seqret [-sequence] qapblastsplit-id:CO9_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapblastsplit-id:E2BB_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapblastsplit-id:TM21_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapblastsplit-id:ODO2_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapblastsplit-acc:P53450 [-outseq] test.out -auto
seqret [-sequence] qapblastsplit-acc:P79755 [-outseq] test.out -auto
seqret [-sequence] qapblastsplit-acc:Q90515 [-outseq] test.out -auto
seqret [-sequence] "qapblastsplit:*" [-outseq] test.out -auto
seqret [-sequence] "qapblastsplit:n*" [-outseq] test.out -auto
seqret [-sequence] qapblastsplitexc:CO9_FUGRU [-outseq] test.out -auto
seqret [-sequence] "qapblastsplitexc:*" [-outseq] test.out -auto
seqret [-sequence] qapblastsplitinc:FABP_FUGRU [-outseq] test.out -auto
seqret [-sequence] "qapblastsplitinc:*" [-outseq] test.out -auto
dbifasta -dbname EMROD -idformat idacc -directory ../../data -filenames emrod
dbifasta -fields acc,sv,des -dbname EMROD -idformat idacc -directory ../../data -filenames emrod
dbifasta -fields acc,sv,des -nosystemsort -dbname EMROD -idformat idacc -directory ../../data -filenames emrod
seqret [-sequence] qanfasta-id:L48662 [-outseq] test.out -auto
seqret [-sequence] qanfasta-id:M11903 [-outseq] test.out -auto
seqret [-sequence] qanfasta-id:Z46957 [-outseq] test.out -auto
seqret [-sequence] qanfasta-id:U68037 [-outseq] test.out -auto
seqret [-sequence] "qanfasta:*" [-outseq] test.out -auto
seqret [-sequence] "qanfasta:m*" [-outseq] test.out -auto
dbifasta -dbname SWNEW -idformat idacc -directory ../../data -filenames swnew
seqret [-sequence] qapfasta-id:O42495_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapfasta-id:Q1KKT3_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapfasta-id:Q68HA9_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapfasta-id:Q50J40_FUGRU [-outseq] test.out -auto
seqret [-sequence] "qapfasta:*" [-outseq] test.out -auto
seqret [-sequence] "qapfasta:q2*" [-outseq] test.out -auto
dbifasta -dbname WORM -idformat simple -directory ../../data -filenames "wormpep.clone.*"
seqret [-sequence] qawfasta-id:AC3.1 [-outseq] test.out -auto
seqret [-sequence] qawfasta-id:AC3.2 [-outseq] test.out -auto
seqret [-sequence] qawfasta-id:ZK637.15 [-outseq] test.out -auto
seqret [-sequence] qawfasta-id:zk637.14 [-outseq] test.out -auto
seqret [-sequence] "qawfasta:*" [-outseq] test.out -auto
seqret [-sequence] "qawfasta:a*" [-outseq] test.out -auto
seqret [-sequence] "qawfasta:z*" [-outseq] test.out -auto
dbiflat -dbname EMBL -idformat EMBL -directory ../../embl -filenames rod.dat
dbiflat -nosystemsort -dbname EMBL -idformat EMBL -directory ../../embl -filenames rod.dat
seqret [-sequence] qanflat-id:M11905 [-outseq] test.out -auto
seqret [-sequence] qanflat-id:L48662 [-outseq] test.out -auto
seqret [-sequence] qanflat-id:M11903 [-outseq] test.out -auto
seqret [-sequence] qanflat-id:Z46957 [-outseq] test.out -auto
seqret [-sequence] qanflat-id:U68037 [-outseq] test.out -auto
seqret [-sequence] "qanflat:*" [-outseq] test.out -auto
seqret [-sequence] "qanflat:*7" [-outseq] test.out -auto
seqret [-sequence] "qanflat:m119*" [-outseq] test.out -auto
seqret [-sequence] tembl-id:AB000095 [-outseq] test.out -auto
seqret [-sequence] tembl-id:AB000360 [-outseq] test.out -auto
seqret [-sequence] tembl-id:Z69719 [-outseq] test.out -auto
seqret [-sequence] tembl-id:Z52466 [-outseq] test.out -auto
seqret [-sequence] tembl-acc:X01958 [-outseq] test.out -auto
seqret [-sequence] "tembl:*" [-outseq] test.out -auto
seqret [-sequence] "tembl:a*" [-outseq] test.out -auto
seqret [-sequence] "tembl-key:lacy gene" [-outseq] test.out -osformat2 embl -auto
seqret [-sequence] "tembl-key:a*" [-outseq] test.out -auto
dbiflat -dbname SWNEW -directory ../../swnew
dbiflat -fields acc,sv,des,key,org -dbname SWNEW -directory ../../swnew
dbiflat -nosystemsort -fields acc,sv,des,key,org -dbname SWNEW -directory ../../swnew
seqret [-sequence] qapflat-id:O42495_TAKRU [-outseq] test.out -auto
seqret [-sequence] qapflat-id:Q1KKT3_TAKRU [-outseq] test.out -auto
seqret [-sequence] qapflat-id:Q68HA9_TAKRU [-outseq] test.out -auto
seqret [-sequence] qapflat-id:Q50J40_TAKRU [-outseq] test.out -auto
seqret [-sequence] "qapflat:*" [-outseq] test.out -auto
seqret [-sequence] "qapflat:q2*" [-outseq] test.out -auto
dbiflat -fields acc,sv,des,key,org -dbname EMBL -directory ../../embl
dbiflat -nosystemsort -fields acc,sv,des,key,org -dbname EMBL -directory ../../embl
seqret [-sequence] qanflatexc-id:X13776 [-outseq] test.out -auto
seqret [-sequence] "qanflatexc-id:*" [-outseq] test.out -auto
seqret [-sequence] qanflatinc-id:U68037 [-outseq] test.out -auto
seqret [-sequence] "qanflatinc-id:*" [-outseq] test.out -auto
dbiflat -dbname GENBANK -idformat GENBANK -directory ../../genbank -filenames "*.seq"
dbigcg -dbname EMBL -idformat EMBL -directory ../../embl
seqret [-sequence] qangcg-id:X65923 [-outseq] test.out -auto
seqret [-sequence] qangcg-id:AB000095 [-outseq] test.out -auto
seqret [-sequence] qangcg-id:AB009062 [-outseq] test.out -auto
seqret [-sequence] qangcg-id:Z95399 [-outseq] test.out -auto
seqret [-sequence] qangcg-id:Z69719 [-outseq] test.out -auto
seqret [-sequence] qangcg:L07770 [-outseq] test.out -auto
seqret [-sequence] qangcg-id:Z95399 [-outseq] test.out -auto
seqret [-sequence] qangcg-id:AL034557 [-outseq] test.out -auto
seqret [-sequence] qangcg-id:AC017364 [-outseq] test.out -auto
seqret [-sequence] qangcg-id:AL035476 [-outseq] test.out -auto
seqret [-sequence] qangcg-id:U18997 [-outseq] test.out -auto
seqret [-sequence] "qangcg:*" [-outseq] test.out -auto
seqret [-sequence] "qangcg:a*" [-outseq] test.out -auto
seqret [-sequence] qangcgexc-id:x65923 [-outseq] test.out -auto
seqret [-sequence] "qangcgexc-id:*" [-outseq] test.out -auto
seqret [-sequence] qangcginc-id:j01636 [-outseq] test.out -auto
seqret [-sequence] "qangcginc-id:*" [-outseq] test.out -auto
dbigcg -fields acc,sv,des,key,org -dbname EMBL -idformat EMBL -directory ../../embl
seqret [-sequence] qangcgall-id:x65923 [-outseq] test.out -auto
seqret [-sequence] qangcgall-id:AB000095 [-outseq] test.out -auto
seqret [-sequence] qangcgall-id:AB009062 [-outseq] test.out -auto
seqret [-sequence] qangcgall-id:Z95399 [-outseq] test.out -auto
seqret [-sequence] qangcgall-id:Z69719 [-outseq] test.out -auto
seqret [-sequence] qangcgall:L07770 [-outseq] test.out -auto
seqret [-sequence] qangcgall-id:Z95399 [-outseq] test.out -auto
seqret [-sequence] qangcgall-id:AL034557 [-outseq] test.out -auto
seqret [-sequence] qangcgall-id:AC017364 [-outseq] test.out -auto
seqret [-sequence] qangcgall-id:AL035476 [-outseq] test.out -auto
seqret [-sequence] qangcgall-id:U18997 [-outseq] test.out -auto
seqret [-sequence] "qangcgall:*" [-outseq] test.out -auto
seqret [-sequence] "qangcgall:a*" [-outseq] test.out -auto
seqret [-sequence] qangcgall-acc:X65923 [-outseq] test.out -auto
seqret [-sequence] "qangcgall-acc:*" [-outseq] test.out -auto
seqret [-sequence] "qangcgall-acc:x*" [-outseq] test.out -auto
seqret [-sequence] qangcgall-sv:D00596.1 [-outseq] test.out -auto
seqret [-sequence] "qangcgall-sv:*" [-outseq] test.out -auto
seqret [-sequence] "qangcgall-sv:x*" [-outseq] test.out -auto
seqret [-sequence] qangcgall-des:fau [-outseq] test.out -auto
seqret [-sequence] "qangcgall-des:*" [-outseq] test.out -auto
seqret [-sequence] "qangcgall-des:m*" [-outseq] test.out -auto
seqret [-sequence] qangcgall-key:rhodopsin [-outseq] test.out -auto
seqret [-sequence] "qangcgall-key:*" [-outseq] test.out -auto
seqret [-sequence] "qangcgall-key:lacy gene" [-outseq] test.out -osformat2 embl -auto
seqret [-sequence] qangcgall-org:Mus [-outseq] test.out -auto
seqret [-sequence] "qangcgall-org:*" [-outseq] test.out -auto
seqret [-sequence] "qangcgall-org:s*" [-outseq] test.out -auto
seqret [-sequence] "qangcgall-org:mus*" [-outseq] test.out -auto
dbigcg -fields acc,sv,des,key,org -nosystemsort -dbname EMBL -idformat EMBL -directory ../../embl
dbigcg -dbname PIR -idformat PIR -directory ../../pir
seqret [-sequence] qapir-id:cchu [-outseq] test.out -auto
seqret [-sequence] qapir-id:A31558 [-outseq] test.out -auto
seqret [-sequence] qapir-id:A32902 [-outseq] test.out -auto
seqret [-sequence] qapir-id:S29350 [-outseq] test.out -auto
seqret [-sequence] qapir-id:S11172 [-outseq] test.out -auto
seqret [-sequence] qapir:A00001 [-outseq] test.out -auto
seqret [-sequence] "qapir:*" [-outseq] test.out -auto
seqret [-sequence] "qapir:c*" [-outseq] test.out -auto
seqret [-sequence] qapirexc-id:S11172 [-outseq] test.out -auto
seqret [-sequence] "qapirexc-id:*" [-outseq] test.out -auto
seqret [-sequence] qapirinc-id:cchu [-outseq] test.out -auto
seqret [-sequence] "qapirinc-id:*" [-outseq] test.out -auto
dbigcg -fields acc,des,key,org -dbname PIR -idformat PIR -directory ../../pir
seqret [-sequence] qapirall-id:cchu [-outseq] test.out -auto
seqret [-sequence] qapirall-id:A31558 [-outseq] test.out -auto
seqret [-sequence] qapirall-id:A32902 [-outseq] test.out -auto
seqret [-sequence] qapirall-id:S29350 [-outseq] test.out -auto
seqret [-sequence] qapirall-id:S11172 [-outseq] test.out -auto
seqret [-sequence] qapirall:A00001 [-outseq] test.out -auto
seqret [-sequence] "qapirall:*" [-outseq] test.out -auto
seqret [-sequence] "qapirall:c*" [-outseq] test.out -auto
seqret [-sequence] qapirall-acc:A04605 [-outseq] test.out -auto
seqret [-sequence] "qapirall-acc:*" [-outseq] test.out -auto
seqret [-sequence] "qapirall-acc:s*" [-outseq] test.out -auto
seqret [-sequence] qapirall-des:cytochrome [-outseq] test.out -auto
seqret [-sequence] "qapirall-des:*" [-outseq] test.out -auto
seqret [-sequence] "qapirall-des:p*" [-outseq] test.out -auto
seqret [-sequence] qapirall-key:polymorphism [-outseq] test.out -auto
seqret [-sequence] "qapirall-key:*" [-outseq] test.out -auto
seqret [-sequence] "qapirall-key:?*" [-outseq] test.out -auto
entret [-sequence] "qapirall-key:blocked amino end" [-outfile] test.out -auto
seqret [-sequence] "qapirall-key:m*" [-outseq] test.out -auto
seqret [-sequence] "qapirall-org:drosophila melanogaster" [-outseq] test.out -auto
seqret [-sequence] "qapirall-org:*" [-outseq] test.out -auto
seqret [-sequence] "qapirall-org:s*" [-outseq] test.out -auto
seqret [-sequence] "qapirall-org:mus*" [-outseq] test.out -auto
dbxfasta -dbname emrod -dbresource emblresource -idformat idacc -directory ../../data -filenames emrod
dbxfasta -fields id,acc,sv,des -dbname emrod -dbresource emblresource -idformat idsv -directory ../../data -filenames emrod
seqret [-sequence] qanxfasta-id:L48662 [-outseq] test.out -auto
seqret [-sequence] qanxfasta-id:M11903 [-outseq] test.out -auto
seqret [-sequence] qanxfasta-id:Z46957 [-outseq] test.out -auto
seqret [-sequence] qanxfasta-id:U68037 [-outseq] test.out -auto
seqret [-sequence] "qanxfasta:*" [-outseq] test.out -auto
seqret [-sequence] "qanxfasta:m*" [-outseq] test.out -auto
dbxfasta -dbname swnew -dbresource swissresource -idformat idacc -directory ../../data -filenames swnew
seqret [-sequence] qapxfasta-id:O42495_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapxfasta-id:Q1KKT3_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapxfasta-id:Q68HA9_FUGRU [-outseq] test.out -auto
seqret [-sequence] qapxfasta-id:Q50J40_FUGRU [-outseq] test.out -auto
seqret [-sequence] "qapxfasta:*" [-outseq] test.out -auto
seqret [-sequence] "qapxfasta:q2*" [-outseq] test.out -auto
dbxfasta -dbname worm -dbresource dbxresource -idformat simple -directory ../../data -filenames "wormpep.clone.*"
seqret [-sequence] qawxfasta-id:AC3.1 [-outseq] test.out -auto
seqret [-sequence] qawxfasta-id:AC3.2 [-outseq] test.out -auto
seqret [-sequence] qawxfasta-id:ZK637.15 [-outseq] test.out -auto
seqret [-sequence] qawxfasta-id:zk637.14 [-outseq] test.out -auto
seqret [-sequence] "qawxfasta:*" [-outseq] test.out -auto
seqret [-sequence] "qawxfasta:a*" [-outseq] test.out -auto
seqret [-sequence] "qawxfasta:z*" [-outseq] test.out -auto
dbxflat -dbname embl -dbresource emblresource -idformat embl -filenames rod.dat -directory ../../embl
seqret [-sequence] qanxflat-id:M11905 [-outseq] test.out -auto
seqret [-sequence] qanxflat-id:L48662 [-outseq] test.out -auto
seqret [-sequence] qanxflat-id:M11903 [-outseq] test.out -auto
seqret [-sequence] qanflat-id:Z46957 [-outseq] test.out -auto
seqret [-sequence] qanxflat-id:U68037 [-outseq] test.out -auto
seqret [-sequence] "qanxflat:*" [-outseq] test.out -auto
seqret [-sequence] "qanxflat:*7" [-outseq] test.out -auto
seqret [-sequence] "qanxflat:m119*" [-outseq] test.out -auto
dbxflat -fields id,acc,sv,des,key,org -dbname embl -dbresource emblresource -idformat embl -directory ../../embl
seqret [-sequence] qanxflatall-id:L07770 [-outseq] test.out -auto
seqret [-sequence] qanxflatall-id:AB000095 [-outseq] test.out -auto
seqret [-sequence] qanxflatall-id:AB000360 [-outseq] test.out -auto
seqret [-sequence] qanxflatall-id:Z69719 [-outseq] test.out -auto
seqret [-sequence] qanxflatall-id:Z52466 [-outseq] test.out -auto
seqret [-sequence] "qanxflatall:*" [-outseq] test.out -auto
seqret [-sequence] "qanxflatall:a*" [-outseq] test.out -auto
seqret [-sequence] qanxflatall-acc:X01958 [-outseq] test.out -auto
seqret [-sequence] "qanxflatall-key:lacy gene" [-outseq] test.out -osformat2 embl -auto
seqret [-sequence] "qanxflatall-key:a*" [-outseq] test.out -auto
seqret [-sequence] qanxflatexc-id:X13776 [-outseq] test.out -auto
seqret [-sequence] "qanxflatexc-id:*" [-outseq] test.out -auto
seqret [-sequence] qanxflatinc-id:U68037 [-outseq] test.out -auto
seqret [-sequence] "qanxflatinc-id:*" [-outseq] test.out -auto
dbxflat -dbname swnew -dbresource swissresource -directory ../../swnew
seqret [-sequence] qapxflat-id:O42495_TAKRU [-outseq] test.out -auto
seqret [-sequence] qapxflat-id:Q1KKT3_TAKRU [-outseq] test.out -auto
seqret [-sequence] qapxflat-id:Q68HA9_TAKRU [-outseq] test.out -auto
seqret [-sequence] qapxflat-id:Q50J40_TAKRU [-outseq] test.out -auto
seqret [-sequence] "qapxflat:*" [-outseq] test.out -auto
seqret [-sequence] "qapxflat:q2*" [-outseq] test.out -auto
dbxgcg -dbname embl -dbresource emblresource -idformat embl -directory ../../embl
seqret [-sequence] qanxgcg-id:X65923 [-outseq] test.out -auto
seqret [-sequence] qanxgcg-id:AB000095 [-outseq] test.out -auto
seqret [-sequence] qanxgcg-id:AB009062 [-outseq] test.out -auto
seqret [-sequence] qanxgcg-id:Z95399 [-outseq] test.out -auto
seqret [-sequence] qanxgcg-id:Z69719 [-outseq] test.out -auto
seqret [-sequence] qanxgcg:L07770 [-outseq] test.out -auto
seqret [-sequence] qanxgcg-id:Z95399 [-outseq] test.out -auto
seqret [-sequence] qanxgcg-id:AL034557 [-outseq] test.out -auto
seqret [-sequence] qanxgcg-id:AL034557 [-outseq] test.out -auto
seqret [-sequence] qanxgcg-id:AL035476 [-outseq] test.out -auto
seqret [-sequence] qanxgcg-id:U18997 [-outseq] test.out -auto
seqret [-sequence] "qanxgcg:*" [-outseq] test.out -auto
seqret [-sequence] "qanxgcg:a*" [-outseq] test.out -auto
seqret [-sequence] qanxgcgexc-id:x65923 [-outseq] test.out -auto
seqret [-sequence] "qanxgcgexc-id:*" [-outseq] test.out -auto
seqret [-sequence] qanxgcginc-id:j01636 [-outseq] test.out -auto
seqret [-sequence] "qanxgcginc-id:*" [-outseq] test.out -auto
dbxgcg -fields id,acc,sv,des,key,org -dbname embl -dbresource emblresource -idformat embl -directory ../../embl
seqret [-sequence] qanxgcgall-id:x65923 [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-id:AB000095 [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-id:AB009062 [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-id:Z95399 [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-id:Z69719 [-outseq] test.out -auto
seqret [-sequence] qanxgcgall:L07770 [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-id:Z95399 [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-id:AL034557 [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-id:AC017364 [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-id:AL035476 [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-id:AL035476 [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall:*" [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall:a*" [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-acc:X65923 [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall-acc:*" [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall-acc:x*" [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-sv:D00596.1 [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall-sv:*" [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall-sv:x*" [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-des:fau [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall-des:*" [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall-des:m*" [-outseq] test.out -auto
seqret [-sequence] qanxgcgall-key:rhodopsin [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall-key:*" [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall-key:m*" [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall-key:lacy gene" [-outseq] test.out -osformat2 embl -auto
seqret [-sequence] qanxgcgall-org:Mus [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall-org:*" [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall-org:*" [-outseq] test.out -auto
seqret [-sequence] "qanxgcgall-org:mus*" [-outseq] test.out -auto
dbxgcg -dbname pir -dbresource pirresource -idformat pir -directory ../../pir
seqret [-sequence] qaxpir-id:cchu [-outseq] test.out -auto
seqret [-sequence] qaxpir-id:A31558 [-outseq] test.out -auto
seqret [-sequence] qaxpir-id:A32902 [-outseq] test.out -auto
seqret [-sequence] qaxpir-id:S29350 [-outseq] test.out -auto
seqret [-sequence] qaxpir-id:S11172 [-outseq] test.out -auto
seqret [-sequence] qaxpir:A00001 [-outseq] test.out -auto
seqret [-sequence] "qaxpir:*" [-outseq] test.out -auto
seqret [-sequence] "qaxpir:c*" [-outseq] test.out -auto
seqret [-sequence] qaxpirexc-id:S11172 [-outseq] test.out -auto
seqret [-sequence] "qaxpirexc-id:*" [-outseq] test.out -auto
seqret [-sequence] qaxpirinc-id:cchu [-outseq] test.out -auto
seqret [-sequence] "qaxpirinc-id:*" [-outseq] test.out -auto
dbxgcg -fields id,acc,des,key,org -dbname pir -dbresource pirresource -idformat pir -directory ../../pir
seqret [-sequence] qaxpirall-id:cchu [-outseq] test.out -auto
seqret [-sequence] qaxpirall-id:A31558 [-outseq] test.out -auto
seqret [-sequence] qaxpirall-id:A32902 [-outseq] test.out -auto
seqret [-sequence] qaxpirall-id:S29350 [-outseq] test.out -auto
seqret [-sequence] qaxpirall-id:S11172 [-outseq] test.out -auto
seqret [-sequence] qaxpirall:A00001 [-outseq] test.out -auto
seqret [-sequence] "qaxpirall:*" [-outseq] test.out -auto
seqret [-sequence] "qaxpirall:c*" [-outseq] test.out -auto
seqret [-sequence] qaxpirall-acc:A04605 [-outseq] test.out -auto
seqret [-sequence] "qaxpirall-acc:*" [-outseq] test.out -auto
seqret [-sequence] "qaxpirall-acc:s*" [-outseq] test.out -auto
seqret [-sequence] qaxpirall-des:cytochrome [-outseq] test.out -auto
seqret [-sequence] "qaxpirall-des:*" [-outseq] test.out -auto
seqret [-sequence] "qaxpirall-des:p*" [-outseq] test.out -auto
seqret [-sequence] qaxpirall-key:polymorphism [-outseq] test.out -auto
seqret [-sequence] "qaxpirall-key:*" [-outseq] test.out -auto
seqret [-sequence] "qaxpirall-key:?*" [-outseq] test.out -auto
entret [-sequence] "qaxpirall-key:blocked amino end" [-outfile] test.out -auto
seqret [-sequence] "qaxpirall-key:m*" [-outseq] test.out -auto
seqret [-sequence] "qaxpirall-org:drosophila melanogaster" [-outseq] test.out -auto
seqret [-sequence] "qaxpirall-org:*" [-outseq] test.out -auto
seqret [-sequence] "qaxpirall-org:s*" [-outseq] test.out -auto
seqret [-sequence] "qaxpirall-org:mus*" [-outseq] test.out -auto
dbxstat -dbname edam -field ns
dbxedam -directory ../../data/
ontoget [-oboterms] tedam:0003 -obsolete -outfile test.out
ontoget [-oboterms] tedam:3016 -outfile test.out
dbxobo -dbname edam -dbresource oboresource -directory ../../data/ -filenames EDAM.obo -fields "*"
ontoget [-oboterms] tobo:0003 -obsolete -outfile test.out
ontoget [-oboterms] tobo:3016 -outfile test.out
dbxresource [-dbname] drcat -standardname drcat -dbresource drcatresource -directory ../../data/ -filenames DRCAT.dat
dbxtax -directory ../../data/taxonomy
dbxuncompress [-dbname] embl -indexdir . -field des
dbxcompress [-dbname] embl -indexdir . -field des
dbtell [-database] tsw
dbxreport -indexdir . -dbname embl -fields id,acc
degapseq [-sequence] ../../data/dnagap.fasta [-outseq] nogaps.seq
descseq -sequence ../../data/dna.text -outseq clone23.seq -name myclone23
descseq -sequence ../../data/dna.text -outseq xy24.seq -description "This is my clone number 244"
descseq -sequence ../../data/dna.text -outseq est4.seq -description " (submitted)" -append
diffseq [-asequence] tembl:x65923 [-bsequence] tembl:ay411291
diffseq [-asequence] asis::cccctacggggcaaaaagtttt [-bsequence] asis::ccccaggggtaaaaatttt -wordsize 4 -sid1 fwda -sid2 fwdb
diffseq [-asequence] asis::cccctacggggcaaaaagtttt [-bsequence] asis::aaaatttttacccctgggg -wordsize 4 -sid1 fwda -sid2 revb -sreverse2
diffseq [-asequence] asis::aaaactttttgccccgtagggg [-bsequence] asis::ccccaggggtaaaaatttt -wordsize 4 -sid1 reva -sid2 fwdb -sreverse1
diffseq [-asequence] asis::aaaactttttgccccgtagggg [-bsequence] asis::aaaatttttacccctgggg -wordsize 4 -sid1 reva -sid2 revb -sreverse1 -sreverse2
distmat [-sequence] ../../data/pax.align -protmethod 2
dotmatcher [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human -graph cps
dotmatcher [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human -graph data
dotmatcher [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human -stretch -xygraph data
dotmatcher [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human -xygraph ps -stretch
dotpath [-asequence] tembl:AF129756 [-bsequence] tembl:BA000025 -wordsize 20 -graph cps -overlaps
dotpath [-asequence] tembl:AF129756 [-bsequence] tembl:BA000025 -wordsize 20 -graph data
dottup [-asequence] tembl:j01636 [-bsequence] tembl:v00294 -wordsize 6 -gtitle "v00294 vs j01636" -graph cps
dottup [-asequence] tembl:j01636 [-bsequence] tembl:v00294 -wordsize 6 -gtitle "v00294 vs j01636" -graph data
dottup [-asequence] tembl:j01636 [-bsequence] tembl:v00294 -wordsize 6 -gtitle "v00294 vs j01636" -stretch -xygraph data
dottup [-asequence] tembl:j01636 [-bsequence] tembl:v00294 -wordsize 6 -gtitle "v00294 vs j01636" -xygraph ps -stretch
dreg -sequence tembl:x13776 -pattern ggtacc
dreg -sid test -sequence asis::TTTATTTTCTATGGGCCGGTATCTTG -pattern "TT.{0,22}TT"
dreg -rformat listfile -sequence asis::caaggttccaacc -pattern aa -outfile test.out
dreg -rformat listfile -sreverse -sequence asis::caaggttccaacc -pattern aa -outfile test.out
drfinddata [-query] virus
drfindformat [-query] fasta
drfindid [-query] "uniprot accession"
drfindresource [-query] pathogen
drget [-resources] drcat:uniprot
drtext [-resources] drcat:uniprot
edamdef [-query] multiple
edamdef [-query] multiple -subclasses
edamdef [-query] multiple -nosubclasses
edamhasinput [-identifier] sequence
edamhasoutput [-identifier] sequence
edamisformat [-identifier] sequence
edamisid [-identifier] sequence
edamname [-query] "*sequence_set*"
edamname [-query] "*sequence_set*" -subclasses
edialign -sequences ../../data/vtest.seq
einverted [-sequence] tembl:d00596
embossdata 
embossdata -showall
embossdata [-filename] EPAM60
embossdata -fetch [-filename] Epepcoil.dat
embossversion 
emowse -sequence "tsw:*" -infile ../../data/test.mowse
emma -sequence ../../data/globins.fasta
emma -sequence ../../data/tropomyosin.fasta
entret [-sequence] tembl:x65923
entret -auto [-sequence] ../../data/dna.acedb [-outfile] test.out
entret -auto [-sequence] ../../data/dna.acedb -sformat1 acedb [-outfile] test.out
entret -auto [-sequence] ../../data/dna.codata [-outfile] test.out
entret -auto [-sequence] ../../data/dna.codata -sformat1 codata [-outfile] test.out
entret -auto [-sequence] ../../data/dna.embl [-outfile] test.out
entret -auto [-sequence] ../../data/xb63c7.s1.exp -sformat1 experiment [-outfile] test.out
entret -auto [-sequence] ../../data/xb63c7.s1.exp [-outfile] test.out
entret -auto [-sequence] ../../data/dna.embl -sformat1 embl [-outfile] test.out
entret -auto [-sequence] ../../data/dna.fasta [-outfile] test.out
entret -auto [-sequence] ../../data/dna.fasta -sformat1 fasta [-outfile] test.out
entret -auto [-sequence] ../../data/dna.gcg [-outfile] test.out
entret -auto [-sequence] ../../data/dna.gcg -sformat1 gcg [-outfile] test.out
entret -auto [-sequence] ../../data/dna.gcg8 [-outfile] test.out
entret -auto [-sequence] ../../data/dna.gcg8 -sformat1 gcg8 [-outfile] test.out
entret -auto [-sequence] ../../data/dna.genbank [-outfile] test.out
entret -auto [-sequence] ../../data/dna.genbank -sformat1 genbank [-outfile] test.out
entret -auto [-sequence] ../../data/dna.ig -sformat1 ig [-outfile] test.out
entret -auto [-sequence] ../../data/dna.ncbi [-outfile] test.out
entret -auto [-sequence] ../../data/dna.ncbi -sformat1 ncbi [-outfile] test.out
entret -auto [-sequence] ../../data/prot.nbrf [-outfile] test.out
entret -auto [-sequence] ../../data/prot.nbrf -sformat1 nbrf [-outfile] test.out
entret -auto [-sequence] ../../data/dna.text [-outfile] test.out
entret -auto [-sequence] ../../data/dna.text -sformat1 raw [-outfile] test.out
entret -auto [-sequence] ../../data/dna.staden [-outfile] test.out
entret -auto [-sequence] ../../data/dna.staden -sformat1 staden [-outfile] test.out
entret -auto [-sequence] ../../data/dna.strider [-outfile] test.out
entret -auto [-sequence] ../../data/dna.strider -sformat1 strider [-outfile] test.out
entret -auto [-sequence] ../../data/dna.text [-outfile] test.out
entret -auto [-sequence] ../../data/dna.text -sformat1 textonly [-outfile] test.out
entret -auto [-sequence] ../../data/abiview.abi [-outfile] test.out
entret -auto [-sequence] ../../data/test.selex -sformat1 selex [-outfile] test.out
entret -auto [-sequence] ../../data/dna.m-acedb [-outfile] test.out
entret -auto [-sequence] ../../data/dna.m-acedb -sformat1 acedb [-outfile] test.out
entret -auto [-sequence] ../../data/dna.m-codata [-outfile] test.out
entret -auto [-sequence] ../../data/dna.m-codata -sformat1 codata [-outfile] test.out
entret -auto [-sequence] ../../data/dna.m-embl [-outfile] test.out
entret -auto [-sequence] ../../data/dna.m-embl -sformat1 embl [-outfile] test.out
entret -auto [-sequence] ../../data/dna.m-fasta [-outfile] test.out
entret -auto [-sequence] ../../data/dna.m-fasta -sformat1 fasta [-outfile] test.out
entret -auto [-sequence] ../../data/dna.msf [-outfile] test.out
entret -auto [-sequence] ../../data/dna.msf -sformat1 msf [-outfile] test.out
entret -auto [-sequence] ../../data/dna.msf8 [-outfile] test.out
entret -auto [-sequence] ../../data/dna.msf8 -sformat1 msf [-outfile] test.out
entret -auto [-sequence] ../../data/dna.m-ncbi [-outfile] test.out
entret -auto [-sequence] ../../data/dna.m-ncbi -sformat1 ncbi [-outfile] test.out
entret -auto [-sequence] ../../data/dna.phylip [-outfile] test.out
entret -auto [-sequence] ../../data/dna.phylip -sformat1 phylip [-outfile] test.out
entret -auto [-sequence] ../../data/dna.phylip3 [-outfile] test.out
entret -auto [-sequence] ../../data/dna.phylip3 -sformat1 phylip [-outfile] test.out
entret -auto [-sequence] ../../data/dna.m-strider [-outfile] test.out
entret -auto [-sequence] ../../data/dna.m-strider -sformat1 strider [-outfile] test.out
entret -auto [-sequence] ../../data/dna.nonewline [-outfile] test.out
epestfind -graph cps -invalid -sequence ../../data/exu2_drops.embl
eprimer3 [-sequence] tembl:x65921 [-outfile] x65921.eprimer3 -explainflag
eprimer32 [-sequence] tembl:x65921 [-outfile] x65921.eprimer32 -explainflag
equicktandem -noorigfile -sequence tembl:L46634
est2genome -estsequence tembl:h45989 -genomesequence tembl:z69719
est2genome -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -align -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -align -space 2 -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -align -best -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -mode both -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -sreverse -mode both -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -mode forward -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -mode reverse -sreverse1 -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -mode reverse -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -nousesplice -mode both -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -sreverse -nousesplice -mode both -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -nousesplice -mode forward -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -nousesplice -mode reverse -sreverse1 -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
est2genome -nousesplice -mode reverse -estsequence ../../data/pax6_cdna.fasta -genomesequence ../../data/z83307.seq
etandem -noorigfile -sequence tembl:L46634 -minrepeat 6
extractalign [-sequence] ../../data/dna.msf [-outseq] result.seq -regions 11-30
extractfeat [-sequence] tembl:x65921 -type exon
extractfeat [-sequence] tembl:x65921 -type exon -before 10 -after 10
extractfeat [-sequence] "tembl:*" -type exon -before 5 -after -5
extractfeat [-sequence] tembl:x65921 -type CDS -join
extractfeat [-sequence] "tsw:*" -type MOD_RES -value "phosphoserine*" -before 3 -after -4
extractseq [-sequence] tembl:x65923 [-outseq] result.seq -regions 10-20
extractseq [-sequence] tembl:x65921 [-outseq] result2.seq -regions "10-20 30-45 533-537"
extractseq [-sequence] tembl:x65921 -regions 782..856,951..1095,1557..1612,1787..1912 [-outseq] stdout
extractseq [-sequence] tembl:x65921 -regions 782..856,951..1095,1557..1612,1787..1912 [-outseq] stdout -separate
featcopy -features ../../data/paamir.gff3
featmerge -afeatures tsw:actb1_takru -bfeatures ../antigenic-keep/actb1_takru.antigenic
feattext -features ../../data/paamir.gff3
featreport -sequence ../../data/paamir.fasta -features ../../data/paamir.gff -outfile test.out
findkm -graphlb cps -infile ../../data/enztest.dat
freak [-seqall] tembl:x65923
fuzznuc -sequence tembl:L46634 -pattern AAGCTT
fuzznuc -complement -sequence asis::GATAAAAAAAAAAAAAAAAAAAAAAAAGATAAAATATCGATA -pattern GATA -outfile test.out
fuzznuc -sequence tembl:L46634 -pattern @../../data/nucseq.pat
fuzznuc -pname test -sequence tembl:L46634 -pattern @../../data/nucsimple.pat
fuzznuc -sequence tembl:L46634 -pattern @../../data/nuc.pat
fuzznuc -pattern @../../data/barcodes.pat -pmismatch 1 -sequence ../../data/barcodes.seq
fuzzpro -sequence "tsw:*" -pattern "[FY]-[LIV]-G-[DE]-E-A-Q-x-[RKQ](2)-G"
fuzztran -options -sequence tembl:Z46957 -pattern RA -frame f
seqret -feature [-sequence] ../../data/feat.fasta -ufo1 ../../data/feat.emft [-outseq] embl::test.out -auto
seqret -feature [-sequence] ../../data/feat.fasta -ufo1 ../../data/feat.emft [-outseq] gff::test.out -auto
seqret -feature [-sequence] ../../data/feat.fasta -ufo1 ../../data/feat.emft [-outseq] gb::test.out -auto
seqret -feature [-sequence] ../../data/feat.fasta -ufo1 ../../data/feat.gbft [-outseq] em::test.out -auto
seqret -feature [-sequence] ../../data/feat.fasta -ufo1 ../../data/feat.gbft [-outseq] em::test.out -auto
seqret -feature [-sequence] ../../data/featprot.fasta -ufo1 pir::../../data/feat.pir [-outseq] sw::test.out -auto
seqret -feature [-sequence] ../../data/featprot.fasta -ufo1 ../../data/feat.pir [-outseq] sw::test.out -auto
seqret -feature [-sequence] ../../data/featprot.fasta -ufo1 nbrf::../../data/feat.pir [-outseq] sw::test.out -auto
seqret -feature [-sequence] ../../data/featprot.fasta -ufo1 ../../data/feat.pir [-outseq] gff::test.out -auto
seqret -feature [-sequence] ../../data/featprot.fasta -ufo1 ../../data/feat.pir [-outseq] pir::test.out -auto
seqret -feature [-sequence] ../../data/protein.refseqp [-outseq] sw::test.out -auto
seqret -feature [-sequence] tsw:laci_ecoli [-outseq] sw::test.out -auto
seqret -feature [-sequence] tsw:laci_ecoli [-outseq] pir::test.out -auto
seqret -feature [-sequence] tsw:laci_ecoli [-outseq] gff::test.out -auto
garnier -sequence tsw:amic_pseae
garnier -sbegin 51 -send 120 -sequence tsw:amic_pseae
garnier -sequence asis::GSHQERPL
geecee [-sequence] tembl:L46634
getorf -minsize 300 -sequence tembl:v00294
godef [-query] glycoprotein
goname [-query] glycoprotein
helixturnhelix -sequence tsw:laci_ecoli
hmoment [-seqall] tsw:hbb_human
iep [-sequence] tsw:laci_ecoli
iep [-sequence] tsw:ifna2_human -disulphides 2 -lysinemodified 2
iep [-sequence] tsw:ifna2_human
infoalign [-sequence] ../../data/globins.msf
infoalign [-sequence] ../../data/globins.msf -nousa
infoalign [-sequence] ../../data/globins.msf -only -name -seqlength
infoalign [-sequence] ../../data/globins.msf -only -name -gapcount -diffcount
infoalign [-sequence] ../../data/globins.msf -only -name -gaps
infoalign [-sequence] ../../data/globins.msf -html
infoalign [-sequence] ../../data/globins.msf -refseq 1
infoalign -auto [-sequence] @../../data/eclac.list -outfile test.out
infoalign -auto [-sequence] tembl:v00296 -outfile test.out
infobase 
inforesidue 
infoseq [-sequence] tembl:x13776
infoseq [-sequence] tembl:x13776 -nousa
infoseq [-sequence] tembl:x13776 -only -name -length
infoseq [-sequence] tembl:x13776 -only -description
infoseq [-sequence] tembl:x13776 -only -type
infoseq [-sequence] tembl:x13776 -html
isochore [-sequence] tembl:AF129756 -graph cps
jaspextract -directory ../../data/jaspar
jaspscan -both -sequence tembl:m23100 -matrices ma0079.1
lindna -graphout cps -infile ../../data/data.linp
listor [-firstsequences] ../../data/file1 [-secondsequences] ../../data/file2
listor [-firstsequences] ../../data/file1 [-secondsequences] ../../data/file2 -operator and
listor [-firstsequences] ../../data/file1 [-secondsequences] ../../data/file2 -operator xor
listor [-firstsequences] ../../data/file1 [-secondsequences] ../../data/file2 -operator not
makenucseq 
makenucseq -codonfile Epseae.cut
makeprotseq 
marscan -sequence tembl:u01317
maskambignuc -sequence ../../data/ambignuc.fasta
maskambigprot -sequence ../../data/ambigprot.fasta
maskfeat [-sequence] tembl:ab000360
maskfeat [-sequence] tembl:ab000360 -tolower -supper
maskseq [-sequence] ../../data/prot.fasta [-outseq] prot2.seq -regions 10-12
maskseq [-sequence] ../../data/prot.fasta [-outseq] prot2.seq -regions 20-30 -maskchar x
maskseq [-sequence] ../../data/prot.fasta [-outseq] prot2.seq -regions 20-23,34-45,88-90
maskseq [-sequence] ../../data/prot.fasta [-outseq] prot2.seq -regions 20-23,34-45,88-90 -tolower
matcher [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human
matcher [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human -alternatives 10
megamerger [-asequence] tembl:v00295 [-bsequence] tembl:v00296 -outfile report
merger -asequence tembl:v00295 -bsequence tembl:x51872
msbar -sequence tembl:j01636 -count 5 -point 4
mwcontam -files ../../data/mw1.dat,../../data/mw2.dat,../../data/mw3.dat
mwfilter -infile ../../data/molwts.dat
needle [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human
needleall -minscore 40 -stdout -auto [-asequence] ../../data/illumina_adapter_primer.fa [-bsequence] ../../data/test1_illumina.fastq
newcpgreport -sequence tembl:u68037
newcpgseek -sequence tembl:u68037
newseq -name cytoc -description "fragment of cytochrome c" -type p -sequence KKKEERADLIAY -outseq swiss::mycc.pep
nohtml -infile ../../data/webfile.html
noreturn [-infile] ../../data/abc.dat
noreturn [-infile] ../../data/abc.dat -system pc
noreturn [-infile] ../../data/abc.dat -system mac
nospace -infile ../../data/seqspace.txt
notab -infile ../../data/tabfile.txt
notseq -sequence ../../data/globins.fasta -exclude myg_phyca,lgb2_luplu -outseq mydata.seq
notseq -junkoutseq hb.seq -sequence ../../data/globins.fasta -exclude "hb*" -outseq mydata.seq
nthseq -sequence @../../data/eclac.list -number 2
nthseqset -osformat phylip -sequence ../../data/globins-all.phy -number 2
octanol -sequence tsw:opsd_human -graph ps
octanol -noplotdifference -sequence tsw:opsd_human -graph ps
oddcomp -sequence "tsw:*" -infile ../../data/oddcomp.comp -outfile out.odd
ontocount [-oboterms] edam:1234
ontocount [-oboterms] edam:1234 -subclasses
ontoget [-oboterms] edam:1234
ontoget [-oboterms] edam:0850 -subclasses
ontogetcommon [-oboterms] "edam:{0097,0640}"
ontogetdown [-oboterms] edam:0850
ontogetobsolete [-oboterms] edam:alignment -subclasses
ontogetroot [-oboterms] edam:1234
ontogetsibs [-oboterms] edam:0575
ontogetup [-oboterms] edam:1234
ontoisobsolete [-oboterms] edam:0195
ontoisobsolete [-oboterms] edam:0575
ontotext [-oboterms] edam:1234
ontotext [-oboterms] edam:0850 -subclasses
palindrome -sequence tembl:d00596 -minpallen 15
pasteseq [-asequence] tsw:amir_pseae [-bsequence] tsw:flav_nossm -pos 67
pasteseq [-asequence] tsw:amir_pseae [-bsequence] tsw:flav_nossm -outseq amirplus.seq -pos 67
pasteseq [-asequence] tsw:amir_pseae [-bsequence] tsw:flav_nossm -outseq amirplus.seq -pos 0
patmatdb -sequence "tsw:*" -motif "st[ty]s"
pepcoil -sequence tsw:gcn4_yeast
pepdigest -seqall tsw:opsd_human
pepdigest -sbegin 10 -send 250 -seqall tsw:opsd_human
pepinfo -sequence tsw:opsd_human -graph cps
pepinfo -nohydropathyplot -sequence tsw:opsd_human -graph cps
pepinfo -nogeneralplot -sequence tsw:opsd_human -graph cps
pepnet -sask -sequence tsw:gcn4_yeast -sbegin_sequence 253 -send_sequence 274 -graph cps
pepnet -sask -graph data -sequence tsw:gcn4_yeast -sbegin_sequence 253 -send_sequence 274
pepstats -sequence tsw:laci_ecoli
makeprotseq -pepstatsfile ../pepstats-keep/laci_ecoli.pepstats
pepwheel [-sequence] tsw:hbb_human -send1 30 -graph cps
pepwheel [-sequence] tsw:hbb_human -send1 30 -graph data
pepwindow [-sequence] tsw:opsd_human -graph cps
pepwindow [-sequence] tsw:opsd_human -graph ps
pepwindow [-sequence] tsw:opsd_human -datafile chop780101 -graph ps
pepwindowall [-sequences] ../../data/globins.msf -gxtitle "Base Number" -gytitle hydropathy -graph cps
plotcon -sformat msf [-sequences] ../../data/globins.msf -graph cps
plotcon -sformat msf [-sequences] ../../data/globins.msf -graph data
plotorf -sequence tembl:x13776 -graph cps
plotorf -start ATT,ATC,ATA,ATG,GTG -stop TAA,TAG,AGA,AGG -sequence ../../data/mito.seq -graph cps
polydot [-sequences] ../../data/globins.fasta -gtitle "Polydot of globins.fasta" -graph cps
polydot [-sequences] ../../data/globins.fasta -gtitle "Polydot of globins.fasta" -graph data
polydot [-sequences] ../../data/globins.fasta -gtitle "Polydot of globins.fasta" -graph cps -dumpfeat
preg -sequence "tsw:*_rat" -pattern "IA[QWF]A"
prettyplot -blocksperline 5 -boxcol -consensus -ratio 0.59 -sequences ../../data/globins.msf -graph cps
prettyplot [-sequences] ../../data/globins.msf -ratio 0.59 -docolour -graph cps
prettyplot -blocksperline 5 -boxcol -consensus -ratio 0.59 -graph data -sequences ../../data/globins.msf
prettyseq -sequence tembl:x13776 -range 135-1292
primersearch [-seqall] tembl:z52466 -infile ../../data/primers
primersearch [-seqall] tembl:z52466 -infile ../../data/primers -mismatchpercent 20
printsextract -infile ../../data/prints.test
profit -infile ../../data/outfile.prophecy -sequence "tsw:*"
prophecy -sequence ../../data/globins.msf -name globins
prophecy -sequence ../../data/globins.msf -type g -name globins
prophet -sequence "tsw:h*" -infile ../../data/globins.gribskov
prosextract -prositedir ../../data/
patmatmotifs -full -sequence tsw:opsd_human
pscan -sequence tsw:opsd_human
psiphi [-infile] ../../data/1hmp_a.ccf -chainnumber 1 -startresiduenumber 5 -finishresiduenumber 85
rebaseextract -infile ../../data/withrefm -protofile ../../data/proto
recoder -sequence tembl:x65923 -enzymes EcoRII
recoder -sshow -tshow -sequence tembl:x65923 -enzymes EcoRII
redata -enzyme BamHI
refseqget -oformat embl -refsequence tembl:em498477 -outfile test.out
remap -notranslation -sbegin 1 -send 60 -sequence tembl:j01636 -enzymes taqi,bsu6i,acii,bsski
remap -notranslation -sbegin 1 -send 60 -sequence tembl:j01636
remap -notranslation -sbegin 1 -send 60 -nolimit -sequence tembl:j01636
remap -notranslation -sbegin 1 -send 60 -flatreformat -sequence tembl:j01636
restover -sequence tembl:x65923 -seqcomp cg
restrict -sequence tembl:x65923
restrict -fragments -sequence tembl:x65923
restrict -solofragment -sequence tembl:x65923
restrict -enzymes BseYI -sequence asis:GCTGGGTTTCCCAGC
revseq [-sequence] tembl:x65923 [-outseq] x65923.rev
revseq [-sequence] tembl:x65923 [-outseq] x65923.rev -noreverse
revseq [-sequence] tembl:x65923 [-outseq] x65923.rev -nocomplement
seealso -search matcher
seqcount [-sequence] "tembl:*" -outfile tembl.seqcount
seqmatchall -sequence @../../data/eclac.list -wordsize 15
seqret -auto [-sequence] tembl:H45989 [-outseq] test.out
seqret -auto [-sequence] tembl-id:U23808 [-outseq] test.out
seqret -auto [-sequence] tembl-acc:U23808 [-outseq] test.out
seqret -auto [-sequence] tembl-acc:AB000095 [-outseq] test.out
seqret -auto [-sequence] tembl-acc:Z52466 [-outseq] test.out
seqret -auto [-sequence] tembl-acc:Z69719 [-outseq] test.out
seqret -auto [-sequence] @../../data/good.list [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] @../../data/bad.list [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] @../../data/ugly.list [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] @../../data/uglyfirst.list [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] @../../data/uglylast.list [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] @../../data/uglyall.list [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] @../../data/testdb.list [-outseq] test.out -osformat2 fasta
seqret -auto [-sequence] @../../data/testdb.list -sbegin1 11 [-outseq] test.out -osformat2 fasta
seqret -auto [-sequence] @../../data/testdb.list -send1 -11 [-outseq] test.out -osformat2 fasta
seqret -auto [-sequence] @../../data/testdb.list -sbegin1 11 -send1 -11 [-outseq] test.out -osformat2 fasta
seqret -auto [-sequence] @../../data/testdb.list -sbegin1 11 -send1 -11 -sreverse1 [-outseq] test.out -osformat2 fasta
seqretset -auto [-sequence] @../../data/testdb.list [-outseq] test.out -osformat2 fasta
seqretset -auto [-sequence] @../../data/testdb.list -sbegin1 11 [-outseq] test.out -osformat2 fasta
seqretset -auto [-sequence] @../../data/testdb.list -send1 -11 [-outseq] test.out -osformat2 fasta
seqretset -auto [-sequence] @../../data/testdb.list -sbegin1 11 -send1 -11 [-outseq] test.out -osformat2 fasta
seqretset -auto [-sequence] @../../data/testdb.list -sbegin1 11 -send1 -11 -sreverse1 [-outseq] test.out -osformat2 fasta
seqret -auto [-sequence] ../../data/dna.acedb [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] acedb::../../data/dna.acedb [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.acedb -sformat1 acedb [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.codata [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] codata::../../data/dna.codata [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.codata -sformat1 codata [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] embl::../../data/dna.embl [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.embl -sformat1 embl [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.embl -sformat1 em [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/xb63c7.s1.exp [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] experiment::../../data/xb63c7.s1.exp [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/xb63c7.s1.exp -sformat1 experiment [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.fasta [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] fasta::../../data/dna.fasta [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.fasta -sformat1 fasta [-outseq] test.out -osformat2 embl
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/dna.fasta -snucleotide1 -sformat1 fasta -outfile test.out
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/prot.fasta -sprotein1 -sformat1 fasta -outfile test.out
seqret -auto [-sequence] ../../data/fastqall.sanger -sformat1 fastq [-outseq] test.out -osformat2 experiment
seqret -auto [-sequence] ../../data/fastqall.sanger [-outseq] test.out -osformat2 experiment
seqret -auto [-sequence] ../../data/fastqall.illumina13 -sformat1 fastq-illumina [-outseq] test.out -osformat2 experiment
seqret -auto [-sequence] ../../data/fastqall.sanger -sformat1 fastq-sanger [-outseq] test.out -osformat2 experiment
seqret -auto [-sequence] ../../data/fastqall.solexa -sformat1 fastq-solexa [-outseq] test.out -osformat2 experiment
seqret -auto [-sequence] ../../data/dna.gcg [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] gcg::../../data/dna.gcg [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.gcg -sformat1 gcg [-outseq] test.out -osformat2 embl
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/dna.gcg -snucleotide1 -sformat1 gcg -outfile test.out
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/prot.gcg -sformat1 gcg -outfile test.out
seqret -auto [-sequence] ../../data/dna.gcg8 [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] gcg8::../../data/dna.gcg8 [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.gcg8 -sformat1 gcg8 [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.genbank [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] genbank::../../data/dna.genbank [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.genbank -sformat1 genbank [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.genbank -sformat1 gb [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.genbank -sformat1 ddbj [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/acn78416.genpept -sformat1 genpept [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/ncbi.gifasta -sformat1 gifasta [-outseq] test.out -osformat2 swiss
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/ncbinuc.gifasta -snucleotide1 -sformat1 gifasta -outfile test.out
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/ncbi.gifasta -sprotein1 -sformat1 gifasta -outfile test.out
seqret -auto [-sequence] ../../data/dna.ig [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ig::../../data/dna.ig [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.ig -sformat1 ig [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.ncbi [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ncbi::../../data/dna.ncbi [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.ncbi -sformat1 ncbi [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/prot.nbrf [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] nbrf::../../data/prot.nbrf [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/prot.nbrf -sformat1 nbrf [-outseq] test.out -osformat2 swiss
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/dna.nbrf -snucleotide1 -sformat1 nbrf -outfile test.out
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/prot.nbrf -sprotein1 -sformat1 nbrf -outfile test.out
seqret -auto [-sequence] ../../data/prot.nbrf -sformat1 pir [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/protalign.nxs [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] nexus::../../data/protalign.nxs [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/protalign.nxs -sformat1 nexus [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/1tos.pdb -sformat1 pdb [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/133d.pdb -sformat1 pdbnuc [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/133d.pdb -sformat1 pdbnucseq [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/1tos.pdb -sformat1 pdbseq [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/1tos.pdb [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/ncbi.gifasta -sformat1 pearson [-outseq] test.out -osformat2 swiss
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/ncbinuc.gifasta -snucleotide1 -sformat1 pearson -outfile test.out
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/ncbi.gifasta -sprotein1 -sformat1 pearson -outfile test.out
seqret -auto [-sequence] ../../data/dna.text [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] raw::../../data/dna.text [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.text -sformat1 raw [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/pao-short.refseq -sformat1 refseq [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/pao-short.refseq -sformat1 genbank [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/protein.refseqp -sformat1 refseqp [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/xxx.sam -sformat1 sam [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/xxx.sam [-outseq] test.out -osformat2 embl
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/xxx.sam -sformat1 sam -outfile test.out
seqret -auto [-sequence] ../../data/dna.staden [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] staden::../../data/dna.staden [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.staden -sformat1 staden [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.strider [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] strider::../../data/dna.strider [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.strider -sformat1 strider [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/amir.swiss -sformat1 swiss [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/amir.swiss -sformat1 sw [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/amir.swiss -sformat1 swissprot [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/amir.swiss [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/dna.text [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] textonly::../../data/dna.text [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.text -sformat1 textonly [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/abiview.abi [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] abi::../../data/abiview.abi [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/abiview.abi -sformat1 abi [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.text [-outseq] test.out -sformat unknown -osformat embl
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/dna.text -snucleotide1 -outfile test.out -sformat unknown
infoseq -nocolumns -delimiter \t -auto [-sequence] ../../data/prot.text -sprotein1 -outfile test.out -sformat unknown
seqret -auto [-sequence] selex::../../data/test.selex [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/test.selex -sformat1 selex [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-acedb [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] acedb::../../data/dna.m-acedb [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-acedb -sformat1 acedb [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/globins.m-aln -sformat1 clustal [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/globins.m-aln [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/globins.m-aln -sformat1 aln [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/globins.m-aln [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] aln::../../data/globins.m-aln [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/globins.m-aln -sformat1 aln [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/dna.m-clustal [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] clustal::../../data/dna.m-clustal [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-clustal -sformat1 clustal [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-codata [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] codata::../../data/dna.m-codata [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-codata -sformat1 codata [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] embl::../../data/dna.m-embl [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-embl -sformat1 embl [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-fasta [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] fasta::../../data/dna.m-fasta [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-fasta -sformat1 fasta [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.fitch [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] fitch::../../data/dna.fitch [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.fitch -sformat1 fitch [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] mase::../../data/test.mase [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/test.mase -sformat1 mase [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/dna.msf [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] msf::../../data/dna.msf [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.msf -sformat1 msf [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.msf8 [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] msf::../../data/dna.msf8 [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.msf8 -sformat1 msf [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-ncbi [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ncbi::../../data/dna.m-ncbi [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-ncbi -sformat1 ncbi [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.phylip -sformat1 phylip [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.phylip [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.phylip [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] phylip::../../data/dna.phylip [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.phylip -sformat1 phylip [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.phylip3 [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] phylipnon::../../data/dna.phylip3 [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.phylip3 -sformat1 phylipnon [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] stockholm::../../data/PF00032_seed.sth [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/PF00032_seed.sth -sformat1 stockholm [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] stockholm::../../data/PF00032_seed.pfam2 [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/PF00032_seed.pfam2 -sformat1 stockholm [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] stockholm::../../data/PF00032_seed.pfam3 [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/PF00032_seed.pfam3 -sformat1 stockholm [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] stockholm::../../data/dosfile.sth [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/dosfile.sth -sformat1 stockholm [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/dna.m-strider [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] strider::../../data/dna.m-strider [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-strider -sformat1 strider [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.nonewline [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.fasta -sformat1 badformat [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] badformat::../../data/dna.fasta [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.embl [-outseq] acedb::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 acedb
seqret -auto [-sequence] ../../data/dna.embl [-outseq] asn1::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 asn1
seqret -auto [-sequence] ../../data/dna.embl [-outseq] codata::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 codata
seqret -auto [-sequence] ../../data/dna.embl [-outseq] debug::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 debug
seqret -auto [-sequence] ../../data/dna.embl [-outseq] embl::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.embl [-outseq] experiment::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 experiment
seqret -auto [-sequence] ../../data/dna.embl [-outseq] fasta::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 fasta
seqret -auto [-sequence] ../../data/dna.embl [-outseq] fitch::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 fitch
seqret -auto [-sequence] ../../data/dna.embl [-outseq] gcg::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 gcg
seqret -auto [-sequence] ../../data/dna.embl [-outseq] genbank::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 genbank
seqret -auto [-sequence] ../../data/dna.embl [-outseq] gff::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 gff
seqret -auto [-sequence] ../../data/dna.embl [-outseq] ig::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 ig
seqret -auto [-sequence] ../../data/dna.embl [-outseq] ncbi::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 ncbi
seqret -auto [-sequence] ../../data/dna.embl [-outseq] staden::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 staden
seqret -auto [-sequence] ../../data/dna.embl [-outseq] strider::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 strider
seqret -auto [-sequence] ../../data/prot.swiss [-outseq] swiss::test.out
seqret -auto [-sequence] ../../data/prot.swiss [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/dna.embl [-outseq] text::test.out
seqret -auto [-sequence] ../../data/dna.embl [-outseq] test.out -osformat2 text
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] acedb::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 acedb
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] asn1::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 asn1
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] clustal::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 clustal
seqret -auto [-sequence] ../../data/prot.m-swiss [-outseq] clustal::test.out
seqret -auto [-sequence] ../../data/prot.m-swiss [-outseq] test.out -osformat2 clustal
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] codata::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 codata
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] debug::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 debug
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] embl::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 embl
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] fasta::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 fasta
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] fitch::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 fitch
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] gcg::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 gcg
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] genbank::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 genbank
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] gff::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 gff
seqret -auto [-sequence] ../../data/prot.m-swiss [-outseq] gff::test.out
seqret -auto [-sequence] ../../data/prot.m-swiss [-outseq] test.out -osformat2 gff
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] hennig86::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 hennig86
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] jackknifer::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 jackknifer
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] mega::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 mega
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] meganon::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 meganon
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] msf::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 msf
seqret -auto [-sequence] "tembl:M1190*" [-outseq] test.out -osformat2 msf
seqret -auto [-sequence] ../../data/prot.m-swiss [-outseq] msf::test.out
seqret -auto [-sequence] ../../data/prot.m-swiss [-outseq] test.out -osformat2 msf
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] nexus::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 nexus
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] nexusnon::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 nexusnon
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] phylip::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 phylip
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] phylipnon::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 phylipnon
seqret -auto [-sequence] ../../data/prot.m-swiss [-outseq] swiss::test.out
seqret -auto [-sequence] ../../data/prot.m-swiss [-outseq] test.out -osformat2 swiss
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] ncbi::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 ncbi
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] nbrf::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 nbrf
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] ig::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 ig
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] strider::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 strider
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] treecon::test.out
seqret -auto [-sequence] ../../data/dna.m-embl [-outseq] test.out -osformat2 treecon
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat%1864
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat%0
seqret -auto -outseq test.out -osformat2 embl [-sequence] ftp://emboss.open-bio.org/pub/EMBOSS/testdata/rod.dat
seqret -auto -outseq test.out -osformat2 embl [-sequence] ftp://emboss.open-bio.org/pub/EMBOSS/testdata/rod.dat -ioffset1 1864
seqret -auto -outseq test.out -osformat2 embl [-sequence] http://emboss.open-bio.org/downloads/rod.dat
seqret -auto -outseq test.out -osformat2 embl [-sequence] http://emboss.open-bio.org/downloads/rod.dat -ioffset1 1864
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat:L48662
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat:Z46957
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat:id:L48662
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat:ID:Z46957
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat:ACC:L48662
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat:ACC:Z46957
seqret -auto -outseq test.out -osformat2 embl [-sequence] "embl::../../embl/rod.dat:SV:L48662*"
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat:SV:Z46957.1
seqret -auto -outseq test.out -osformat2 embl [-sequence] "embl::../../embl/rod.dat:DES:*receptor*"
seqret -auto -outseq test.out -osformat2 embl [-sequence] "embl::../../embl/rod.dat:DES:*norvegicus*"
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat:DES:Mus
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat:DES:mrna
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat:DES:receptor
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat:KEY:rhodopsin
seqret -auto -outseq test.out -osformat2 embl [-sequence] "embl::../../embl/rod.dat:ORG:Mus*"
seqret -auto -outseq test.out -osformat2 embl [-sequence] "embl::../../embl/rod.dat:ORG:Rattus*"
seqret -auto -outseq test.out -osformat2 embl [-sequence] embl::../../embl/rod.dat:ORG:Rodentia
seqret -auto -outseq test.out -osformat2 embl [-sequence] qasrswww-ID:AB000095
seqret -auto -outseq test.out -osformat2 embl [-sequence] qasrswww-ACC:AB000095
seqret -auto -outseq test.out -osformat2 embl [-sequence] qasrswww-SV:AB000095.1
seqret -auto -outseq test.out -osformat2 embl [-sequence] qasrswww:AB000095
seqret -sequence tembl:x65923
seqret -sequence tembl:x65923 -outseq stdout
seqret -osformat gcg -sequence tembl:x65923
seqret -outseq gcg::x65923.gcg -sequence tembl:x65923
seqret -sequence tembl:x65923 -outseq gcg::x65923.gcg
seqret -sreverse -sequence tembl:x65923
seqret -sbegin 5 -send 25 -sequence tembl:x65923
seqret -sbegin 5 -send -5 -sequence tembl:x65923
seqret -sequence "tembl:h*" -outseq hall.seq
seqret [-sequence] "tembl:ab*" [-outseq] aball.seq
seqret -feature -sequence tembl:x65923 -outseq embl::x65923.embl
seqret -auto [-sequence] tembl:ab031077 [-outseq] embl::test.out
seqret -auto -scircular [-sequence] tembl:x65923 [-outseq] embl::test.out
seqret -auto -feature [-sequence] tembl:ab031077 [-outseq] gff3::test.out
seqret -auto [-sequence] @../../data/eclac.list [-outseq] test.out -osformat2 fasta
seqret -auto [-sequence] tembl:v00296 [-outseq] test.out -osformat2 fasta
seqretsplit [-sequence] "tembl:m1190*"
seqret [-sequence] ../../data/testids.ncbi:GENBANK [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:EMBL [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:DDBJ [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:PIR [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:PRF [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:SWISS_PRT [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:2PDBA [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:12345 [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:GENINFO [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:E1234 [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:REF_12345 [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:NM_012488.1 [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:LOCALID [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:123456 [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:GIGENBANK [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:GISWISS_PRT [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:BLAST [-outseq] test.out -auto
seqret [-sequence] ../../data/testids.ncbi:GENBANK [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:EMBL [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:DDBJ [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:PIR [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:PRF [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:SWISS_PRT [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:2PDBA [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:12345 [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:GENINFO [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:E1234 [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:REF_12345 [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:NM_012488.1 [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:LOCALID [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:123456 [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:GIGENBANK [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:GISWISS_PRT [-outseq] test.out -osformat2 ncbi -auto
seqret [-sequence] ../../data/testids.ncbi:BLAST [-outseq] test.out -osformat2 ncbi -auto
seqretsingle [-sequence] tembl:v00294 -send1 100 -outseq test.out -auto
seqretsingle [-sequence] tembl:v00294 -sbegin1 51 -send1 100 -outseq test.out -auto
seqretsingle [-sequence] tembl:v00294 -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -auto
seqretsingle [-sequence] tembl:v00294 -send1 100 -outseq test.out -osformat2 msf -auto
seqretsingle [-sequence] tembl:v00294 -sbegin1 51 -send1 100 -outseq test.out -osformat2 msf -auto
seqretsingle [-sequence] tembl:v00294 -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -osformat2 msf -auto
seqret [-sequence] "tembl:v0029*" -send1 100 -outseq test.out -auto
seqret [-sequence] "tembl:v0029*" -sbegin1 51 -send1 100 -outseq test.out -auto
seqret [-sequence] "tembl:v0029*" -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -auto
seqret [-sequence] "tembl:v0029*" -send1 100 -outseq test.out -osformat2 msf -auto
seqret [-sequence] "tembl:v0029*" -sbegin1 51 -send1 100 -outseq test.out -osformat2 msf -auto
seqret [-sequence] "tembl:v0029*" -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -osformat2 msf -auto
seqretset [-sequence] "tembl:v0029*" -send1 100 -outseq test.out -auto
seqretset [-sequence] "tembl:v0029*" -sbegin1 51 -send1 100 -outseq test.out -auto
seqretset [-sequence] "tembl:v0029*" -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -auto
seqretset [-sequence] "tembl:v0029*" -send1 100 -outseq test.out -osformat2 msf -auto
seqretset [-sequence] "tembl:v0029*" -sbegin1 51 -send1 100 -outseq test.out -osformat2 msf -auto
seqretset [-sequence] "tembl:v0029*" -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -osformat2 msf -auto
seqretsingle -feature [-sequence] tembl:v00294 -send1 100 -outseq test.out -auto
seqretsingle -feature [-sequence] tembl:v00294 -sbegin1 51 -send1 100 -outseq test.out -auto
seqretsingle -feature [-sequence] tembl:v00294 -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -auto
seqretsingle -feature [-sequence] tembl:v00294 -send1 100 -outseq test.out -osformat2 embl -auto
seqretsingle -feature [-sequence] tembl:v00294 -sbegin1 51 -send1 100 -outseq test.out -osformat2 embl -auto
seqretsingle -feature [-sequence] tembl:v00294 -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -osformat2 embl -auto
seqretsingle -feature [-sequence] tembl:v00294 -send1 100 -outseq test.out -osformat2 msf -auto
seqretsingle -feature [-sequence] tembl:v00294 -sbegin1 51 -send1 100 -outseq test.out -osformat2 msf -auto
seqretsingle -feature [-sequence] tembl:v00294 -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -osformat2 msf -auto
seqret -feature [-sequence] @../../data/eclac.list -send1 100 -outseq test.out -auto
seqret -feature [-sequence] @../../data/eclac.list -sbegin1 51 -send1 100 -outseq test.out -auto
seqret -feature [-sequence] @../../data/eclac.list -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -auto
seqret -feature [-sequence] @../../data/eclac.list -send1 100 -outseq test.out -osformat2 embl -auto
seqret -feature [-sequence] @../../data/eclac.list -sbegin1 51 -send1 100 -outseq test.out -osformat2 embl -auto
seqret -feature [-sequence] @../../data/eclac.list -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -osformat2 embl -auto
seqret -feature [-sequence] @../../data/eclac.list -send1 100 -outseq test.out -osformat2 msf -auto
seqret -feature [-sequence] @../../data/eclac.list -sbegin1 51 -send1 100 -outseq test.out -osformat2 msf -auto
seqret -feature [-sequence] @../../data/eclac.list -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -osformat2 msf -auto
seqretset -feature [-sequence] @../../data/eclac.list -send1 100 -outseq test.out -auto
seqretset -feature [-sequence] @../../data/eclac.list -sbegin1 51 -send1 100 -outseq test.out -auto
seqretset -feature [-sequence] @../../data/eclac.list -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -auto
seqretset -feature [-sequence] @../../data/eclac.list -send1 100 -outseq test.out -osformat2 embl -auto
seqretset -feature [-sequence] @../../data/eclac.list -sbegin1 51 -send1 100 -outseq test.out -osformat2 embl -auto
seqretset -feature [-sequence] @../../data/eclac.list -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -osformat2 embl -auto
seqretset -feature [-sequence] @../../data/eclac.list -send1 100 -outseq test.out -osformat2 msf -auto
seqretset -feature [-sequence] @../../data/eclac.list -sbegin1 51 -send1 100 -outseq test.out -osformat2 msf -auto
seqretset -feature [-sequence] @../../data/eclac.list -sbegin1 51 -send1 100 -sreverse1 -outseq test.out -osformat2 msf -auto
seqretsetall -osformat phylip -sequence ../../data/globins-all.phy
seqxref [-sequence] tembl:x13776
seqxrefget [-sequence] tembl:x13776
servertell [-server] srs
showalign -sequence ../../data/globins.msf
showalign -show n -sequence ../../data/globins.msf
showalign -show a -sequence ../../data/globins.msf
showalign -show i -sequence ../../data/globins.msf
showalign -show s -sequence ../../data/globins.msf
showalign -show d -sequence ../../data/globins.msf
showalign -refseq 1 -sequence ../../data/globins.msf
showalign -noconsensus -refseq 1 -slower -uppercase 9-15 -nosimilarcase -sequence ../../data/globins.msf
showalign -order a -sequence ../../data/globins.msf
showalign -order s -sequence ../../data/globins.msf
showalign -html -highlight "4-13 green 43-43 red 51-56 blue" -sequence ../../data/globins.msf
showalign -html -highlight @../../data/showalign.colour -sequence ../../data/globins.msf
showalign -html -highlight @../../data/showalign.hashcolour -sequence ../../data/globins.msf
showalign -noconsensus -noruler -nonumber -nobottom -refseq 1 -sbegin 10 -send 30 -sequence ../../data/globins.msf
showdb 
showdb -outfile showdb.out
showdb -database tsw
showdb -html
showdb -nonucleic
showdb -noheading
showdb -noheading -notype -noid -noquery -noall -nocomment -auto
showdb -only -type
showdb -full
showfeat -sequence tembl:x65921
showfeat -joinfeatures -position -sequence tembl:x65921
showfeat -typematch CDS -width 0 -noid -nodescription -noscale -position -sequence tembl:x65921
showorf -sequence tembl:x13776
showpep [-sequence] tsw:laci_ecoli -sbegin1 1 -send1 100
showpep [-sequence] tsw:laci_ecoli -sbegin1 1 -send1 120 -format 0 -things b,t,s
showpep [-sequence] tsw:laci_ecoli -sbegin1 1 -send1 100 -noname -nodescription -format 0 -things S
showpep [-sequence] tsw:rs24_takru -threeletter -format 2
showpep [-sequence] tsw:laci_ecoli -sbegin1 1 -send1 100 -format 1 -number
showpep [-sequence] tsw:laci_ecoli -sbegin1 1 -send1 100 -format 1 -number -offset 123
showpep [-sequence] tsw:laci_ecoli -sbegin1 1 -send1 100 -format 1 -slower -uppercase 17-17,22-22
showpep [-sequence] tsw:laci_ecoli -sbegin1 1 -send1 100 -format 2 -send 120 -annotation "6-25 binding site 17-17 SNP 22-22 SNP"
showseq [-sequence] tembl:x13776 -sbegin1 1 -send1 100
showseq [-sequence] tembl:x13776 -sbegin1 1 -send1 120 -format 0 -things b,s,t,c
showseq [-sequence] tembl:x13776 -sbegin1 1 -send1 100 -noname -nodescription -format 0 -things S
showseq [-sequence] tembl:x13776 -sbegin1 1 -send1 100 -format 1 -number
showseq [-sequence] tembl:x13776 -sbegin1 1 -send1 100 -format 1 -number -offset 123
showseq [-sequence] tembl:x13776 -sbegin1 1 -send1 100 -format 1 -slower -uppercase 8-24,65-81
showseq [-sequence] tembl:x13776 -sbegin1 1 -send1 120 -format 5 -translate 25-49,66-76
showseq [-sequence] tembl:x13776 -sbegin1 1 -send1 100 -format 2 -send 120 -annotation "13-26 binding site 15-15 SNP"
showserver 
shuffleseq -shuffle 2 -sequence tembl:L48662
sigcleave -sequence tsw:ach2_drome
sigcleave -sequence "tsw:a*"
silent -sequence tembl:x65923 -enzymes kpni
silent -sshow -tshow -sequence tembl:x65923 -enzymes kpni
silent -allmut -sequence tembl:x65923 -enzymes kpni
sixpack -sequence tembl:x13776
sixpack -mstart -sequence tembl:x13776
sirna -sequence tembl:x65923
sirna -context -sequence tembl:x65923
sizeseq -osformat swiss -sequences ../../data/globins.fasta
skipredundant -threshold 80 -redundantoutseq "" -sequences ../../data/globins.fasta
skipseq -sequence @../../data/eclac.list
skipseq -skip 1 -sequence @../../data/eclac.list
splitsource [-sequence] qasrswww:A01139
splitter [-sequence] tembl:BA000025 [-outseq] ba000025.split
splitter [-sequence] tembl:BA000025 [-outseq] ba000025.split -size 50000 -overlap 3000
stretcher [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human
stssearch -seqall @../../data/eclac.list -infile ../../data/lac.primers
supermatcher [-asequence] @../../data/eclac.list [-bsequence] tembl:j01636 -wordlen 50 -gapextend 3.0
supermatcher [-asequence] @../../data/eclac.list [-bsequence] tembl:j01636 -wordlen 50 -sbegin2 101 -send2 -101 -gapextend 3.0
syco -plot -cfile Epseae.cut -sequence tembl:x13776 -graph ps
taxget [-taxons] ttax:9606
taxgetdown [-taxons] ttax:9605 -oformat excel
taxgetrank [-taxons] ttax:9606 -oformat excel
taxgetrank [-taxons] ttax:9606 -oformat excel -rank "*"
taxgetrank [-taxons] ttax:9606 -oformat excel -hidden -rank "*"
taxgetspecies [-taxons] taxon-tax:hominidae -oformat excel
taxgetup [-taxons] ttax:9606 -oformat excel
taxgetup [-taxons] ttax:9606 -hidden -oformat excel
tcode -sequence tembl:x65921
tcode -plot -graph cps -sequence tembl:x65921
tcode -plot -graph cps -sequence "tembl:{x65921,x13776}"
textget [-text] srs:unilib:99
textsearch [-sequence] "tsw:*" [-pattern] lactose
textsearch [-sequence] "tsw:*_ecoli" [-pattern] "lactose | permease"
textsearch [-sequence] "tembl:*" [-pattern] lacz -html -outfile embl.lacz.html
tfextract -infile ../../data/site.dat
tfm [-program] wossname
tfscan -sequence tembl:k00650 -menu v
tmap [-sequences] ../../data/opsd.msf -outfile tmap.res -graph cps
tmap [-sequences] tsw:opsd_human -outfile tmap.res -graph cps
tranalign [-asequence] ../../data/tranalign.seq [-bsequence] ../../data/tranalign.pep [-outseq] tranalign2.seq
transeq [-sequence] tembl:x13776 [-outseq] amir.pep
transeq [-sequence] tembl:x13776 [-outseq] amir.pep -frame 2
transeq [-sequence] tembl:x13776 [-outseq] amir.pep -frame -1
transeq [-sequence] tembl:x13776 [-outseq] amir.pep -frame F
transeq [-sequence] tembl:x13776 [-outseq] amir.pep -frame R
transeq [-sequence] tembl:x13776 [-outseq] amir.pep -frame 6
transeq [-sequence] tembl:x13776 [-outseq] amir.pep -regions 2-45,67-201,328-509
transeq [-sequence] ../../data/mito.seq [-outseq] mito.pep -table 2
transeq [-sequence] @../../data/range0.list [-outseq] list.pep
transeq [-sequence] @../../data/range1.list [-outseq] list.pep
transeq [-sequence] @../../data/range2.list [-outseq] list.pep
transeq [-sequence] @../../data/range12.list [-outseq] list.pep
trimest [-sequence] tembl:x65923 [-outseq] x65923.seq
trimseq [-sequence] ../../data/untrimmed.seq [-outseq] trim1.seq -window 1 -percent 100
trimseq [-sequence] ../../data/untrimmed.seq [-outseq] trim2.seq -window 5 -percent 40
trimseq [-sequence] ../../data/untrimmed.seq [-outseq] trim3.seq -window 5 -percent 50
trimseq [-sequence] ../../data/untrimmed.seq [-outseq] trim4.seq -window 5 -percent 50 -strict
trimseq [-sequence] ../../data/untrimmed.seq [-outseq] trim5.seq -window 5 -percent 50 -strict -noright
trimspace -infile ../../data/seqspace2.txt
twofeat [-sequence] tembl:x65923 -atype polyA_signal -btype polyA_site -minrange 10 -maxrange 50
twofeat -twoout -rformat gff [-sequence] tembl:x65923 -atype polyA_signal -btype polyA_site -minrange 10 -maxrange 50
urlget [-url] pseudocap:PA3363 -swiss1
urlget [-url] pseudocap:PA3363
urlget [-url] pseudocap:PA3363 -identifier1 "Locus ID (PseudoCAP)"
union -sequence @../../data/cds.list
variationget [-variation] ../../data/valid-4.0.vcf -outfile test.vcf
variationget [-variation] ../../data/valid-3.3.vcf -outfile test.vcf
variationget [-variation] ../../data/valid-4.0.vcf -outfile test.vcf
variationget [-variation] ../../data/valid-4.1.vcf -outfile test.vcf
vectorstrip [-sequence] @../../data/vecseqs.list -vectorsfile ../../data/vectors -outfile vector.strip -outseq vector.fasta
water [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human
water [-asequence] asis:catt [-bsequence] asis:cgatt [-outfile] stdout -auto -gapopen 1 -gapextend 1
whichdb -showall -entry x65921
wobble -sequence tembl:x13776 -graph cps
wordcount [-sequence] tembl:u68037 -wordsize 3
wordfinder [-asequence] tembl:j01636 [-bsequence] @../../data/eclac.list -wordlen 50 -gapextend 3.0
wordmatch [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human
wossdata [-identifier] codon
wossinput [-identifier] codon
wossname [-search] restrict
wossname -search ""
wossname -search "" -alphabetic
wossname -search "" -groups
wossname [-search] "" -html -outfile wossname.html
wossoperation [-identifier] codon
wossoutput [-identifier] codon
wossparam [-identifier] codon
wosstopic [-identifier] codon
yank -sequence tembl:x65921 -sbegin_sequence 1913 -send_sequence 1915 -outfile cds.list
seqmatchall -sequence @../../data/eclac.list -wordsize 15
stretcher -gapopen 5 -gapextend 1 -stdout -sbegin2 4 -aformat msf -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
stretcher -gapopen 16 -gapextend 1 -stdout -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
stretcher -gapopen 16 -gapextend 4 -stdout -asequence ../../data/aligna.dna -bsequence ../../data/alignapart.dna
stretcher -gapopen 16 -gapextend 4 -stdout -sbegin1 5 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
stretcher -gapopen 16 -gapextend 4 -stdout -send1 15 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
stretcher -gapopen 16 -gapextend 4 -stdout -sbegin2 5 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
stretcher -gapopen 16 -gapextend 4 -stdout -send2 -3 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
stretcher -gapopen 16 -gapextend 4 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
stretcher -gapopen 16 -gapextend 1 -stdout -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
stretcher -gapopen 16 -gapextend 4 -stdout -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignapart.dna
stretcher -gapopen 16 -gapextend 4 -stdout -sbegin1 5 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
stretcher -gapopen 16 -gapextend 4 -stdout -send1 15 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
stretcher -gapopen 16 -gapextend 4 -stdout -sbegin2 5 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
stretcher -gapopen 16 -gapextend 4 -stdout -send2 -3 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
stretcher -gapopen 16 -gapextend 4 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -asequence tembl:j01636 -bsequence tembl:v00296
matcher -gapopen 5 -gapextend 1 -stdout -sreverse1 -sreverse2 -asequence tembl:j01636 -bsequence tembl:v00296
matcher -gapopen 5 -gapextend 1 -stdout -asequence ../../data/aligna.dna -bsequence ../../data/alignapart.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -send1 15 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin2 5 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -send2 -3 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -aformat pair -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -aformat srspair -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -aformat markx0 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -aformat markx1 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -aformat markx2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -aformat markx3 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -aformat markx10 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -aformat fasta -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -aformat msf -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -aformat msf -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignapart.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -send1 15 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin2 5 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -send2 -3 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -aformat pair -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -aformat srspair -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -aformat markx0 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -aformat markx1 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -aformat markx2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -aformat markx3 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -aformat markx10 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -aformat fasta -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -aformat msf -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -gapopen 5 -gapextend 1 -stdout -sreverse1 -sreverse2 -aformat msf -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
matcher -stdout -asequence ../../data/aligna.prot -bsequence ../../data/alignb.prot
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -asequence ../../data/aligna.prot -bsequence ../../data/alignb.prot
matcher -stdout -send1 15 -asequence ../../data/aligna.prot -bsequence ../../data/alignb.prot
matcher -stdout -sbegin2 5 -asequence ../../data/aligna.prot -bsequence ../../data/alignb.prot
matcher -stdout -send2 -3 -asequence ../../data/aligna.prot -bsequence ../../data/alignb.prot
matcher -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -asequence ../../data/aligna.prot -bsequence ../../data/alignb.prot
matcher -stdout -sreverse1 -sreverse2 -asequence ../../data/aligna.prot -bsequence ../../data/alignb.prot
matcher -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -sreverse1 -sreverse2 -asequence ../../data/aligna.prot -bsequence ../../data/alignb.prot
matcher -stdout -send1 15 -sreverse1 -sreverse2 -asequence ../../data/aligna.prot -bsequence ../../data/alignb.prot
matcher -stdout -sbegin2 5 -sreverse1 -sreverse2 -asequence ../../data/aligna.prot -bsequence ../../data/alignb.prot
matcher -stdout -send2 -3 -sreverse1 -sreverse2 -asequence ../../data/aligna.prot -bsequence ../../data/alignb.prot
matcher -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -asequence ../../data/aligna.prot -bsequence ../../data/alignb.prot
wordmatch [-asequence] tembl:v00294 [-bsequence] tembl:v00294 -wordsize 50 -auto
wordmatch [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human -aformat pair
wordmatch [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human -aformat srspair
wordmatch [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human -aformat markx0
wordmatch [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human -aformat markx1
wordmatch [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human -aformat markx2
wordmatch [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human -aformat markx3
wordmatch [-asequence] tsw:hba_human [-bsequence] tsw:hbb_human -aformat markx10
merger -aformat fasta -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat markx0 -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat markx1 -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat markx2 -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat markx3 -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat markx10 -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat match -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat msf -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat pair -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat score -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat simple -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat srs -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat srspair -asequence tembl:v00295 -bsequence tembl:x51872
merger -aformat tcoffee -asequence tembl:v00295 -bsequence tembl:x51872
needle -gapopen 16 -gapextend 4 -stdout -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
needle -gapopen 16 -gapextend 4 -stdout -asequence ../../data/aligna.dna -bsequence ../../data/alignapart.dna
needle -gapopen 16 -gapextend 4 -stdout -sbegin1 5 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
needle -gapopen 16 -gapextend 4 -stdout -send1 15 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
needle -gapopen 16 -gapextend 4 -stdout -sbegin2 5 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
needle -gapopen 16 -gapextend 4 -stdout -send2 -3 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
needle -gapopen 16 -gapextend 4 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
needle -gapopen 16 -gapextend 4 -stdout -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
needle -gapopen 16 -gapextend 4 -stdout -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignapart.dna
needle -gapopen 16 -gapextend 4 -stdout -sbegin1 5 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
needle -gapopen 16 -gapextend 4 -stdout -send1 15 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
needle -gapopen 16 -gapextend 4 -stdout -sbegin2 5 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
needle -gapopen 16 -gapextend 4 -stdout -send2 -3 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
needle -gapopen 16 -gapextend 4 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
needle -gapopen 8 -gapextend 8 -stdout -datafile EBLOSUM50 -endweight no -asequence asis::PAWHEAE -bsequence asis::HEAGAWGHEE
needle -gapopen 8 -gapextend 8 -endopen 8 -endextend 8 -stdout -datafile EBLOSUM50 -endweight -asequence asis::PAWHEAE -bsequence asis::HEAGAWGHEE
needle [-asequence] asis:actggatatataatat [-bsequence] asis:actaatat [-outfile] stdout -auto -endweight -gapopen 20
needle [-asequence] asis:actggatatataatat [-bsequence] asis:actaatat [-outfile] stdout -auto -endweight -gapopen 20 -gapextend 2 -endextend 1
needle [-asequence] asis:actggatatataatat [-bsequence] asis:actaatat [-outfile] stdout -auto -endweight -gapopen 20 -gapextend 2 -endextend 0
needle [-asequence] asis:MVL [-bsequence] asis:MVHLLL [-outfile] stdout -aformat3 simple -endweight -auto -gapopen 12 -gapextend 2
needle [-asequence] asis:MGQMQIV [-bsequence] asis:IVPPLKP [-outfile] stdout -aformat3 simple -endweight -auto -endopen 0 -endextend 0
needle [-asequence] asis:IVPPLKP [-bsequence] asis:MGQMQIV [-outfile] stdout -aformat3 simple -endweight -auto -endopen 0 -endextend 0
needle -auto -stdout -aformat simple -gapextend 1.0 [-asequence] asis::acgtaggtacgttttacgtacgtacgtacgtaaacaggtg [-bsequence] asis::acgtagaacgtacgtacgtacgtacacgcataagcggcag
needle -auto -stdout -aformat simple -gapextend 0.5 [-asequence] asis::tgcgcaggatgtccttccaa [-bsequence] asis::caatagactggtccgttcgc
needle -auto -stdout [-asequence] asis::CDISRILQTHADAKVQVLDNQNVSNGCVSKILGRYYETG [-bsequence] asis::CDISRILQ--------------VSNGCVSKILGRYYETG
needle [-asequence] asis:cttttcgtggtatta [-bsequence] asis:gcgaccatgagagag -auto -gapopen 1 -gapextend 1 -endweight -endopen 1 -endextend 1 [-outfile] stdout
needle [-asequence] asis:aag [-bsequence] asis:gg [-outfile] stdout -auto -endweight
needle [-asequence] asis:aa [-bsequence] asis:gg [-outfile] stdout -auto
needleall -auto -stdout -endweight -aformat simple [-asequence] "asis::DVDAKTPIVLISGGVGLTPMVSMLKVALQAPPRQVVFVHGARNSAVHAMRDRLREAAKTYENLDLFV FYDQPLPEDVQGRDYDYPGLVDVKQIEKSILLPDADYYICGPIPFMRMQHDALKNLGIHEARIHYEV" [-bsequence] "asis::RDDEERPMILIAGGTGFSYARSILLTALARNPNRDITIYWGGREEQHLYDLCELEALSLKHPGLQVV PVVEQPEAGWRGRTGTVLTAVLQDHGTLAEHDIYIAGRFEMAKIARDLFCSERNAREDRLFGDA"
needleall -auto -stdout -noendweight [-asequence] "asis::DVDAKTPIVLISGGVGLTPMVSMLKVALQAPPRQVVFVHGARNSAVHAMRDRLREAAKTYENLDLFV FYDQPLPEDVQGRDYDYPGLVDVKQIEKSILLPDADYYICGPIPFMRMQHDALKNLGIHEARIHYEV" [-bsequence] "asis::RDDEERPMILIAGGTGFSYARSILLTALARNPNRDITIYWGGREEQHLYDLCELEALSLKHPGLQVV PVVEQPEAGWRGRTGTVLTAVLQDHGTLAEHDIYIAGRFEMAKIARDLFCSERNAREDRLFGDA"
wordfinder -lowmatch 7 -stdout -auto -aformat sam -sformat2 fastq-sanger [-asequence] ../../data/illumina_adapter_primer.fa [-bsequence] ../../data/test1_illumina.fastq
wordmatch -wordsize 7 -stdout -auto -aformat sam -sformat2 fastq-sanger [-asequence] ../../data/illumina_adapter_primer.fa -nodumpfeat [-bsequence] ../../data/test1_illumina.fastq
supermatcher -wordlen 7 -stdout -auto -aformat sam -sformat1 fastq-sanger [-asequence] ../../data/test1_illumina.fastq [-bsequence] ../../data/illumina_adapter_primer.fa
water -auto -aformat sam -datafile EDNASIMPLE -outfile stdout -gapopen 2 [-asequence] asis:AGCATGTTAGATAAGATAGCTGTGCTAGTAGGCAGTCAGCGCCAT [-bsequence] asis:TTAGATAAAGGATACTG
water -auto -aformat sam -datafile EDNASIMPLE -outfile stdout [-asequence] "asis:AGCATGTTAGATAA**GATAGCTGTGCTAGTAGGCAGTCAGCGCCAT" [-bsequence] asis:gcctaAGCTAA
water -auto -sreverse2 -aformat sam -datafile EDNASIMPLE -outfile stdout [-asequence] asis:AGCATGTTAGATAANNGANAGCTGTGCTAGTAGGCAGTCAGCGCCAT [-bsequence] asis:gcctaAGCTAA
water -gapopen 5 -gapextend 1 -stdout -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
water -gapopen 5 -gapextend 1 -stdout -asequence ../../data/aligna.dna -bsequence ../../data/alignapart.dna
water -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
water -gapopen 5 -gapextend 1 -stdout -send1 15 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
water -gapopen 5 -gapextend 1 -stdout -sbegin2 5 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
water -gapopen 5 -gapextend 1 -stdout -send2 -3 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
water -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
water -gapopen 5 -gapextend 1 -stdout -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
water -gapopen 5 -gapextend 1 -stdout -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignapart.dna
water -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
water -gapopen 5 -gapextend 1 -stdout -send1 15 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
water -gapopen 5 -gapextend 1 -stdout -sbegin2 5 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
water -gapopen 5 -gapextend 1 -stdout -send2 -3 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
water -gapopen 5 -gapextend 1 -stdout -sbegin1 5 -send1 15 -sbegin2 2 -send2 -6 -sreverse1 -sreverse2 -asequence ../../data/aligna.dna -bsequence ../../data/alignb.dna
wordfinder -gapopen 10 -gapextend 1 -wordlen 3 -aformat simple -outfile align.simple [-asequence] asis:GATCGGAAGAGCTCGTATGCCGTCTTCTGCTTGGGGGGG [-bsequence] asis:TCGTTT -auto
supermatcher [-asequence] @../../data/eclac.list [-bsequence] tembl:j01636 -wordlen 50 -gapextend 3.0
supermatcher [-asequence] @../../data/eclac.list [-bsequence] tembl:j01636 -wordlen 50 -sbegin2 101 -send2 -101 -gapextend 3.0
supermatcher [-asequence] @../../data/eclac.list [-bsequence] tembl:j01636 -wordlen 50 -sreverse1 -sreverse2 -gapextend 3.0
supermatcher [-asequence] @../../data/eclac.list [-bsequence] tembl:j01636 -wordlen 50 -sbegin2 101 -send2 -101 -sreverse1 -sreverse2 -gapextend 3.0
supermatcher -gapopen 10 -gapextend 1 -wordlen 3 -aformat simple -outfile align.simple [-asequence] asis:GATCGGAAGAGCTCGTATGCCGTCTTCTGCTTGGGGGGG [-bsequence] asis:TCGTTT -auto
supermatcher [-asequence] ../../data/aligna.dna [-bsequence] ../../data/tropomyosin.fasta -width 1 -gapopen 1 -gapextend 1 -aformat score -outfile align.score -auto
supermatcher [-asequence] ../../data/aligna.dna [-bsequence] ../../data/tropomyosin.fasta -auto -minscore 120 -gapopen 1 -gapextend 1 -aformat score -outfile align.score
supermatcher [-asequence] ../../data/aligna.dna [-bsequence] ../../data/tropomyosin.fasta -minscore 35 -outfile align -auto -gapextend 1 -width 12 -send2 172 -send1 50
supermatcher [-asequence] ../../data/tropomyosin.fasta [-bsequence] ../../data/aligna.dna -gapextend 1 -wordlen 7 -outfile align -auto
wordfinder -gapopen 10 -gapextend 1 -wordlen 3 -aformat simple -outfile align.simple [-asequence] asis:GATCGGAAGAGCTCGTATGCCGTCTTCTGCTTGGGGGGG [-bsequence] asis:TCGTTT -auto
wordfinder [-asequence] ../../data/tropomyosin.fasta [-bsequence] ../../data/aligna.dna -width 1 -gapopen 1 -gapextend 1 -aformat score -outfile align.score -auto
wordfinder [-asequence] ../../data/tropomyosin.fasta [-bsequence] ../../data/aligna.dna -auto -lowalign 80 -gapopen 1 -gapextend 1 -aformat score -outfile align.score
wordfinder [-asequence] ../../data/tropomyosin.fasta [-bsequence] ../../data/aligna.dna -lowalign 10 -outfile align -auto -gapextend 1 -width 12 -send2 172 -send1 50
wordfinder [-asequence] ../../data/aligna.dna [-bsequence] ../../data/tropomyosin.fasta -gapextend 1 -wordlen 7 -outfile align -auto
ajtest -sequence tembl:x13776 -bsequence ../../data/globins.msf -outfile stdout -outseq abc.seq -outfeat abc.gff
ajtest -nostdout -outfile "" -outseq outseq -sequence tembl:x13776 -bsequence ../../data/globins.msf -outfeat abc.gff
complex -omnia -sequence "tembl:x*"
entrails -fullreport
histogramtest -graph ps
intconv [-infile] stdin [-outfile] stdout -auto
patmattest -sequence tembl:x13776 -expression ACA
prima -minplen 200 -maxplen 250 -sequence tembl:v00294
primers -sequence tembl:k00650
seqinfo -sequence tembl:x13776
seqretall -sequence @../../data/eclac.list
seqretallfeat -osformat embl -sequence @../../data/eclac.list -outseq x51872ll.embl
seqretset -sequence @../../data/eclac.list
seqretsingle -sequence @../../data/eclac.list
testplot -graph ps
treetypedisplay -graph ps
seqret [-sequence] "tsw-{id:hba_human | id:hbb_human}" [-outseq] stdout -auto
seqret [-sequence] "tsw{hba_human, hbb_human}" [-outseq] stdout -auto
seqret [-sequence] "tsw{hba_human|hbb_human}" [-outseq] stdout -auto
seqret [-sequence] "tsw-id{hba_human|hbb_human}" [-outseq] stdout -auto
seqret [-sequence] "tsw{HBA_HUMAN, P68871}" [-outseq] stdout -auto
seqret [-sequence] "tsw{P68871, HBA_HUMAN}" [-outseq] stdout -auto
seqret [-sequence] "tsw{P68871, ABCDEF, HBA_HUMAN}" [-outseq] stdout -auto
seqret [-sequence] "tsw-{id:h* ! des:Hemoglobin}" [-outseq] stdout -auto
seqret [-sequence] "tsw-{id:h*!des:Hemoglobin}" [-outseq] stdout -auto
seqret [-sequence] "qanxflatall-{id:m1190* ! des:1a}" [-outseq] stdout -auto
seqret [-sequence] "qanxflatall-{acc:x01958 ! des:1a}" [-outseq] stdout -auto
ontoget [-oboterms] "edam-{des:cdna}" [-outfile] stdout -auto
ontoget [-oboterms] "edam-{des:mrna}" [-outfile] stdout -auto
ontoget [-oboterms] "edam-{des:cdna & des:mrna}" [-outfile] stdout -auto
ontoget [-oboterms] "edam-{des:cdna ^ des:mrna}" [-outfile] stdout -auto
ontoget [-oboterms] "edam-{nam:rna ! des:sequence}" [-outfile] stdout -auto
seqret [-sequence] "qanxflat-id{m11903 | m11904 | m11905}" [-outseq] stdout -auto
seqret [-sequence] "qanxflat-acc{x01958 & m11905}" [-outseq] stdout -auto
seqret [-sequence] "qanxflat-acc{x01958 ^ m11905}" [-outseq] stdout -auto
seqret [-sequence] "qanxflat-acc{x01958 ! m11905}" [-outseq] stdout -auto
seqret [-sequence] "qanflat-id{m11903 | m11904 | m11905}" [-outseq] stdout -auto
seqret [-sequence] "qanflat-acc{x01958 & m11905}" [-outseq] stdout -auto
seqret [-sequence] "qanflat-acc{x01958 ^ m11905}" [-outseq] stdout -auto
seqret [-sequence] "qanflat-acc{x01958 ! m11905}" [-outseq] stdout -auto
seqret [-sequence] "qanxgcg-id{v00294 | v00295 | v00296}" [-outseq] stdout -auto
seqret [-sequence] "qanxgcg-acc{v0029* & v00295}" [-outseq] stdout -auto
seqret [-sequence] "qanxgcg-acc{v0029* ^ v00295}" [-outseq] stdout -auto
seqret [-sequence] "qanxgcg-acc{v0029* ! v00295}" [-outseq] stdout -auto
seqret [-sequence] "qangcg-id{v00294 | v00295 | v00296}" [-outseq] stdout -auto
seqret [-sequence] "qangcg-acc{v0029* & v00295}" [-outseq] stdout -auto
seqret [-sequence] "qangcg-acc{v0029* ^ v00295}" [-outseq] stdout -auto
seqret [-sequence] "qangcg-acc{v0029* ! v00295}" [-outseq] stdout -auto
seqret [-sequence] "srs:embl-id{m11903 | m11904 | m11905}" [-outseq] stdout -auto
seqret [-sequence] "srs:embl-acc{x01958 & m11905}" [-outseq] stdout -auto
seqret [-sequence] "srs:embl-acc{x01958 ! m11905}" [-outseq] stdout -auto
assemblyget [-assembly] bam::../../data/samspec1.4example.bam -oformat bam [-outassembly] samspec1.4example.bam -auto -debug
seqret [-sequence] bam::../../data/samspec1.4example.bam -osformat sam [-outseq] stdout -auto
seqret [-sequence] bam::../../data/index_test.bam -osformat bam [-outseq] check.bam -auto
assemblyget [-assembly] bam::../../data/chr1to10.bam:chr1 -oformat sam [-outassembly] stdout -auto -cbegin 1 -cend 1000
assemblyget [-assembly] bam::../../data/chr1to10.bam:Chr1 -oformat sam [-outassembly] stdout -auto -cbegin 1 -cend 1000
assemblyget [-assembly] bam::../../data/chr1to10.bam:chr4 -oformat bam [-outassembly] chr1to10.bam -auto -cbegin 1 -cend 1000 -debug
assemblyget [-assembly] bam::../assemblyget-bamquery2bam-keep/chr1to10.bam:chr4 -oformat sam [-outassembly] stdout -auto -cbegin 1 -cend 1000
assemblyget [-assembly] bam::../../data/index_test.bam:chrY -oformat bam [-outassembly] chrY.bam -auto
assemblyget [-assembly] bam::../../data/index_test.bam -oformat bam [-outassembly] index_test.bam -auto
assemblyget [-assembly] maf::../../data/miradocex.maf -oformat maf [-outassembly] stdout -auto
assemblyget [-assembly] maf::../../data/miradocex.maf -oformat sam [-outassembly] stdout -auto
infoassembly [-assembly] sam::../../data/samspec1.4example.sam [-outassembly] stdout -auto
infoassembly [-assembly] sam::../../data/xxx.sam [-outassembly] stdout -auto -qualvaluesdistoutfile qualsdist.txt
infoassembly [-assembly] sam::../../data/samspec1.4example.sam [-outassembly] stdout -auto -refsequence ../../data/samspec1.4example.ref.fasta
infoassembly [-assembly] sam::../../data/samspec1.4example.sam [-outassembly] stdout -auto -windowsize 10 -refsequence ../../data/samspec1.4example.ref.fasta -gcbiasmetricsoutfile gcbias.txt
infoassembly [-assembly] bam::../../data/samspec1.4example.bam [-outassembly] stdout -auto -windowsize 10 -refsequence ../../data/samspec1.4example.ref.fasta -gcbiasmetricsoutfile gcbias.txt
variationget [-variation] ../../data/valid-4.1.vcf -oformat bcf [-outfile] check.bcf
variationget [-variation] bcf::../../data/valid-4.1.bcf -oformat vcf [-outfile] check.vcf
