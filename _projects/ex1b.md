---
layout: project
title: Exercise 1b - PyMol Scripting
caption: Start using the PyMol scripting language
description: >
  We will now start using the PyMol scripting language to create our own scripts. This will allow us to automate tasks and create more complex visualizations.
date: '03-08-2023'
image: 
  path: /assets/img/exercises/pymol_scripting.jpg
#links:
#  - title: Link
#    url: https://hydejack.com/
sitemap: false
---

# Exercise 1b - PyMol Scripting

## 2.1 Selections and objects in PyMOL

The purpose of this assignment is to understand the difference between selections and objects in PyMOL, which is very important in order to be able to use the program effectively.
Basically,

`object` - a structure or group of atoms incl. their position, atomic type, occupancy and temperature factor. You can think of an object as the structure itself or the PDB file. An object is created using the "create" command.
`selection` - a set of atoms or chains in an object. It is important to understand that a selection does not itself contain the structure but is only a selection of atoms in another object. A selection is created using the command "select"
An object can thus exist without a selection, but a selection cannot be found without an object (at least not with any content).

> Task 1: Retrieve the structure of the K+ channel from Streptomyces from the previous exercise using the "fetch 1BL8" command. 
{:.lead}

Commands can either be entered at the top or bottom of the window that says "PyMOL>". In this and the following tasks on the course, the following will specify a command to be written in PyMOL (or stand in a script):

`fetch 1BL8 Create`

> Task 2: Create a new selection consisting of chain A in the structure
{:.lead}

You can do this via the command `select select_A, chain A`. Here is the "select_A" name designated for the new selection while "chain A" tells PyMOL that the selection must consist of all atoms in chain A. Note that after executing the command, there will be a new selection in the list on the right with its name in parentheses, indicating a selection. PyMOL also shows selections with "selection handles" for each atom (small squares on the structure). A selection works a bit like in other programs you know, e.g. "selection handles" disappear if you click outside the selection. They can be recovered by clicking on the name of the selection "(select_A)". You can thus select and deselect the atoms by clicking on the selection name.

> Task 3: Try to select the selection so that the small selection handles are displayed. Now turn off the main object "1BL8" and notice that the whole structure disappears while the selection is still displayed. 
{:.lead}

There are no atoms in the selection, so if you turn off the main object, the structure is not seen.

> Task 4: Create a new object consisting of chain A in the structure
{:.lead}

This can be done via the command `create object_A, chain A`. Here "object_A" is the name of the new object while "chain A" tells PyMOL that the object must consist of all atoms in chain A. Note that a new object will appear in the list on the right and that the name does not have parentheses (but shows the 1/1 state), indicating an object. PyMOL also centers the field of view on the new object.

5.	By creating a new object, we have in effect made a copy of a part of the structure (atomic positions, etc.), so we now have two copies of chains A. 

> Task 5: Try to hide the original object 1BL8 (click on the object name) and confirm that we can still see the structure contained in chain_A.
{:.lead}

We now have two structures of chain A. 

The difference between objects and selections may seem pedantic and unnecessary, but it is important that you understand the above and are fully aware of the difference between the two types in PyMOL. Here are some examples of what they can be used for:

- **selections** - often used to select a part of the structure in order to display it in a different representation or color.
- **objects** - used to work independently with a part of the structure as well as in certain cases where you want to show a structure in several representations at the same time.

> Task 6:	Try to color selection_A red and object_A blue. Now turn 1BL8 and object_A on and off to see what happens. 
{:.lead}

We now have the two copies of chain A in two different colors. They are, of course, perfectly superimposed, so depending on which has been last shown, the chain my appear either red or blue. We can work with the two copies independently of each other, e.g. superimpose object_A on another structure without affecting 1BL8. If, on the other hand, we overlay the select_A selection, the entire structure 1BL8 will be moved. More on that later.

