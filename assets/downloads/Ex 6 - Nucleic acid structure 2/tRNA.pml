# Exercise looking at tRNA

reinit

fetch 1EHZ, async=0
remove solvent
set_view (\
    -0.635058641,   -0.033994645,   -0.771714747,\
    -0.681986213,    0.493833840,    0.539464831,\
     0.362760752,    0.868891418,   -0.336797982,\
     0.000033729,   -0.000006735, -233.426651001,\
    62.157913208,   40.638069153,   26.492446899,\
   184.036956787,  282.820434570,  -20.000000000 )
scene F1, store, Meet tRNA.

hide everything
select resi 54+58
show sticks, sele
zoom sele 
set h_bond_cutoff_center, 3.6
set h_bond_cutoff_edge, 3.2
dist HB, resi 54, resi 58, mode=2
hide labels
set_view (\
     0.292753667,    0.668285310,   -0.683879316,\
    -0.545213640,   -0.470889539,   -0.693546593,\
    -0.785518944,    0.575897515,    0.226502836,\
     0.000000000,    0.000000000,  -40.540676117,\
    73.751480103,   66.487586975,   39.563434601,\
    31.962577820,   49.118774414,  -20.000000000 )
scene F2, store, This view shows you a non-Watson Crick basepair.

hide everything
select resi 19+56
show sticks, sele 
zoom sele
dist HB2, resi 19, resi 56, mode=2
hide labels
set_view (\
     0.292470962,    0.495485574,   -0.817896664,\
    -0.824829578,   -0.302048862,   -0.477935046,\
    -0.483854502,    0.814407349,    0.320350885,\
     0.000000000,    0.000000000,  -51.013458252,\
    81.632980347,   67.775047302,   34.045516968,\
    40.219398499,   61.807518005,  -20.000000000 )
scene F3, store, This view shows you the critical hydrogen bond.

hide everything
select resi 13+22+46
show sticks, sele
zoom sele
dist HB3, resi 13+22+46, resi 13+22+46, mode=2
hide labels
set_view (\
    -0.510191858,   -0.803265691,   -0.307353765,\
    -0.654644132,    0.594466686,   -0.466957986,\
     0.557802200,   -0.037030268,   -0.829147518,\
     0.000084106,    0.000061069,  -64.090248108,\
    67.761215210,   51.031948090,   24.966321945,\
    50.524887085,   77.644561768,  -20.000000000 )
scene F4, store, This view shows you the critical hydrogen bond.

hide everything
fetch 1GTR, async=0
remove solvent
sele /1GTR/C/A/ATP
show spheres, sele
util.cbay sele
deselect
set_view (\
     0.981971741,   -0.012357473,    0.188619688,\
     0.074546769,    0.942300975,   -0.326356828,\
    -0.173703566,    0.334535658,    0.926234722,\
     0.000000000,    0.000000000, -313.811737061,\
    38.085212708,   19.055473328,   19.384586334,\
   247.411560059,  380.211914062,  -20.000000000 )
scene F5, store, This view shows you the critical hydrogen bond.

scene F1
