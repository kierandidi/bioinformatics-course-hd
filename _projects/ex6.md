---
layout: project
title: Exercise 6 - Protein structure prediction
caption: How to understand structure from sequence
description: >
  In this exercise you will be asked to use some of the structure prediction methods we talked about and understand how they work.
date: '08-08-2023'
image: 
  path: /assets/img/lessons/protein_structure_prediction.png
#links:
#  - title: Link
#    url: https://hydejack.com/
sitemap: false
---

# Exercise 6 - Protein structure prediction

## Part 1: Theory

Read through the [AlphaFold paper](https://www.nature.com/articles/s41586-021-03819-2) and answer the following questions:

1. What are the two main stages in the AlphaFold model? Why are they both needed?
2. What is the big deal about IPA? What is different to normal attention? Why might this be useful for proteins? And do you think it is important, looking at the results in Figure 4?
3. Staying at Figure 4: what do you think are the key ingredients to AlphaFold's success?

After this, read through [this review on protein structure prediction](https://www.sciencedirect.com/science/article/pii/S1672022923000657) and answer the following questions:

1. What are the physicist's and statistician's research paradigms? Why did the change occur in the field of protein structure prediction, and when do you think each approach is more useful?
2. Why is the task of single sequence prediction so hard? And why are people still very interested in it?

## Part 2: Practice

In this part, you will be asked to use different methods to predict a protein structure and compare both the runtime as well as the results.

1. Do [Lab 13 from this course on GitHub](https://colab.research.google.com/github/pb3lab/ibm3202/blob/master/tutorials/2021/lab13_protDCASBM.ipynb). Here you will use an old-school co-evolution method called Direct Coupling Analysis (DCA) to predict the structure of a protein. What do you think about the results? 
2. Do [Lab 14 from this course on GitHub](https://colab.research.google.com/github/pb3lab/ibm3202/blob/master/tutorials/2023/lab14_MSAtransformer.ipynb). Here you will use a more modern method called MSA Transformer and pair it with a Potts model (discussed in the lecture) to predict the structure of \a protein. What do you think about the results? How do they compare to DCA?
3. Finally, do [Lab 15 from this course on GitHub](https://colab.research.google.com/github/pb3lab/ibm3202/blob/master/tutorials/2022/lab15_CF-GROMACS.ipynb) (only do part I; part II deals with molecular dynamics simulations, a topic we will discuss in more detail in lecture 9). Here you will use AlphaFold to predict the structure of a protein. What do you think about the results? How do they compare to DCA and MSA Transformer?

## Credits

The title image was taken from a [blog post](https://www.ptngconsulting.com/blog/machine-learning-for-protein-engineering-here-to-stay) I have written as part of my consulting activities for PTNG.