> Task 7:	Read more about selections under [this link](https://pymolwiki.org/index.php/Selection_Algebra).
{:.lead}

## 2.2 Chains, residues and atoms in PyMOL

Now that you understand the differences between selections and objects, let's talk about PyMOL's general selection called **sele**. This is created when you click on a structure with the pointer or select a part of the sequence.

> Task 1: Download the structure of the Streptomyces K+ channel as in the previous tasks (fetch 1BL8). If you have already started PyMOL and want to clear everything, you can type the command reinit (reinitialize), or choose File-> Reinitialize-> Everything from the menu.
{:.lead}

> Task 2: Show 1BL8 as sticks and zoom in a little with the mouse (remember to hide the cartoon representation first). Color it with atom colors with carbon in yellow.
{:.lead}

In the middle of the channel there is a large hydrophobic amino acid, Phe 103, near a cavity. The phenyl ring is reasonably clear. 


> Task 3: Click the pointer to identify the amino acid and select it in sele. If you hit incorrectly, click outside the structure to delete the selection again. 
{:.lead}

When you click on an atom, PyMOL writes something like:

``You clicked / 1BL8 / A / A / PHE`103 / CG``

``Selector: selection "harness" defined with 11 atoms.``

The information tells us that in object 1BL8, segment A, chain A, we clicked on residue Phe103 and the atom CG (Cγ). In practice, segment ID is always equal to chain ID, so therefore it says A twice. The PDB format does not support Greek characters, so the atom names are translated into the most similar Latin letters:


| Atom name  | Pronunciation | PDB name |
|------------|---------------|----------|
| &alpha;    | alpha         | A        |
| &beta;     | beta          | B        |
| &gamma;    | gamma         | G        |
| &delta;    | delta         | D        |
| &epsilon;  | epsilon       | E        |
| &zeta;     | zeta          | Z        |
| &nu;       | nu            | H        |

C$\alpha$ is thus called CA, O$\gamma$ is called OG and so on. Sometimes (e.g. in Asp) there may be two identical atoms in the same position, whereby they are named 1 and 2, e.g. the two carboxyl atoms in Asp are called OD1 and OD2.

Note that the entire residue (11 atoms) is selected when clicking on one atom. This functionality is controlled in the `Mouse>Selection Mode`. 

> Task 4: Change the selection mode to "Chains" and use this to select the whole chain A. Now we can rename the general selection to something else, then select "rename selection" in the Action menu for sele and name it "select_A". Switch back to selection mode "Residues" and select Phe103 in chain A again. 
{:.lead}

Note that there will now be a new sele selection. In this way, one can build selections without the use of commands.

6.	We can also use the nomenclature above to form a selection with the CG atom from Phe103:

`select 103CG, / 1BL8 / A / A / PHE\`103 / CG`

The small "backquote" (`) may be difficult to enter, but fortunately it is not actually required:

`select 103CG, / 1BL8 / A / A / 103 / CG`

You do not have to list all the fields if they are not necessary, e.g. in this case there is only one structure so we can settle for:

`select 103CG, A / 103 / CG`

When making selections, remember to check that the expected number of atoms is selected by checking what PyMOL returns:

`Selector: selection "103CG" defined with 1 atoms.`

7.	If you only use some of the fields, the rule is that if the statement starts with / then you must have everything from the left but may not include everything. If the statement does not start with / it is interpreted as starting from the right. Examples:

Select entire chain A (from left):

`select chain_A, / 1BL8 / A / A`

Select entire residue 103 in chain A (from left):

`select A103, / 1BL8 / A / A / 103`

Select only CG in residue 103 (from right):

`select 103CG, 103 / CG`

> Task 5: How many atoms are selected in this case? Why?
{:.lead}

Another useful rule is that you can omit some of the information to select everything, e.g.

`select res103, / 1BL8 /// 103`

will select all residues in structure 1BL8 with residue number 103. 

> Task 6: How many atoms / residues are there?
{:.lead}

Since there is only one object, we could even just write,

`select res103, //// 103`

9.	You can also specify a range of residues using a hyphen, e.g. will

`select A103-105, / 1BL8 // A / 103-105`

select residues 103-105 in chain A.

10.	Finally, one can select residues based the protein primary sequence. 

> Task 7: Select `Display-> Sequence` from the menu and drag from residue Arg27-Leu36 in the sequence to select it. Find out for yourself how to select residues in the other chains (Hint: First set the chains to different colors as these will be apparent in the sequence).
{:.lead}

> Task 8: Now use select statements and the nomenclature above to make the following selections. Use different, sensible names for all of them:
{:.lead}

* Residues 110-120 in chain B.
* All residues in chain D.
* All C$\alpha$ atoms in chain A.
* Residue Trp87 in chain D.
* Atom N$\epsilon$1 in Trp87 in chain D.
* All Phe residues in the structure.

> Task 9: Use your selections to show the whole structure in cartoon with a light green color, color chain D dark green, color all Phe residues in structure red, show Trp87 in chain D with sticks and the atom Nε1 with a blue sphere. Show all Cα atoms in chain A with red spheres. Color the area 110-120 in chain B yellow.
{:.lead}

> Taks 10: What happened to the cartoon color in chain A when you changed the color of the Cα atoms? Discuss.
{:.lead}



