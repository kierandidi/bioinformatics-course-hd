---
layout: post
title: Lesson 1 - The PyMol GUI
image: /assets/img/blog/apfed_logo.png
accent_image: 
  background: url('/assets/img/blog/jj-ying.jpg') center/cover
  overlay: false
accent_color: '#ccc'
theme_color: '#ccc'
description: >
  About my first in-person conference and how great it is to design proteins
invert_sidebar: true
categories: proteins
---

# Lesson 1 - The PyMol GUI
Proteins are an amazing bunch - they control how you think, how you move and so much more while only consisting out of 20 different building blocks (yes, there are metal cofactors, glycosylation, phosphorylation and nowadays even RNA meddling into the protein business, but let's keep it simple for now). So no wonder I was always fascinated by them throughout my studies! Especially antibodies, peptides and how to design them became close to my heart during my time at Cambridge, so I was excited when I heard about the [APFED conference 2022](https://apfed22.uni-bayreuth.de/) in Bayreuth (APFED standing for Advances in Protein Folding, Evolution and Design). Meeting some exciting people and talking about some cool science sounded like quite a good time, especially after the pandemic, and spoiler: It was a good time! Here I want to share with you five cool research projects that I came across during the conference and why they excite me (I recently participated virtually in [RosettaCon 2022](https://www.rosettacommons.org/), more coming on that soon). Have fun!


* toc
{:toc}

## Accessible protein design - Christopher Wood
On their [website](https://www.wellswoodresearchgroup.com/), the group of Christopher Wood headlines their work "Pragmatic Protein Design", and that is what I liked about the presentation.

Anybody who worked in-depth with protein design software suites like Rosetta can attest that using these involves quite a steep learning curve. Therefore, making algorithms and tools more accessible and reliable seems like a great idea, especially given that protein design will probably become important in more and more areas in the future.

Interesting tools they published in the past are for example [a pipeline](https://academic.oup.com/bioinformatics/article/36/9/2917/5701649?login=true) for [alanine scanning](https://en.wikipedia.org/wiki/Alanine_scanning), a [web application to evaluate protein designs](https://academic.oup.com/peds/article/doi/10.1093/protein/gzab029/6462357) and a [collection of benchmark data and tests](https://arxiv.org/abs/2109.07925) to assess design methods. Exciting to see protein design becoming mainstream!

## Lessons from outside the borders of biological protein space - Klara Hlouchovoa

As researchers we work with protein sequences to such an extent that we rarely take a step back and ask ourselves: how did these miracoulous things actually come about? Was it straightforward for evolution to get where we are currently or have there been major obstacles in the way? And why do we actually have these specific 20 amino acids instead of some others? 

These are big questions for sure, but in her talk Klara Hlouchovoa gave great insights into some of these questions with cleverly designed experiments that turned out to be quite thought-provoking!

They included [combinatorial design methodologies](https://academic.oup.com/bioinformatics/article/37/4/482/5909645) as well as [randomized libraries](https://www.nature.com/articles/s41598-017-15635-8) and investigating biophysical properties of the resulting designs.

The interesting conclusions from these random designs based on the canonical amino acid alphabet and distribution: sequences from this pool are prone to secondary structure, can be expressed in E. Coli and (for some maybe a bit counterintuitive) they are better soluble the less structure they have! For [de novo proteins](https://www.biorxiv.org/content/10.1101/2022.01.14.476368v1) they found similar insights.

They also looked into the difference between the modern alphabet of amino acids and the reduced one which was present earlier in protein evolution. Earlier amino acids are mostly simpler ones (hydrophobic, hydroxy groups, negatively charged) whereas the later amino acids feature more complex building blocks (aromatic rings, positively charged amides).

After doing again combinatorial libraries for the reduced and modern amino acid alphabet respectively, they found that [earlier libraries have more soluble sequences under elevated temperatures](https://royalsocietypublishing.org/doi/10.1098/rsob.220040#d1e806) despite their lack of positive amino acids. This effect could be destroyed by adding chaperones, making both the modern and early amino acid alphabet equally soluble, hinting to the idea that chaperones were essential in enabling the current repertoire of amino acids.

They did some interesting case studies on sequences as a follow-up and replaced in some proteins all late amino acids with early ones. [One example RNA binding protein](https://academic.oup.com/mbe/article/39/3/msac032/6524634?login=true) still bound to its cognate RNA after the amino acid replacement, but was less structured in its unbound form and very unstable if all metal ions in the solution were taken away. This was due to the fact that metal ions replaced the role of the positive charge that late amino acids normally fulfill, substituting an Arg-RNA interaction with a Glu-RNA interaction bridged by metal ions.

This trend seems to be a general one, and the group [wrote a nice review](https://royalsocietypublishing.org/doi/10.1098/rsif.2021.0641) detailing the dependency of protein activity and folding on ligands in the case of early amino acids, giving some food of thought if the "RNA world" was really just RNA or if early proteins played their part in this drama. Another "dogma" that seems to be too dogmatic to be fully true!

## Protein Structure Prediction in a post-AlphaFold2 World - Mohammed AlQuraishi
Since the publication of AlphaFold2 last year, a lot of things have happened in the field of protein structure prediction. Among them is the publication of [OpenFold](https://openfold.io/) by a consortium of organizations including the AlQuraishi lab at Columbia University. In OpenFold, they reimplemented AlphaFold2 in PyTorch and retrained it from scratch, as well as making it publicly available. Besides [slightly outperforming AlphaFold2](https://twitter.com/MoAlQuraishi/status/1539589308893597698?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1539589308893597698%7Ctwgr%5Ea23a13e1f215984bf9f80c5e4c208e07f794ea58%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fwandb.ai%2Ftelidavies%2Fml-news%2Freports%2FOpenFold-A-PyTorch-Reproduction-Of-DeepMind-s-AlphaFold--VmlldzoyMjE3MjI5), OpenFold enables researchers from all over the world to test their ideas.

Mohammed AlQuraishi also published [a nice review](https://www.nature.com/articles/s41592-021-01283-4) titled "Differentiable Biology" in which he nicely describes a vision for the future of computational biology in which differentiability plays the key role. Many of the advances in machine learning (better hardware, auto-differentiation, powerful pattern recognition algorithms) are already having an impact on biology and will continue to have so. But there are also challenges in biology, such as expensive data collection or very different data formats that need to be fused such as in multi-omic analysis. Overcoming these challenges will involve advances both in biology and machine learning and will be crucial to deliver on the promises of AI in healthcare.

## Closing thoughts
It is amazing to see how quickly the field moves since the recent advances in bringing deep learning and protein design together. 
What I liked especially about the APFED conference (besides the great atmosphere) was that the claims made in presentations were nearly always backed up by experimental data. THis is 1) really important to gain trust for these methods and 2) exciting since it shows how well these teams integrate dry- and wet-lab work! Looking forward to see what comes next in this area.
The presenters I included did a great job, but there were other presentations that were just as exciting, so I may write a follow-up post at some point.

## Credits

Thanks a lot to the organizers of the APFED conference, both for creating such an amazing event and for giving me permissions to use their conference logo for this blogpost.

*[SERP]: Search Engine Results Page
