reinitialize

bg_color white

 

fetch 1efc , async=0

create eftu , /1efc//A                       

hide everything

 

select nucleotide , /eftu///GDP or /eftu///MG       

select sidechains , byres eftu within 4.0 of nucleotide 

 

show sticks , nucleotide sidechains

color yellow , (nucleotide and name C*)

center nucleotide

 

distance dist1 ,(nucleotide and name O6) , /eftu///173/OG

distance dist2 ,(nucleotide and name N1) , /eftu///138/OD1

distance dist3 ,(nucleotide and name N2) , /eftu///138/OD2

distance dist4 ,(nucleotide and name N7) , /eftu///135/ND2

distance dist5 ,(nucleotide and name O4') , /eftu///136/NZ

 

color blue , dist*

set_view (\
    -0.049711391,   -0.192816079,   -0.979960680,\
     0.849090338,    0.508478284,   -0.143122777,\
     0.525894463,   -0.839202821,    0.138445660,\
    -0.000257872,    0.000272984,  -36.868705750,\
    36.001502991,   32.883502960,   27.284194946,\
    25.292184830,   48.544433594,  -20.000000000 )