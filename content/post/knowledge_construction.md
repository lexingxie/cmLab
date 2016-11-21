---
title: "Probabilistic Knowledge Graph Construction: Compositional and Incremental Approaches"
description: "We propose a new probabilistic knowledge base factorisation method that benefits from the path structure of existing knowledge"
date: "2016-08-31"
draft: false
categories:
 - "research"
 - "paper"
 - "data"
tags:
 - "knowledge graph"
 - "active learning"
 - "statistical relational model"
---

##### posted by _Dongwoo Kim_ <br />

Predicting popularity as number of retweets a tweet will get is an important and difficult task. It's unclear which approaches, settings and features works best. Our current CIKM '16 paper bridges this gap by comparing across feature driven and point process approaches under both regression and classification settings.
<!--more-->

The problem
-------------------------
Knowledge base construction consists of two tasks: extracting information from external sources, and inferring missing information through a statistical analysis on the extracted information. Several methods have been proposed to extract information from external sources. In many domains, however, there are not enough external sources to extract information, and consequently, the statistical analysis did not work properly. An incremental knowledge population through human experts can help to reduce the gap between the statistical analysis and information extraction.

Our Solution
-------------------------
In our work, we address these challenges as follows:

* We propose a probabilistic formulation of bilinear tensor factorisation that allows us to predict the uncertainty of unobserved triples.
* We incorporate the graph path structure of a knowledge graph into the proposed factorisation by modelling a composition of relations as algebraic operations in the probabilistic embedding space.
* We propose an incremental knowledge population method that searches the factorised space, trading of exploration and exploitation using Thompson sampling.
* Experiments on the knowledge completion with three real-world datasets show that the compositional model predicts unseen triples better than the bilinear factorisation model.
* Experiments show the importance of uncertainty in the incremental knowledge base population task. The better predictive model does not guarantee a better knowledge population due to an improper uncertainty measure.


Sample results
--------------------

Example of path prediction from UMLS data. We predict top 5 entities in compositional triples starting from entity _Mental-or-Behavioral (MB) Dysfunction_ followed by two relations _Affects_ and _Produces_. Correct entities are **bolded**.
(a) Triple prediction: (MB Dysfunction, Affects, -)

|Model |Top 1 |Top 2 |Top 3 |Top 4 |Top 5|
|:----------------|:-------------|:-------------|:-------------|:-------------|:-------------|
|PNORMAL |**Invertebrate** |**Reptile** |**Archaeon** |**Bird** |**Phy.-Function**|
|PLOGIT| **Cell-Function** |**Disease-or-Syndrome**|**Cell-or-Molecular-Dysf.**|**Exp.-Model-of-Disease**|**Mental-Process**|
|PCOMP-MUL| **Archaeon**| **Fish**| **Fungus**| **Invertebrate**| **Human**|
|PCOMP-ADD| **Path.-Function**| **Bird**| **Cell-or-Molecular-Dysf.**|Drug-Delivery-Device|Congenital-Abnormality|

(b) Length-2 path prediction: (MB Dysfunction, Affects, Produces, -)

|Model| Top 1| Top 2| Top 3| Top 4| Top 5|
|:----------------|:-------------|:-------------|:-------------|:-------------|:-------------|
|PNORMAL| Clinical-Drug| Sign-or-Symptom| Org.-Attribute| Drug-Delivery-Device|Clinical-Attr.|
|PLOGIT| Amphibian| Gov.-or-Reg.-Activity|Food | Biologic-Func.| Classication|
|PCOMP-MUL| **Enzyme**| **Body-Substance**| **Biogenic-Amine**| Carbohydrate| **Immunologic-Factor**|
|PCOMP-ADD| **Immunologic-Factor**|**Body-Substance**| Molecular-Biology-Research-Technique|Clinical-Drug| Chemical-Viewed-Structurally|

Both compositional and non-compositional models predict triples well. For length-2 path prediction, only the compositional models can capture correct entities on top 5.

Resources
--------------------

[Dongwoo Kim](http://arongdari.github.io), [Lexing Xie](http://users.cecs.anu.edu.au/~xlx/), [Cheng Soon Ong](http://www.ong-home.my/) **Probabilistic Knowledge Graph Construction: Compositional and Incremental Approaches**, in *Proceedings of the 25th ACM International Conference on Conference on Information and Knowledge Management* (CIKM '16), Indianapolis, IN, USA.

| | |
|---|---|
|Download: | [Paper + SI](https://arxiv.org/abs/1608.05921)|
|Presentation| [Slides](http://cm.cecs.anu.edu.au/documents/kim_cikm16_slides.pdf)|
|Poster|[Poster](http://cm.cecs.anu.edu.au/documents/kim_cikm16_poster.pdf)|
|Data:  | [Data](https://github.com/arongdari/kg-data)|
|Bibtex: | |
```
@inproceedings{kim2016,
    title = {{Probabilistic Knowledge Graph Construction: Compositional and Incremental Approaches}},
    author = {Kim, Dongwoo and Xie, Lexing and Ong, Cheng Soon},
    booktitle = {Proceedings of the 25th ACM International Conference on Information and Knowledge Management},
    series = {CIKM '16},
    address = {Indianapolis, IN, USA},
    doi = {10.1145/2983323.2983677},
    keywords = {Knowledge graph, active learning, Thompson sampling},
    year = {2016}
}

```


<br />
<br />
