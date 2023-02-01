---
layout: post
title: Introduction - Why this course?
image: /assets/img/blog/rosetta_logo.png
accent_image: 
  background: url('/assets/img/blog/jj-ying.jpg') center/cover
  overlay: false
accent_color: '#ccc'
theme_color: '#ccc'
description: >
  About the breathtaking pace of innovation in the space and the amazing community that drives it
invert_sidebar: true
---

# Introduction - Why this course?

There has been a lot happening recently in protein design, and it is easy to get lost in the daily flood of new papers and exciting ideas (for an overview of current models and approaches see [this review](https://www.biorxiv.org/content/10.1101/2022.08.31.505981v1) which includes a great [model table](https://github.com/hefeda/design_tools)). 

In such situations, it often helps to step back for a second, look at the bigger picture and chat to people about what is happening and what the future might hold. Luckily, RosettaCon was happening this August and provided a venue for exactly that: chatting to people about protein design and fascinating ideas! In this post I want to highlight some presentations from the conference that I think are representative of some broader directions in the field.
* toc
{:toc}


## Scaffolding protein motifs using Deep Learning - (Baker Lab, IPD, UW)

While complete de novo design of proteins is still the holy grail of the field, in practice you often want to incorporate a motif known from nature into a new custom-made scaffold. This motif-scaffolding problem can be quite tricky, since the desired motif is often energetically unfavourable, which means that the scaffold is required to balance this out in order to form a stable folded protein. In [this Science publication](https://www.science.org/doi/10.1126/science.abn2100), a team from the IPD in Seattle approached this problem via two different deep learning methods: hallucination and inpainting.

Both rely on the impressive advances in protein structure prediction in recent years. More explicitly, hallucination describes an iterative procedure in which a protein structure prediction network repeatedly predicts the structure for a given input sequence. After this prediction, a loss is calculated based on both quality of the structure in general and recapitulation of the desired motif. This loss is then used to update the network and produce a better sequence, repeating this process until a desired performance threshold is achieved.

On the other hand, inpainting treats the scaffolding problem as an information recovery task. Here, part of the sequence input is masked and the model is asked to predict this missing residues, generating novel stable proteins.

This paper is not the only one to tackle this problem. There have been efforts to use [diffusion models for the scaffolding problem](https://arxiv.org/abs/2206.04119) as well as [graph neural networks](https://openreview.net/forum?id=ZTsoE8G3GG). All these approaches sound promising; time will tell which of these will be applicable to which design goal.
## Manifold Sampling for function-guided antibody design - Vladimir Gligorijevic (Prescient Design)

Another exciting talk by Vladimir Gligorijevic showcased some of the work that has been going on at Prescient Design and that has been published in this [Manifold Design paper](https://www.biorxiv.org/content/10.1101/2021.12.22.473759v1.full). The general idea of the approach (as you can see from the name) builds upon the [manifold hypothesis](https://www.lcayton.com/resexam.pdf), i.e. your high-dimensional data is normally not widely spread out in these dimensions, but is often restricted to a lower-dimensional manifold. 

Since functional proteins only occupy a small fraction of overall sequence space, thinking about protein design in terms of manifold sampling sounds like a reasonable idea and is what drove the recent advances in protein language models, which basically learn to generate sequences that lie on this manifold of natural sequences (one of the early examples of explicitly formulating the problem in this way was [this paper](https://www.biorxiv.org/content/10.1101/2022.04.10.487811v1.full) by Hie et al. from Stanford).

But this team tackled the problem via a different approach: they built a Denoising Auto-Encoder (DAE) that takes as input a protein sequence, perturbs it and then generates a new protein sequence from there. The cool thing about this unsupervised approach is a separate supervised function classifier that predicts the function of the newly generated sequence based on Gene Ontology (GO) terms and therefore serves as a guide for the DAE to generate sequences with the desired function.

The team shows some pretty cool applications of their approach, from generating new Calcium-binding proteins to an ion transporter with a novel *all-alpha* fold (no pun intended), and that by starting from a protein with an *all-beta* fold! In a [follow-up paper](https://arxiv.org/abs/2205.04259) they describe an approach to only design certain regions of the sequence, enabling workflows similar to the RFDesign pipeline mentioned above.

All in all this seems like a promising way to generate very diverse sequences conditioned on function.
## Designing epitope-specific binders in silico - Possu Huang (Stanford)

Generating custom antibodies binding to a specific target is already quite a feat, but doing it not only target- but even epitope-specific would be impressive. Nothing less is what Possu Huang presented at RosettaCon. They published a lot of work on protein design and specifically backbone generation over the last couple of years, using diverse approaches ranging from [Generative Adversarial Networks (GANs)](https://openreview.net/forum?id=SJxnVL8YOV) to [language models](http://www.proteindesign.org/uploads/1/2/1/9/121933886/2020_madani_neurips.pdf).

In 2020 they published a preprint on Ig-VAE, a Variational Autoencoder for generating antibody structures, and published the final version in [PLOS CompBio this June](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1010271). 
This model is inspired by nature using a single antibody scaffold and adapting it to the problem at hand. They wanted to do something similiar *in silico*, so they chose to create a model with three important properties:

1. rotational and translational invariance should be maintained
2. the model should be aware of torsion angles since these are very important for protein structure and function
3. the output should directly be 3D structures and not an intermediate output such as distance maps.

With this new generative model, they were able to embed structures in a latent space and then sample from this latent space generating novel sequences. The direct output of structures made sure that there are no inconsistencies due to an overdetermined system, and the rotational and translational invariance meant that via this inductive bias they were able to circumvent the hassle of data augmentation for different rotational poses and learn a meaningful protein representation directly. 

Part of the team behind the paper has continued their work on protein structure generation since then and recently published [a preprint](https://arxiv.org/abs/2205.15019) in which they show that diffusion models can be used in a similar way to generate protein structures, showing again that novel advances in ML are often transferable to applications in biology. It will be exciting to see what the next breakthrough at this interface will be!

## Bringing de novo proteins into the clinic - Javier Castellanos (Neoleukin)

[Neoleukin](https://www.neoleukin.com/) is one of several protein design companies originating in the IPD in Seattle. Their particular focus is therapeutic design with applications in e.g. [cancer immunotherapy](https://www.sciencedirect.com/science/article/pii/S1367593120300181?via%3Dihub).

Their lead candidate NL-201 is based on [this publication in Nature](https://eorder.sheridan.com/3_0/app/orders/8675/article.php) in which they showed that this de novo protein is an effective activator of IL-2 and IL-15 agonist, which means it can activate cells which express the receptor for this signalling molecule, for example NK or T cells that are important in immunotherapy against cancer. Other IL-2 based therapeutic approaches have been challenging in the past since they bind strongly to CD25, a subunit of another subtype of IL-2-receptor that is expressed in off-target cell types but which greatly enhances both affinity and activity of IL-2. Therefore, these off-target cells experience an even higher activation than the intended cell targets, leading to a plethora of potential side effects. Via computational protein design, they were able to create a protein that selectively binds to the intended subpopulation of IL-2 receptors, showing effective responses in immunotherapy studies.

They now use several of the open-source available tools to optimize their designed sequences, which shows that protein design with machine learning is not a far-fetched dream, but actually already here!

## Closing thoughts

The talks mentioned above show the breadth and depth of work going on in the protein design field, from combining established methods with new methods to the development of new algorithmic ideas. It was especially fascinating to see that de novo proteins are moving into the clinic and to the patient now, since advancing disease therapy is the goal of many protein design projects.

Finally, the collaborative and friendly atmosphere at the conference was exceptional; everybody took time for answering questions, helping others out and explaining new advances in order to move the whole field forward. For me personally, attending RosettaCon remotely was a great experience, and I hope to repeat it in person soon!

## Credits

Thanks a lot to the organisers of the RosettaCon conference, both for making the conference a great experience and for allowing me to post this summary on their website and use their logo for the post on my website.

*[SERP]: Search Engine Results Page
