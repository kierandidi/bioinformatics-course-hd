---
layout: project
title: Exercise 8 - Protein Design
caption: How to create novel proteins
description: >
  In this exercise you will be asked to walk through the protein design pipeline we talked about in the lecture with a real-world target and evaluate how well your designs fare.
date: '10-08-2023'
image: 
  path: /assets/img/lessons/protein_design.png
#links:
#  - title: Link
#    url: https://hydejack.com/
sitemap: false
---

# Exercise 8 - Protein Design

[HuggingFace collection of protein models](https://huggingface.co/collections/simonduerr/protein-design---protein-structure-prediction-64f9c6fda9295717466dbe8f).

## Part 1: Theory

Read [this older review](https://www.cambridge.org/core/journals/quarterly-reviews-of-biophysics/article/de-novo-protein-design-a-retrospective/FF37903868E1651D7E61A8495FB00B50) focusing on the history of protein design up to deep learning and [this review](https://www.cell.com/cell-systems/fulltext/S2405-4712(23)00298-3) that covers the events since then and answer the following questions:

1. What is the difference between protein engineering and protein design?
2. What are coiled coils, and why were they one of the first targets for protein design?
3. What is directed evolution, and how does it interact with protein design?
4. How did the first *computational* protein design approaches work?
5. Which recent innovations in deep learning helped to advance protein design?
6. What are the main ways to design a protein nowadays? Which paradigms do they follow (e.g. structure to sequence etc.)?
7. What are the main challenges in protein design? How can we overcome them?

## Part 2: Practice

Have a look at the [RFDiffusion paper](https://www.nature.com/articles/s41586-023-06415-8) and the accompanying [GitHub repository](https://github.com/RosettaCommons/RFdiffusion). Do the same thing for the [Chroma paper](https://www.nature.com/articles/s41586-023-06728-8) and the [GitHub repository](https://github.com/generatebio/chroma). What are the main differences between the two approaches? What are the advantages and disadvantages of each?

Try to design.

For this, you can use the [RFDiffusion Colab notebook](https://colab.research.google.com/github/sokrypton/ColabDesign/blob/main/rf/examples/diffusion.ipynb). For Chroma you can use [the templates they provide on the GitHub repository](https://colab.research.google.com/github/generatebio/chroma/blob/main/notebooks/ChromaDemo.ipynb) (for this you will need to register and get an API key, so no worries if you do not want to do this). 

If you use both models: how is their output different? How do you need to change your evaluation pipeline to account for this?

Evaluate your designs with the appropriate metrics and tools we discussed in the lecture, either directly provided by the notebooks you are in or by using them separately. 

How well did you do? What are the main challenges you encountered? What are the main challenges in protein design in general? Why might the target I gave you be particularly easy?



