# This script shows details of the Cas9 protein.
# Written by Ebbe Sloth Andersen.

reinit

# Get Cas9
fetch 4OO8, type=pdb1, async=0
remove solvent
hide everything, chain A
set_view (\
 -0.429226935, 0.422920287, -0.798061669,\
 0.900436461, 0.131344557, -0.414685369,\
 -0.070558004, -0.896597385, -0.437192172,\
 0.000000000, 0.000000000, -326.643585205,\
 -17.070137024, 94.364929199, -28.041076660,\
 257.528289795, 395.758880615, -20.000000000 )
scene F1, store, May I present to you ... the guide RNA.

# Cas9 domains
show cartoon, chain A
color red, chain C
color cyan, chain A & resi 1-60+718-775+909-1099
color grey, chain A & resi 94-718
color purple, chain A & resi 775-909
color wheat, chain A & resi 1099-1368
set_view (\
 -0.429226935, 0.422920287, -0.798061669,\
 0.900436461, 0.131344557, -0.414685369,\
 -0.070558004, -0.896597385, -0.437192172,\
 0.000000000, 0.000000000, -326.643585205,\
 -17.070137024, 94.364929199, -28.041076660,\
 257.528289795, 395.758880615, -20.000000000 )
scene F2, store, ... and the Cas9 protein with domain structure colors.

# Show tetra loop
sele chain B & resi 33-36
show sticks, sele
util.cbab sele
dist HB-F3, sele, sele, mode=2
hide labels
set_view (\
 0.032079533, -0.648028374, -0.760938942,\
 -0.993320882, -0.105090052, 0.047620393,\
 -0.110826358, 0.754328609, -0.647072434,\
 0.000000000, 0.000000000, -54.325267792,\
 -57.397624969, 127.661987305, 5.013797283,\
 42.830455780, 65.820083618, -20.000000000 )
scene F3, store, Tetra loop.

# Show RNA-protein binding.
hide everything, chain A
sele chain A & resi 100-140+345-374
show cartoon, sele
dist HB-F4, sele, chain B, mode=2
hide labels
set_view (\
 0.032079533, -0.648028374, -0.760938942,\
 -0.993320882, -0.105090052, 0.047620393,\
 -0.110826358, 0.754328609, -0.647072434,\
 0.000233585, -0.000023812, -205.446487427,\
 -42.107742310, 127.547416687, -12.969284058,\
 139.255447388, 271.629913330, -20.000000000 )
scene F4, store, Tetra loop.

sele (chain B & resi 42+43) or (chain A & resi 351+359+364)
show sticks, sele
set_view (\
 -0.110619344, -0.817626178, -0.565021634,\
 -0.987990320, 0.152143210, -0.026728269,\
 0.107826710, 0.555272222, -0.824640810,\
 0.000000000, 0.000000000, -53.582889557,\
 -44.498916626, 126.018112183, -16.988250732,\
 48.479129791, 58.686645508, -20.000000000 )
scene F5, store, Base specific interaction in major groove.

sele (chain B & resi 24+47) or (chain A & resi 104+105)
dist HB-F6, chain B & resi 47, chain B & resi 24, mode=2
hide labels
show sticks, sele
set_view (\
 0.501268923, -0.459222853, -0.733374953,\
 0.510788739, -0.527070224, 0.679169953,\
 -0.698433697, -0.715048432, -0.029650792,\
 0.000000000, 0.000000000, -48.967456818,\
 -26.181694031, 121.422775269, -8.283507347,\
 42.412448883, 55.522441864, -20.000000000 )
scene F6, store, Base specific interaction in minor groove.

scene F1
