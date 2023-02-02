### OPGAVE 1 og 2 ####

reinit

fetch 6YB7, 3CL, async=0

remove solvent

remove resn DMS

select DomI, resi 10-91
select DomII, resi 100-175
select DomIII, resi 200-306

set_view (\
     0.063962728,    0.636725128,   -0.768433034,\
    -0.678430796,    0.592449963,    0.434434116,\
     0.731873155,    0.493541121,    0.469869435,\
     0.000000000,    0.000000000, -202.681854248,\
    11.960700989,    0.785278320,    4.805091858,\
   159.795928955,  245.567779541,  -20.000000000 )

scene F1, store

color red, DomI
color blue, DomII
color yellow, DomIII

scene F2, store

util.cbaw
spectrum count, rainbow

scene F3, store, rainbow

select activesite, resi 41+145+166

util.cbag
color red, DomI
color blue, DomII
color yellow, DomIII
util.cbaw activesite and (sidechain or name CA)
show sticks, activesite and (sidechain or name CA)
orient activesite

scene F4, store, active site

dist /3CL/A/A/CYS`145/SG, /3CL/A/A/HIS`41/H07

scene F5, store

deselect

scene F2, recall

fetch 6yb7, type=pdb1, async=0
split_states 6yb7
alter 6yb7_0002, chain='B'
remove 6yb7
remove solvent
remove resn DMS
color grey, chain B

set_view (\
     0.750618219,    0.643171668,    0.151326030,\
    -0.519126356,    0.432390034,    0.737254560,\
     0.408751905,   -0.631954372,    0.658447623,\
    -0.000021666,   -0.000008449, -202.681686401,\
     4.523886204,   -1.767990351,   -6.524458885,\
   159.795928955,  245.567779541,  -20.000000000 )

scene F6, store, Protease dimer

util.cbaw activesite and (sidechain or name CA)
show sticks, activesite and (sidechain or name CA)

set_view (\
     0.337670624,    0.937738597,   -0.081399791,\
    -0.791828096,    0.329753220,    0.514074206,\
     0.508909047,   -0.109133512,    0.853874922,\
     0.000000000,    0.000000000, -104.959152222,\
     9.729798317,   -2.139160395,   19.750440598,\
    67.850067139,  142.068252563,  -20.000000000 )

scene F7, store

show sticks, /6yb7_0002//B/SER`1 or /3CL/A/A/HIS`172
util.cnc (/6yb7_0002//B/SER`1 or /3CL/A/A/HIS`172)

dist /3CL/A/A/GLU`166/OE2, /6yb7_0002//B/SER`1/OG
dist /3CL/A/A/GLU`166/OE2, /3CL/A/A/HIS`172/NE2

set_view (\
     0.380127937,    0.921993375,    0.073704086,\
    -0.071356192,   -0.050216563,    0.996187389,\
     0.922174811,   -0.383940160,    0.046697829,\
     0.000015400,   -0.000017500,  -37.159236908,\
     4.841976166,    2.805888414,   17.696079254,\
     0.049563251,   74.267768860,  -20.000000000 )

scene F8, store
