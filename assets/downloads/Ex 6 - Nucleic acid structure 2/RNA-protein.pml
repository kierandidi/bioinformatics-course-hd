# RNA-protein binding
# Written by Ebbe Sloth Andersen, 14/10-2020

reinit

# TAR-Tat motif

fetch 6MCE, async=0
hide everything
remove solvent
remove (hydro)
sele 6MCE & chain A
show sticks, sele
show ribbon, sele
util.cbaw sele
dist HB4, 6MCE & chain A, 6MCE & chain A, mode=2
hide labels
set_view (\
     0.335236400,    0.927293479,    0.166563138,\
     0.802048862,   -0.373657197,    0.465935946,\
     0.494297355,   -0.022605693,   -0.868997931,\
    -0.000058598,    0.000068784, -130.820007324,\
    18.117944717,   -5.878735542,    0.119300887,\
    95.587379456,  166.042755127,  -20.000000000 )
sele 6MCE & chain A & resi 23+27+38
util.cbag sele
scene F1, store, TAR with base triple shown in green.

hide everything, HB4
sele 6MCE & chain B
show sticks, sele
show cartoon, sele
util.cbac sele
dist HB5, 6MCE & chain A, 6MCE & chain B, mode=2
hide labels
set_view (\
     0.335236400,    0.927293479,    0.166563138,\
     0.802048862,   -0.373657197,    0.465935946,\
     0.494297355,   -0.022605693,   -0.868997931,\
    -0.000058598,    0.000068784, -130.820007324,\
    18.117944717,   -5.878735542,    0.119300887,\
    95.587379456,  166.042755127,  -20.000000000 )
scene F2, store, TAR with Tat protein in cyan.

# Kink turn motif

hide everything
fetch 1RLG, async=0
hide everything
remove solvent
hide all
sele chain C
show sticks, sele
show ribbon, sele
util.cbaw sele
sele resi 6+7+19+20 & chain C 
util.cbag sele
set_view (\
    -0.334297895,    0.555298030,   -0.761503160,\
    -0.454240799,    0.613020241,    0.646427870,\
     0.825774968,    0.562002897,    0.047307745,\
    -0.000279278,   -0.000145297, -166.505126953,\
    17.360900879,   50.509479523,   27.019577026,\
   111.832572937,  221.137786865,  -20.000000000 )
dist HB6, 1RLG & chain C, 1RLG & chain C, mode=2
hide labels
scene F3, store, K-turn with non-WC basepairs shown in green.

sele 1RLG and chain A
show cartoon, sele
util.cbac sele
sele 1RLG and chain A and resi 30+79+54+93+34+41+37+33+89+32
show sticks, sele
util.cbac sele
hide everything, HB6
dist HB7, 1RLG & chain A, 1RLG & chain C, mode=2
hide labels
scene F4, store, K-turn with L7 protein in cyan cartoon representation.

scene F1, recall
