# This script shows details of the Myc-Max-Mad complexes.
# Written by Ebbe Sloth Andersen, 15/9-2019.

reinit

# Get Myc-Max
fetch 1NKP, type=pdb1, async=0
remove solvent
util.cbab chain B
set_view (\
     0.807565391,   -0.241633192,   -0.538006127,\
    -0.490948528,   -0.780908346,   -0.386203587,\
    -0.326814115,    0.576016247,   -0.749263465,\
    -0.000115572,   -0.000119954, -305.571380615,\
    66.646430969,   61.075172424,   43.153156281,\
   240.739883423,  370.362304688,  -20.000000000 )
scene F1, store, Myc-Max.

# Get Max-Max
hide everything
fetch 1AN2, type=pdb1, async=0
remove solvent
split_states 1AN2
alter 1AN2_0001 and chain A, chain='C'
alter 1AN2_0001 and chain B, chain='D'
delete 1AN2
create 1AN2, (1AN2_0001 or 1AN2_0002)
delete 1AN2_*
util.cbab 1AN2 & chain A+C
align 1AN2, 1NKP
set_view (\
     0.807565391,   -0.241633192,   -0.538006127,\
    -0.490948528,   -0.780908346,   -0.386203587,\
    -0.326814115,    0.576016247,   -0.749263465,\
    -0.000115572,   -0.000119954, -305.571380615,\
    66.646430969,   61.075172424,   43.153156281,\
   240.739883423,  370.362304688,  -20.000000000 )
scene F2, store, Max-Max.

# Get Mad-Max
hide everything
fetch 1NLW, type=pdb1, async=0
remove solvent
util.cbab 1NLW & chain B
util.cbac 1NLW & chain A
align 1NLW, 1NKP
set_view (\
     0.807565391,   -0.241633192,   -0.538006127,\
    -0.490948528,   -0.780908346,   -0.386203587,\
    -0.326814115,    0.576016247,   -0.749263465,\
    -0.000115572,   -0.000119954, -305.571380615,\
    66.646430969,   61.075172424,   43.153156281,\
   240.739883423,  370.362304688,  -20.000000000 )
scene F3, store, Mad-Max.

zoom chain F+G

# Now show Myc-Max recognition helices.
hide everything
show sticks, 1NKP and chain F+G
util.cbaw 1NKP and chain F+G
show cartoon, 1NKP & resi 906-914+207-215
show sticks, 1NKP & resi 906+910+914
show sticks, 1NKP & resi 207+211+215
dist HB-F6, 1NKP & chain F+G, 1NKP & resi 207+211+215+906+910+914, mode=2
hide labels
scene F4, store, Myc-Max recognition helices.

# Now show Max-Max recognition helices.
hide everything
show sticks, 1AN2 and chain B+D
util.cbaw 1AN2 and chain B+D
show cartoon, 1AN2 & resi 28-36
show sticks, 1AN2 & resi 28+32+36
dist HB-F7, 1AN2 & chain B+D, 1AN2 & resi 28+32+36, mode=2
hide labels
scene F5, store, Max-Max recognition helices.

# Now show Mad-Max recognition helices.
hide everything
show sticks, 1NLW and chain F+G
util.cbaw 1NLW and chain F+G
show cartoon, 1NLW & resi 6-14+207-215
show sticks, 1NLW & resi 6+10+14+207+211+215
dist HB-F8, 1NLW & chain F+G, 1NLW & resi 6+10+14+207+211+215, mode=2
hide labels
scene F6, store, Mad-Max recognition helices.

scene F1
