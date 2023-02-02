# This script shows details of the TALE protein.
# Written by Ebbe Sloth Andersen, 15/9-2019.

reinit

# Get TALE
fetch 3UGM, type=pdb1, async=0
remove solvent
rotate z, 90
rotate x, -90
color grey, chain A
color blue, resi 220-254
color grey, resi 255-288
color blue, resi 289-322
color grey, resi 323-356
color blue, resi 357-390
color grey, resi 391-424
color blue, resi 425-458
color grey, resi 458-492
color blue, resi 493-525
color grey, resi 526-559
color blue, resi 560-593
color grey, resi 594-627
color blue, resi 628-661
color grey, resi 662-695
color blue, resi 696-729
color grey, resi 730-763
color blue, resi 764-797
color grey, resi 798-831
color blue, resi 832-865
color grey, resi 866-899
color blue, resi 900-933
color grey, resi 934-967
color blue, resi 968-1001
color grey, resi 1002-1034
color blue, resi 1035-1060
set_view (\
     1.000000000,    0.000000000,    0.000000000,\
     0.000000000,    1.000000000,    0.000000000,\
     0.000000000,    0.000000000,    1.000000000,\
    -0.000000015,   -0.000001505, -221.204666138,\
    -3.032119751,   56.974212646,  -11.949649811,\
   143.695343018,  298.713928223,   20.000000000 )
scene F1, store, TALE.

# Show axis view
set_view (\
    -0.020486375,   -0.024388291,    0.999492288,\
     0.139641941,    0.989832401,    0.027015060,\
    -0.989989877,    0.140124515,   -0.016872823,\
    -0.000000015,   -0.000001505, -221.204666138,\
    -3.032119751,   56.974212646,  -11.949649811,\
   143.695343018,  298.713928223,   20.000000000 )
scene F2, store, Helix axis view.

# Show repeat units.
show spheres
set_view (\
     1.000000000,    0.000000000,    0.000000000,\
     0.000000000,    1.000000000,    0.000000000,\
     0.000000000,    0.000000000,    1.000000000,\
    -0.000000015,   -0.000001505, -371.077392578,\
    -3.032119751,   56.974212646,  -11.949649811,\
   293.568115234,  448.586547852,   20.000000000 )
scene F3, store, Repeat units are seen better in spacefill.

# Now show TALE 1
hide everything
show cartoon, resi 425-458
util.cbab resi 425-458
show sticks, ///B/DC`5
show sticks, ///C/DG`25
show sticks, resi 436+437
dist HB-F4-AA, resi 437, resi 5+25, mode=2
dist HB-F4-BP, ///B/DC`5, ///C/DG`25, mode=2
hide labels
set_view (\
    -0.133401409,    0.102726117,    0.985718250,\
     0.988701820,    0.082328737,    0.125228375,\
    -0.068293132,    0.991294324,   -0.112547092,\
    -0.000359860,   -0.000199676, -110.220619202,\
    -5.008162022,   52.537784576,  -14.282911301,\
     5.887724400,  214.613418579,   20.000000000 )
scene F4, store

# Now show TALE 2
hide everything
show cartoon, resi 458-492
util.cbaw resi 458-492
show sticks, chain B & resi 6
show sticks, chain C & resi 24
show sticks, resi 470+471
dist HB-F5-AA, resi 470+471, resi 6+24, mode=2
dist HB-F5-BP, chain B & resi 6, chain C & resi 24, mode=2
hide labels
set_view (\
    -0.050819647,    0.160517752,    0.985718250,\
     0.858560801,   -0.497172117,    0.125228375,\
     0.510173619,    0.852671802,   -0.112547092,\
    -0.000359860,   -0.000199676, -110.220619202,\
    -5.008162022,   52.537784576,  -14.282911301,\
     5.887724400,  214.613418579,   20.000000000 )
scene F5, store

# Now show TALE 3
hide everything
show cartoon, resi 798-831
util.cbab resi 798-831
show sticks, chain B & resi 16
show sticks, chain C & resi 14
show sticks, resi 809-810
dist HB-F6-AA, resi 809-810, resi 14+16, mode=2
dist HB-F6-BP, chain B & resi 16, chain C & resi 14, mode=2
hide labels
set_view (\
     0.102319241,   -0.043952800,    0.993774414,\
     0.978577912,    0.183838189,   -0.092620812,\
    -0.178626850,    0.981967926,    0.061824203,\
    -0.000359860,   -0.000199676, -110.220619202,\
    -5.008162022,   52.537784576,  -14.282911301,\
    34.170063019,  186.331069946,   20.000000000 )
scene F6, store

# Now show TALE 4
hide everything
show cartoon, resi 866-899
util.cbaw resi 866-899
show sticks, chain B & resi 18
show sticks, chain C & resi 12
show sticks, resi 877-878
dist HB-F7-AA, resi 877-878, resi 14+16, mode=2
dist HB-F7-BP, chain B & resi 18, chain C & resi 12, mode=2
hide labels
set_view (\
    -0.019424103,    0.014505324,    0.999697566,\
     0.486460447,   -0.873414457,    0.022129092,\
     0.873476923,    0.486749202,    0.009911595,\
    -0.000359860,   -0.000199676, -110.220619202,\
    -5.008162022,   52.537784576,  -14.282911301,\
    34.170063019,  186.331069946,   20.000000000 )
scene F7, store

scene F1