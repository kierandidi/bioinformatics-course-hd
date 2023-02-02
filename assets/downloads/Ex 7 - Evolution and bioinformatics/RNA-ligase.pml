# This script shows details of RNA ligase
# Written by Ebbe Sloth Andersen, 14/9-2019

reinit
fetch 3HHN, type=pdb1, async=0

# Fokuser på kæde B og farv stems som i Figur 2
hide everything
show cartoon, chain C
color gray, all
color palegreen, resi 46-54+106-113
color forest, resi 55-59+65-70
color lightpink, resi 72-76+82-85
color purple, resi 86-105
color cyan, resi 5-10+115-121
color red, resi 35-39+77-81
color blue, resi -7-3+11-19
set_view (\
    -0.730618596,    0.380703807,    0.566801012,\
     0.657440603,    0.616334081,    0.433483332,\
    -0.184309676,    0.689347744,   -0.700594783,\
     0.000016689,    0.000037282, -210.589675903,\
    -1.508117676,   40.231620789,    2.032554626,\
   135.342788696,  285.873565674,  -20.000000000 )
scene F1, store

# Farv residues omkring active site og vis dem i stick format
color red, resi 1
color yellow, resi 47
color blue, resi 30
hide everything
show sticks, resi 1+47+30+33+32+31+29+71 & chain C
sele resi 1+47+30+33+32+31+29+71 & chain C
zoom sele
# Vis polære kontakter
select resi 1+47+30+33+32+31+29+71 & chain C
dist HB, sele, sele, mode=2
hide labels
scene F2, store

scene F1