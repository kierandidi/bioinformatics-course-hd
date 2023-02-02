# DNA GROOVE CODE
# Written by Ebbe Sloth Andersen, 5/9-2020

select nts, resn DA+DT+DC+DG
hide everything, nts
show spheres, nts
color white, nts

# color AT major groove
select resn DT & name C7
color green, sele
select resn DT & name O4
color red, sele
select resn DA & name N6
color blue, sele
select resn DA & name N7
color red, sele

# color GC major groove
select resn DG & name O6
color red, sele
select resn DG & name N7
color red, sele
select resn DC & name N4
color blue, sele

# color AT minor groove
select resn DT & name O2
color red, sele
select resn DA & name C2
color yellow, sele
select resn DA & name N3
color red, sele

# color GC minor groove
select resn DC & name C5
color yellow, sele
select resn DC & name O2
color red, sele
select resn DG & name N2
color blue, sele
select resn DG & name N3
color red, sele

deselect