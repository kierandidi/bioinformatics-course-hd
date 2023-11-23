---
layout: project
title: Exercise 4 - Evolution and Bioinformatics
caption: Why proteins are not as simple as dog images
description: >
  In this exercise you will be asked to reflect on some of the principles of evolution we talked about in the lecture and how they impact how we employ machine learning tools.
date: '06-08-2023'
image: 
  path: /assets/img/lessons/1tub_1fsz_super.png
#links:
#  - title: Link
#    url: https://hydejack.com/
sitemap: false
---

# Exercise 4 - Evolution and Bioinformatics

## Part 1: Language models and alignments

We talked a lot about protein language models. Read through [this blog post](https://huggingface.co/blog/deep-learning-with-proteins) and then follow [this notebook](https://colab.research.google.com/github/huggingface/notebooks/blob/main/examples/protein_language_modeling.ipynb). What tasks are tackled with the model? Do you think it performs well? What other tasks could you imagine using this model for?

After this, read the [FoldSeek paper](https://www.nature.com/articles/s41587-023-01773-0). FoldSeek is an algorithm to align and search protein structures, a task that is significantly harder than sequence alignment since protein structures are not linear chains but 3D objects. How do the authors still manage to align structures efficiently (what is their trick)? What are the advantages and disadvantages of their approach?

## Part 2: Bioinformatics Coding

There are many different packages that people use in bioinformatics. The one we will use in this exercise is called [Biotite](https://www.biotite-python.org/index.html). We use it because it is highly efficient, very well written and clearly documented. For more details about the background of the package, you can watch the optional resource videos on the lesson page.

First, go through the [main tutorial](https://www.biotite-python.org/tutorial/target/index.html) and try to understand how the package is structured. Why do you think the authors chose this structure of separating out different parts of the application into different namespaces like `structure` or `sequence`? What are the advantages and disadvantages of this structure?

On the examples page, you can find many example usages for Biotite, for example for [pairwise sequence alignment](https://www.biotite-python.org/examples/gallery/sequence/avidin_alignment.html#sphx-glr-examples-gallery-sequence-avidin-alignment-py) or for [protein property visualisation](https://www.biotite-python.org/examples/gallery/sequence/hcn_hydropathy.html#sphx-glr-examples-gallery-sequence-hcn-hydropathy-py). Choose one of the following tasks:

1. Find a different example on the examples page and explain what it does and how it works.
2. Align the three GTPases [HRas](https://www.uniprot.org/uniprotkb/P01112/entry), [KRas](https://www.uniprot.org/uniprotkb/P01116/entry) and [NRas](https://www.uniprot.org/uniprotkb/P01111/entry) similar to the tutorial in the examples and [describe how the conservations/mutations you see relate to the biology](https://www.labxchange.org/library/items/lb:LabXchange:5b84cc84:html:1). If you want to learn more about UniProt (the database where the sequences come from), you can watch [this video](https://www.youtube.com/watch?v=QifLuxlDftY).
3. Visualise the hydropathy of the protein `4m48` using the example code. What do you observe? How does this relate to the [structure and function](https://pdb101.rcsb.org/motm/171) of the protein?