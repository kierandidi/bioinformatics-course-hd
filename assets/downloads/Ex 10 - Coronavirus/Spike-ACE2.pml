# Spike-ACE2 
# by Ebbe Sloth Andersen 31/5-2021

reinit
fetch 6vxx, async=0
fetch 6vsb , async=0
align 6vsb, 6vxx
set_view (\
    -0.943680167,    0.046812125,   -0.327529669,\
    -0.330630779,   -0.170001134,    0.928319812,\
    -0.012226451,    0.984330058,    0.175904989,\
     0.000143678,    0.000455528, -565.865234375,\
   216.740447998,  198.277236938,  199.891937256,\
   443.839630127,  687.539184570,  -20.000000000 )
hide everything, 6vsb
hide everything, resn NAG
scene F1, store
hide everything, 6vxx
show cartoon, 6vsb
scene F2, store
fetch 6m17, async=0
align 6m17 & chain F, 6vsb & chain A
set_view (\
    -0.943680167,    0.046812125,   -0.327529669,\
    -0.330630779,   -0.170001134,    0.928319812,\
    -0.012226451,    0.984330058,    0.175904989,\
    -0.000154376,    0.000198960, -1146.631835938,\
   196.597061157,  176.100280762,  279.889526367,\
  1024.687866211, 1268.387695312,  -20.000000000 )
sele 6m17 & chain F
hide everything, resn NAG
color cyan, sele
scene F3, store
hide everything, 6vsb
zoom sele
scene F4, store

# Now show Spike from top
hide everything
set_view (\
    -0.897275984,    0.440175921,   -0.033751018,\
    -0.441389918,   -0.895916164,    0.050038390,\
    -0.008215223,    0.059795175,    0.998176038,\
     0.000143678,    0.000455528, -565.865234375,\
   216.740447998,  198.277236938,  199.891937256,\
   443.839630127,  687.539184570,  -20.000000000 )
show spheres, 6vxx
color white, 6vxx
scene SARS-Cov2, store, SARS-Cov2

# Color Cluster-5
color red, resi 69+70+453+692+1229
scene Cluster-5, store, Cluster-5

# Color Delta
color white, 6vxx
color red, resi 19+157+158+452+478+614+681+950
scene Delta, store, Delta

# Color Omicron
color white, 6vxx
color red, resi 67+69+70+95+142+143+144+145+211+339+371+373+375+417+440+446+477+478+484+493+496+498+501+505+547+614+655+679+681+764+796+856+954+969+981+
scene Omicron, store, Omicron

hide everything, 6vxx
hide everything, 6vsb
show surface, 6vsb
color white, 6vsb
scene SARS-Cov2-open, store, SARS-Cov2-open

# Color Cluster-5
color red, resi 69+70+453+692+1229

show spheres, resi 69+70+453+692+1229 & 6vsb
scene Cluster-5-open, store, Cluster-5-open

# Color Delta
color white, 6vsb
color red, resi 19+157+158+452+478+614+681+950
show spheres, resi 19+157+158+452+478+614+681+950 & 6vsb
scene Delta-open, store, Delta-open

# Color Omicron
color white, 6vsb
color red, resi 67+69+70+95+142+143+144+145+211+339+371+373+375+417+440+446+477+478+484+493+496+498+501+505+547+614+655+679+681+764+796+856+954+969+981
show spheres, resi 67+69+70+95+142+143+144+145+211+339+371+373+375+417+440+446+477+478+484+493+496+498+501+505+547+614+655+679+681+764+796+856+954+969+981 & 6vsb
scene Omicron-open, store, Omicron-open

scene F1