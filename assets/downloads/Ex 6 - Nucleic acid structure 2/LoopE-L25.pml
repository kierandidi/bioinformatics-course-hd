# Exercise looking at the 5S rRNA Loop E binding to L25

reinit

fetch 1D6K, async=0
remove solvent
set_view (\
    -0.635058641,   -0.033994645,   -0.771714747,\
    -0.681986213,    0.493833840,    0.539464831,\
     0.362760752,    0.868891418,   -0.336797982,\
     0.000033729,   -0.000006735, -233.426651001,\
    62.157913208,   40.638069153,   26.492446899,\
   184.036956787,  282.820434570,  -20.000000000 )
sele chain B
color blue, sele
sele resi 272-278+298-304
color yellow, sele
desele
reset
scene F1, store, 5S rRNA.

hide everything
sele resi 272+304
show sticks, sele
zoom sele
dist HB-F2, sele, sele, mode=2
hide labels
util.cbay sele
set_view (\
     0.953592360,   -0.251448393,    0.165627822,\
    -0.076953717,    0.328281075,    0.941440105,\
    -0.291096449,   -0.910496175,    0.293697089,\
     0.000000000,    0.000000000,  -60.388210297,\
    -3.469070435,   26.180040359,   13.852859497,\
    47.610527039,   73.165893555,  -20.000000000 )
scene F2, store

hide everything
sele resi 273+303
show sticks, sele
zoom sele
dist HB-F3, sele, sele, mode=2
hide labels
util.cbay sele
set_view (\
     0.344979525,    0.934871435,    0.083670080,\
    -0.334683776,    0.039238818,    0.941513062,\
     0.876910746,   -0.352806211,    0.326423824,\
     0.000000000,    0.000000000,  -47.273223877,\
    -4.598750114,   22.855966568,   13.339544296,\
    37.270568848,   57.275878906,  -20.000000000 )
scene F3, store

hide everything
sele resi 274+302
show sticks, sele
zoom sele
dist HB-F4, sele, sele, mode=2
hide labels
util.cbay sele
set_view (\
    -0.497969002,    0.865590632,   -0.052693170,\
    -0.425967932,   -0.191223741,    0.884298444,\
     0.755365312,    0.462799221,    0.463937730,\
     0.000000000,    0.000000000,  -50.725296021,\
    -4.187067032,   20.071897507,   11.818762779,\
    39.992210388,   61.458381653,  -20.000000000 )
scene F4, store

hide everything
sele resi 275+301
show sticks, sele
zoom sele
dist HB-F5, sele, sele, mode=2
hide labels
util.cbay sele
set_view (\
    -0.773271441,    0.632286549,   -0.047558423,\
    -0.269285083,   -0.259571731,    0.927420378,\
     0.574050307,    0.729954600,    0.370986074,\
     0.000000000,    0.000000000,  -62.238292694,\
    -3.951290131,   17.008974075,   10.352360725,\
    49.069145203,   75.407440186,  -20.000000000 )
scene F5, store

hide everything
sele resi 276+300
zoom sele
show sticks, sele
dist HB55, sele, sele, mode=2
hide labels
util.cbay sele
set_view (\
    -0.876716852,    0.474430829,   -0.079244837,\
    -0.254109681,   -0.316947907,    0.913769066,\
     0.408403873,    0.821252823,    0.398431659,\
     0.000000000,    0.000000000,  -51.617485046,\
    -2.933554649,   14.029651642,    8.177562714,\
    40.695617676,   62.539352417,  -20.000000000 )
scene F6, store

hide everything
sele resi 277+299
zoom sele
show sticks, sele
dist HB-F7, sele, sele, mode=2
hide labels
util.cbay sele
set_view (\
    -0.962746382,   -0.122317553,   -0.241150811,\
    -0.203291729,   -0.260627121,    0.943792999,\
    -0.178293377,    0.957658291,    0.226052627,\
     0.000000000,    0.000000000,  -49.977584839,\
    -3.024603844,   10.733263016,    7.953023434,\
    39.402709961,   60.552459717,  -20.000000000 )
scene F7, store

hide everything
sele resi 278+298
zoom sele
show sticks, sele
dist HB-F8, sele, sele, mode=2
hide labels
util.cbay sele
set_view (\
     0.046610221,   -0.898491740,   -0.436505467,\
     0.062584490,   -0.433495790,    0.898979187,\
    -0.996949732,   -0.069219984,    0.036026686,\
     0.000000000,    0.000000000,  -59.373474121,\
    -2.490821838,    7.334706783,    8.994855881,\
    46.810501099,   71.936447144,  -20.000000000 )
scene F8, store

# Now color RNA groove code
select nts, resn A+U+C+G
show spheres, nts
color white, nts
# color AU major groove
select resn U & name C5
color yellow, sele
select resn U & name O4
color red, sele
select resn A & name N6
color blue, sele
select resn A & name N7
color red, sele
# color GC major groove
select resn G & name O6
color red, sele
select resn G & name N7
color red, sele
select resn C & name N4
color blue, sele
# color AU minor groove
select resn U & name O2
color red, sele
select resn A & name C2
color yellow, sele
select resn A & name N3
color red, sele
# color GC minor groove
select resn C & name C5
color yellow, sele
select resn C & name O2
color red, sele
select resn G & name N2
color blue, sele
select resn G & name N3
color red, sele
select name O2'
color blue, sele
deselect
hide (hydro)
show cartoon, chain A
set_view (\
    -0.415601194,    0.013356701,   -0.909441173,\
    -0.050444063,    0.998007953,    0.037715372,\
     0.908140957,    0.061550185,   -0.414104491,\
     0.000000000,    0.000000000, -229.593032837,\
   -11.506761551,   13.528557777,   12.177137375,\
   185.870910645,  273.315155029,  -20.000000000 )
scene F9, store, RNA rende-kode vist på spacefill model med protein.

hide everything, chain A
scene F10, store, RNA rende-kode vist på spacefill model uden protein.

hide everything
sele resi 10+76+88+90+275+301
show sticks, sele
dist HB-F11, sele, sele, mode=2
hide labels
set_view (\
     0.642657101,   -0.756800890,    0.119113803,\
     0.196743593,    0.313296854,    0.929022133,\
    -0.740433872,   -0.573629260,    0.350252151,\
     0.000259295,   -0.000212796, -107.166389465,\
    -5.962121010,   13.641083717,   11.400516510,\
    63.423034668,  150.867309570,  -20.000000000 )
scene F11, store

hide everything
sele resi 14+15+279+297
show sticks, sele
dist HB-F12, sele, sele, mode=2
hide labels
set_view (\
    -0.231742516,   -0.943858862,    0.235340804,\
    -0.101721086,   -0.217090145,   -0.970821559,\
     0.967428565,   -0.248921350,   -0.045710310,\
    -0.000259910,   -0.000031486,  -75.826980591,\
    -4.350107193,    7.498066902,   10.688451767,\
    32.116539001,  119.560775757,  -20.000000000 )
scene F12, store

scene F1