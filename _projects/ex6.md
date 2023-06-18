---
layout: project
title: Exercise 6 - Nucleic Acids and transcription factors
caption: Love at first sight
description: >
  We will learn how DNA and proteins interact with each other.
date: '20-08-2022'
image: 
  path: /assets/img/exercises/pymol_scripting.jpg
#links:
#  - title: Link
#    url: https://hydejack.com/
sitemap: false
---

# Exercise 6 - Nucleic Acids and transcription factors

In this assignment you will learn how proteins recognize DNA (or vice versa) in order to enter into a specific ("romantic") interaction with each other. The secret behind the specific interaction between amino acids and DNA bases is described by the so-called “groove code”. As seen in the figure below, there are exposed H-bond donors and acceptors in both major and minor groove and these are the ones that the amino acids can recognize and bind to.

<img src="/assets/img/exercises/groove_code.png" width="500">

> Task 1: 1.	Explain why there is more specificity in binding to major groove than to minor groove. Which amino acids are often used for sequence-specific recognition and why?
{:.lead}

The groove code can be a little difficult to spot when analyzing a DNA double helix in PyMOL, but with the right representation it becomes clearer: the DNA-groove.pml script shows the DNA double helix as a spheres where H-bond acceptors are colored red, H-bond donors blue, methyl groups green and non-polar hydrogen atoms yellow.

The sphere representation shows the Van der Waals radius of atoms and thus gives a picture of the realistic shape and volume of the molecule. Coloring of the atoms is seen more clearly due to their size. On the other hand, it is not easy to evaluate the chemical composition (as seen with sticks) or the secondary structure (as seen with cartoon).
{:.note title="PyMOL info"}

Open a DNA double helix with PDB ID: 1BNA in PyMOL and remove water molecules with the PyMOL command “remove solvent”. Now use the DNA-groove.pml script to change the representation and color the donors and acceptors in the grooves. Rotate the molecule so that you look down into the major groove (so that the symmetry becomes clear).


