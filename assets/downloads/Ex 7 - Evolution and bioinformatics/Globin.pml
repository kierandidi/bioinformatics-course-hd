# Script for loading globins by Ebbe S. Andersen, August 11, 2020.

reinit
fetch 1hbb, async=0
split_chains
delete 1hbb
delete 1hbb_B
delete 1hbb_C
delete 1hbb_D
fetch 1mbd 1gdj, async=0
remove solvent
align 1hbb_A, 1mbd
align 1gdj, 1mbd
reset
scene F1, store, Structural alignment of globins.

hide everything, 1mbd
hide everything, 1gdj
color grey, 1hbb_A
sele resi 2+10+14+19+37+46+58+62+65+80+83+87+90 & 1hbb_A
show sticks, sele
color green, sele
sele /1hbb_A/E/A/HEM`142
color red, sele
scene F2, store, Haemoglobin with conserved residues in green.

delete sele
scene F1
