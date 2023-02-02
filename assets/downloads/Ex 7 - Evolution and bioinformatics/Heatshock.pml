reinit
fetch 2qxl, async=0
remove solvent
remove not chain A
color red, ss h
color yellow, ss s
color green, ss l+''
zoom 2qxl
set_view (\
 0.199747995, 0.212087438, 0.956618607,\
 0.376789302, 0.884598374, -0.274796277,\
 -0.904504299, 0.415335208, 0.096784934,\
 0.000000000, 0.000000000, -305.530761719,\
 78.327835083, 88.848686218, -11.949821472,\
 240.882781982, 370.178741455, -20.000000000 )
scene F1, store

fetch 4b9q, async=0
remove solvent
remove not chain A
align 4b9q, 2qxl
reset
color red, ss h
color yellow, ss s
color green, ss l+''
zoom 2qxl
set_view (\
 0.199747995, 0.212087438, 0.956618607,\
 0.376789302, 0.884598374, -0.274796277,\
 -0.904504299, 0.415335208, 0.096784934,\
 0.000000000, 0.000000000, -305.530761719,\
 78.327835083, 88.848686218, -11.949821472,\
 240.882781982, 370.178741455, -20.000000000 )
scene F2, store

# Sammenlign HSP og actin
hide everything
fetch 1atn 1atr, async=0
remove solvent
remove not chain A
align 1atr, 1atn
reset
color red, ss h
color yellow, ss s
color green, ss l+''
zoom 1atr
set_view (\
 0.958695173, -0.196217537, 0.205921307,\
 -0.060286976, 0.567336917, 0.821276307,\
 -0.277975500, -0.799767375, 0.532072842,\
 0.000000000, 0.000000000, -204.769836426,\
 94.304534912, 50.986602783, 71.455520630,\
 161.442108154, 248.097564697, -20.000000000 )
scene F3, store

scene F1
