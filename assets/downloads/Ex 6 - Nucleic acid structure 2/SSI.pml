# This script shows details of the self-splicing intron type I
# Written by Ebbe Sloth Andersen, 14/9-2019

reinit

# Load self-splicing intron and make a nice view
fetch 1HR2, type=pdb1, async=0
remove solvent
select resi 223+250+153
show spheres, sele
color salmon, sele
set_view (\
     0.742555022,   -0.133601606,   -0.656325459,\
     0.334959954,    0.922638535,    0.191155136,\
     0.580013335,   -0.361786336,    0.729859352,\
     0.000000000,    0.000000000, -273.275604248,\
    43.601715088,   61.319206238,   80.354133606,\
   215.452575684,  331.098632812,  -20.000000000 )
scene F1, store

# Show A-minor motif
hide everything
select resi 223+250+153
show sticks, sele
util.cbas sele
zoom sele
dist HB-F2, sele, sele, mode=2
hide labels
desele
set_view (\
     0.471328944,   -0.317611545,    0.822783589,\
    -0.017002817,    0.929458857,    0.368531108,\
    -0.881793857,   -0.187690347,    0.432681620,\
    -0.000031000,   -0.000256926,  -51.817684174,\
    59.481529236,   68.411949158,   97.437927246,\
    40.856666565,   62.786842346,  -20.000000000 )
scene F2, store

# Load larger self-splicing intron and make a nice view
hide everything
fetch 1GRZ, type=pdb1, async=0
select resi 414+264+311
show spheres, sele
select resi 414
color purple, sele
select resi 264+311
color cyan, sele
set_view (\
    -0.290996939,    0.948996782,   -0.121366195,\
     0.650288582,    0.289241463,    0.702469528,\
     0.701744020,    0.125494450,   -0.701289654,\
     0.000000000,    0.000000000, -295.367675781,\
    57.373962402,   27.675712585,   31.471054077,\
   232.870117188,  357.865234375,  -20.000000000 )
scene F3, store

# 
hide everything
select resi 414+264+311
show sticks, sele
util.cbap sele
zoom sele
select resi 264+311
util.cbac sele
dist HB-F4, sele, sele, mode=2
hide labels
desele
set_view (\
     0.792808473,    0.529070556,    0.302562386,\
     0.548933744,   -0.835558295,    0.022708524,\
     0.264823735,    0.148082331,   -0.952858984,\
     0.000258805,    0.000054814,  -68.782966614,\
    37.738819122,   25.556056976,   21.108884811,\
    54.228809357,   83.336601257,  -20.000000000 )
scene F4, store

# 
hide everything
select resi 414
util.cbap sele
select resi 305+306+262+313+413+414
show sticks, sele
select resi 305+306+262+313+413
util.cbaw sele
select resi 305+306+262+313+413+414
zoom sele
dist HB-F5, sele, sele, mode=2
hide labels
desele
set_view (\
    -0.520997286,   -0.507543504,   -0.686269999,\
     0.359941691,   -0.859662056,    0.362520903,\
    -0.773951590,   -0.058146410,    0.630566537,\
    -0.000074004,   -0.000110973,  -70.713233948,\
    40.345146179,   21.109272003,   18.851707458,\
    55.746093750,   85.668304443,  -20.000000000 )
scene F5, store

scene F1