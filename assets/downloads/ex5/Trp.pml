# This script shows details of the Trp repressor protein.
# Written by Ebbe Sloth Andersen, 15/9-2019.

# Get apo-repressor by symmetry expansion
reinit
fetch 3WRP, async=0
symexp sym, 3WRP, all, 2.2
alter 3WRP, chain='B'
create 3WRP, (3WRP or sym03000000)
remove sym*
remove solvent

# Get apo-repressor by biological assembly
reinit
fetch 3WRP, type=pdb1, async=0
split_states 3WRP
alter 3WRP_0002, chain='B'
delete 3WRP
create 3WRP, (3WRP_0001 or 3WRP_0002)
delete 3WRP_*
remove solvent

# Get Trp-repressor
#fetch 1TRO, async=0
#remove solvent
#remove chain K+L
#remove chain E+G

# Get Trp-repressor by biological assembly
fetch 1TRO, type=pdb1, async=0
remove solvent

# Align and color 
align 3WRP, 1TRO
color white, chain A+B+C
color gray, chain I+J
sele resi 46-63
color red, sele
sele resi 79-91
color blue, sele
sele /1TRO/J/A/TRP`110 or /1TRO/I/A/TRP`109
show spheres, sele
color yellow, sele
deselect

# Set view perpendicular to C2 symmetry axis
set_view (\
 0.471024573, -0.787085533, 0.398281634,\
 -0.329496711, -0.575813353, -0.748247445,\
 0.818268180, 0.221210495, -0.530565977,\
 -0.000014715, -0.000012293, -179.773406982,\
 19.990615845, 11.788526535, 17.505893707,\
 105.039100647, 254.501983643, -20.000000000 )

scene F1, store, Trp.

hide everything
create helix, resi 68-91 and 1TRO + chain I+J
show sticks, helix
show cartoon, helix
set h_bond_cutoff_center, 3.6
set h_bond_cutoff_edge, 3.2
dist HB, helix & chain C+A, helix & chain J+I, mode=2
hide labels

scene F2, store, Trp binding motif.

scene F1