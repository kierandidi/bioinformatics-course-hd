
### OPGAVE 3 ####

reinit

cd /Users/lauraskak/Desktop/colCons
bg_color white
set opaque_background, off 
run colCons.py

fetch 6yb7, SARS_CoV_2, type=pdb1, async=0
fetch 1q2w, SARS_CoV, type=pdb1, async=0
fetch 4yo9, MERS, type=pdb1, async=0 
remove solvent
remove resn DMS

split_states SARS_CoV_2
alter SARS_CoV_2_0002, chain='B'
delete SARS_CoV_2
create SARS_CoV_2, (SARS_CoV_2_0001 or SARS_CoV_2_0002)
delete SARS_CoV_2_*

hide everything, (SARS_CoV or MERS or (SARS_CoV_2 and chain B))

set_view (\
     0.080722556,   -0.031130165,   -0.996250689,\
     0.680787563,   -0.728324533,    0.077920094,\
    -0.728019476,   -0.684524655,   -0.037598833,\
     0.000000000,    0.000000000, -169.527984619,\
    11.960700989,    0.785278320,    4.805091858,\
   126.642059326,  212.413925171,  -20.000000000 )

scene F1, store

color_cons('SARS_CoV_2','Nsp5-align.fasta.txt',1,1,0.5,1.0,'rain','yellow','red','BLOSUM62',True)

scene F2, store

sele active_site, (SARS_CoV_2 and chain A and resi 41+145+166)

show sticks, active_site

set_view (\
    -0.134046674,   -0.826700687,   -0.546437800,\
     0.814953744,   -0.405686378,    0.413843155,\
    -0.563809514,   -0.389846861,    0.728104413,\
     0.000005960,    0.000066450,  -58.858032227,\
     8.588150024,   -3.541928291,   18.838260651,\
    11.682826996,  106.031906128,  -20.000000000 )

deselect

scene F3, store

hide sticks, SARS_CoV_2
util.cbag SARS_CoV_2
show cartoon, SARS_CoV_2

align SARS_CoV, SARS_CoV_2
align MERS, SARS_CoV_2

hide everything, MERS

set_view (\
     0.681148350,    0.048563566,   -0.730533898,\
    -0.109923191,    0.993271410,   -0.036462527,\
     0.723847806,    0.105138905,    0.681902885,\
     0.000000000,    0.000000000, -205.848587036,\
    -0.047275543,    0.744895935,    0.320411682,\
   162.292602539,  249.404571533,  -20.000000000 )

scene F4, store


hide everything, SARS_CoV
show cartoon, MERS

set_view (\
     0.681148350,    0.048563566,   -0.730533898,\
    -0.109923191,    0.993271410,   -0.036462527,\
     0.723847806,    0.105138905,    0.681902885,\
     0.000000000,    0.000000000, -205.848587036,\
    -0.047275543,    0.744895935,    0.320411682,\
   162.292602539,  249.404571533,  -20.000000000 )

scene F5, store


show cartoon, SARS_CoV

select active_sites, ((resi 41+145+166 and (SARS_CoV or SARS_CoV_2)) or (resi 41+148+169 and MERS))

show sticks, active_sites

color grey, all and not active_sites

set_view (\
     0.820171833,   -0.052366033,   -0.569715023,\
    -0.050979991,    0.985152602,   -0.163942575,\
     0.569842100,    0.163506135,    0.805324256,\
     0.000017090,    0.000013676,  -70.030883789,\
    15.378531456,    1.014719009,   11.732209206,\
    26.476709366,  113.588623047,  -20.000000000 )

deselect

scene F6, store