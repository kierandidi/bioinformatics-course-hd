---
layout: project
title: Exercise 2 - PyMOL scripting
caption: Start using the PyMol scripting language
description: >
  We will now start using the PyMol scripting language to create our own scripts. This will allow us to automate tasks and create more complex visualizations.
date: '20-08-2022'
image: 
  path: /assets/img/exercises/pymol_scripting.jpg
#links:
#  - title: Link
#    url: https://hydejack.com/
sitemap: false
---

# Exercise 2 - PyMOL scripting

## 2.1 Selections and objects in PyMOL

The purpose of this assignment is to understand the difference between selections and objects in PyMOL, which is very important in order to be able to use the program effectively.
Basically,
object - a structure or group of atoms incl. their position, atomic type, occupancy and temperature factor. You can think of an object as the structure itself or the PDB file. An object is created using the "create" command.
selection - a set of atoms or chains in an object. It is important to understand that a selection does not itself contain the structure but is only a selection of atoms in another object. A selection is created using the command "select"
An object can thus exist without a selection, but a selection cannot be found without an object (at least not with any content).

> Task 1: 1.	Retrieve the structure of the K+ channel from Streptomyces from the previous exercise using the "fetch 1BL8" command. 
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




