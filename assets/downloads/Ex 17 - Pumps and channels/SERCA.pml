# Copyright (C) 2015-2016 Morten Kjeldgaard <mok@mbg.au.dk>
# License: Creative Commons cc-by-sa version 4.0
# Sarco/Endoplasmic Reticulum Ca2+-ATPase
# Version 2.0

reinitialize

# Change default values
set dash_color, white


# MgE1 -> E1 -> E1P -> E2P -> E2Pi -> E2

# 4h1w MgE1, Mg2+, K+, SLN, (AMP)PCP
fetch 4h1w, async=0

# 1t5t, E1 > E1P, Mg2+, Ca2+, K+, AlF4, ADP
# (minimal differences to the pure E1 form)
fetch 1t5t, async=0

# 3b9b, E2P, Mg2+, Na+, BeF3
# Mimics a covalently attached phosphate at the catalytic Asp351
fetch 3b9b, async=0

# 3b9r, E2~P, Mg2+, K+, AlF4, AMPPCP
# Mimicks a cleaved but still bound inorganic phosphate moiety in a
# state immediately after the completion of dephosphorylation
fetch 3b9r, async=0

# 2c8k, E2, Mg2+, Na+, TG, AMPPCP
fetch 2c8k, async=0

hide everything

# Align on residues 760-980
align /4h1w///760-980, /2c8k///760-980
align /1t5t///760-980, /2c8k///760-980
align /3b9b///760-980, /2c8k///760-980
align /3b9r//A/760-980, /2c8k///760-980

# A domain
color red, chain A and (resid 1:43 or resid 123:238)

# P domain
color green, chain A and (resid 330:359 or resid 605:745)

# N domain
color marine, chain A and resid 360:604

# M1-2
color lime, chain A and resid 44:122

# M3-4
color yellow, chain A and resid 239:329

# M5-6
color tan, chain A and resid 746:994

D = {'1t5t': 'E1-E1P', '2c8k': 'E2', '4h1w': 'MgE1', '3b9r': 'E2-P', '3b9b': 'E2P'}

create MgE1, /4h1w
show cartoon, MgE1

create E1-E1P, /1t5t
show cartoon, E1-E1P

create E2P, /3b9b
show cartoon, E2P

create E2-P, /3b9r//A
show cartoon, E2-P

create E2, /2c8k
show cartoon, E2

# Delete auto objects
for obj in D.keys(): cmd.delete(obj)

# Disable all cartoons
for obj in D.values(): cmd.disable(obj)

# Create scenes

set_view (\
   0.988201737,   -0.153035462,    0.006156126,\
   0.089321353,    0.543196678,   -0.834838688,\
   0.124417476,    0.825540066,    0.550459206,\
  -0.000106901,   -0.000022382, -422.233276367,\
  -3.961834431,   27.984703064,  108.473701477,\
 318.489379883,  525.961303711,  -20.0 )

enable MgE1
deselect
scene F1, store

disable MgE1
enable E1-E1P
deselect
scene F2, store

disable E1-E1P
enable E2P
deselect
scene F3, store

disable E2P
enable E2-P
deselect
scene F4, store

disable E2-P
enable E2
deselect
scene F5, store

#select calciums, resn Ca
#select na, resn na
#select mg, resn Mg
#select acp, chain A and resid 1996:1996
#select alf, chain A and resid 2000:2000
#select active, ////771+309+800+908+796+768

set_view (\
    -0.235304311,    0.705121338,   -0.668889940,\
    -0.935490727,    0.022312582,    0.352615535,\
     0.263562500,    0.708721519,    0.654392898,\
     0.000000000,    0.000000000,  -34.567314148,\
    -3.064622402,   30.591943741,  127.893524170,\
    20.601781845,   48.532844543,  -20.000000000 )
disable E2
enable E2P

# Active site of E2P
select /E2P//A/998
show sticks, (sele)
util.cbaw('sele')
select /E2P//A/351+684 and (sidechain or name CA)
show sticks, (sele)
util.cbaw('sele')
select /E2P//A/625-626
show sticks, (sele)
util.cbaw('sele')

dist Hbond, /E2P//A/626/N, /E2P//A/998/F1
dist Hbond, /E2P//A/684/NZ, /E2P//A/998/F1
dist Hbond, /E2P//A/625/OG1, /E2P//A/998/F3
hide labels, Hbond
deselect
scene F6, store

set_view (\
    -0.552446902,    0.810675323,   -0.193868935,\
    -0.612528801,   -0.237096444,    0.754037440,\
     0.565319598,    0.535322368,    0.627554536,\
     0.000000000,    0.000000000,  -57.992832184,\
    -3.064622402,   30.591943741,  127.893524170,\
    44.027294159,   71.958366394,  -20.000000000 )
disable E2P
disable Hbond
enable E2

# Active site in E2
select /E2//A/625-626
show sticks, (sele)
util.cbaw('sele')
select /E2//A/351+684 and (sidechain or name CA)
show sticks, (sele)
util.cbaw('sele')

dist Hbond2, /E2//A/684/NZ, /E2//A/351/OD1
dist Hbond2, /E2//A/684/NZ, /E2//A/351/OD2
hide labels, Hbond2
deselect
scene F7, store

scene F1, recall