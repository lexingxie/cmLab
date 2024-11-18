---
title: "Smallset Timelines for Communicating Data Preprocessing Decisions"
description: "Data preprocessing is messy and nuanced but full of consequential decisions, a `preprocessing cartoon strip` can be generated to help illustrate these decisions."
date: "2024-11-18"
draft: false
categories:
  - "research"
tags:
  - "visualisation"
  - "data"
  - "integratedAI"
---

##### Posted by _Lexing Xie_ and _Lydia Lucchesi_.

<br/>
<figure class="asn-fig asn-left" style="max-width: 165px;">
    <img src="/img/smallset/hex_sticker.png">
</figure>
Smallset Timelines, and the associated <a href="https://cloud.r-project.org/web/packages/smallsets/index.html">R package</a> <a href=https://lydialucchesi.github.io/smallsets/>smallsets</a>, faciliate visual documentation of data preprocessing. 

<p>
<!--more-->

<br/>

Data preprocessing is a crucial intermediate stage in quantitative data analysis. During this stage, data practitioners decide how to resolve dataset issues and transform, clean, and format the dataset(s). It
can be a challenging stage, full of decisions that have the potential to influence analytical outcomes. Yet, data preprocessing is often treated as behind-the-scenes work and overlooked in research dissemination. This discrepancy, in the practice and presentation of data analytics,
is limiting when it comes to replicating, interpreting, and utilising research outputs.

<br/>

The two central contributions in [Lydia's 2024 PhD Thesis](https://lydialucchesi.github.io/thesis/thesis_LydiaLucchesi.pdf) are Smallset Timelines and the [smallsets](https://lydialucchesi.github.io/smallsets/) software. The Smallset Timeline is a static
and compact visualisation, documenting the sequence of decisions in a preprocessing pipeline;
it is composed of small data snapshots of different preprocessing steps. The [smallsets](https://lydialucchesi.github.io/smallsets/) R software builds a Smallset Timeline from a user’s data preprocessing script, containing structured
comments with snapshot instructions. Together, they are designed to support the production of accessible data preprocessing documentation. 

This post illustrates these contributions with four examples, along with an example notebook that produces them. 

1. <a href="#EX1">Ebirds data in citizen science</a>
1. <a href="#EX2">HMDA homeloan data, reflecting nuances in defining and reporting on race</a>
1. <a href="#EX3">The folktables dataset for machine learning, on fairness in income classification</a>
1. <a href="#EX4">NASA software defect data</a>

We will conclude this overview with <a href="#notebook">an example notebook</a> to illustrate the ease of using smallsets in exisitng data-preprocessing code, along with an <a href="#faq">FAQ</a>.

<h5 id="EX1"></h5>

#### **Example 1: Ebirds Data in Citizen Science**

We examine the eBird database, a citizen science program with millions of bird
sightings from across the globe [Sullivan et al., 2009]. Citizen scientists upload their bird
sightings, by completing an eBird checklist form. The form collects information about every bird observed during an observation period. As noted on the eBird website,7 to date the
eBird data has been used in over 930 publications.

Johnston et al. [2021] recommend a series of best practices for using citizen science data.
These recommendations are based on an eBird case study that explored the effects of different
data preparations on statistical inference. The authors found that the combination of using
complete checklists only, spatial subsampling, effort filters,8 and effort covariates produced
the strongest modelling result. As a supplement to the study, Strimas-Mackey et al. [2023]
produced the guide “Best Practices for Using eBird Data,” which provides a step-by-step
implementation of the study’s recommendations in the R programming language.


<figure class="asn-fig asn-left" style="max-width: 750px;">
    <img src="/img/smallset/ebird.png">
    <figcaption>
    Smallset Timeline for the eBird preprocessing steps recommended in Strimas-
Mackey et al. [2023] (see Section 6.2.1). Smallset selected with random sampling. Data
are not printed in snapshots, as per the eBird terms of use. The preprocessing script and
smallsets code for this figure are in <a href="#thesis">Lydia's Thesis</a> Appendix B.3.
</figcaption>
</figure>


<br/>

<h5 id="EX2"></h5>

#### **Example 2: HMDA Homeloan Data - Nuances in Defining and Processing Race**

In 1975, the United States (U.S.) Congress
passed the Home Mortgage Disclosure Act (HMDA), mandating that data about home lend-
ing be made public. Since then, HMDA data have become a valuable resource to understand
the lending market and audit lending bodies for discriminatory practices [McCoy, 2007].13 It
is illegal in the U.S. to deny an applicant a home loan on the basis of race or color, national
origin, religion, sex, familial status, or handicap [Fair Housing Act]. Auditing with the use of
HMDA data, however, is not a straightforward task. Rather, it requires careful examination
of the data and difficult decisions about how to best use it [Avery et al., 2007].

<figure class="asn-fig asn-left" style="max-width: 750px;">
    <img src="/img/smallset/hmda_A.png">
    <figcaption>
    Smallset Timeline, created with the smallsets software, detailing the preprocessing decisions of researcher Alice in the home loan data case study discussed in \Cref{ssec:a_missing_data_dilemma}. The preprocessing script and \texttt{smallsets} code for this figure are in \Cref{sec:materials_for_figure_6_8}
    </figcaption>
</figure>

<figure class="asn-fig asn-left" style="max-width: 750px;">
    <img src="/img/smallset/hmda_B.png">
    <figcaption>
    Smallset Timeline, created with the \texttt{smallsets} software, detailing the preprocessing decisions of researcher Bob in the home loan data case study discussed in \Cref{ssec:a_missing_data_dilemma}. The preprocessing script and \texttt{smallsets} code for this figure are in \Cref{sec:materials_for_figure_6_9}.
    </figcaption>
</figure>


<h5 id="EX3"></h5>

#### **Example 3: Examining Fairness of Income Classification in the folktables Dataset for Machine Learning**


<figure class="asn-fig asn-left" style="max-width: 750px;">
    <img src="/img/smallset/acs.png">
    <figcaption>
     Smallset Timeline of ACS California data preprocessed with the validity-median
setting. Smallset selected with random sampling. The preprocessing script and smallsets
code for this figure are in the code section <a href="#notebook">below</a>.
    </figcaption>
</figure>

<figure class="asn-fig asn-left" style="max-width: 750px;">
    <img src="/img/smallset/fairness.png">
    <figcaption>
    The effect of four different preprocessing settings on data and prediction. Plot
a) shows dataset imbalance by gender. Plots b) and c) show group fairness measures in predictions from a logistic regression model. Error bars refer to 95% Newcombe intervals. 
    </figcaption>
</figure>

<h5 id="EX4"></h5>

#### **Example 4: A widely-used dataset of software defects**

In the early 2000s, the NASA Metrics Data Program (MDP) released 13 datasets for software defect detection, which involves developing algorithms to predict bugs in source code.

<figure class="asn-fig asn-left" style="max-width: 750px;">
    <img src="/img/smallset/gray_general.png">
    <figcaption>
    Smallset Timeline for MDP CM1 dataset preprocessed according to Gray et al.
[2011]. Smallset selected using the _coverage_ algorithm.
</figcaption>
</figure>


<h5 id="notebook"></h5>

#### **Example notebook for the fairness example**

the Jupyter Notebook _fairness analysis.ipynb_, for the scenario described in Example 3, in which smallsets is integrated into a folktables workflow. The
second code cell contains a Python preprocessing function, documented with smallsets
structured comments.

<figure class="asn-fig asn-left" style="max-width: 750px;">
    <img src="/img/smallset/notebook1.png">
</figure>

<figure class="asn-fig asn-left" style="max-width: 750px;">
    <img src="/img/smallset/notebook2.png">
</figure>

<h5 id="faq"></h5>

#### **FAQ** (detailed answers coming soon, new questions most welcome)

* _Is smallsets cutomizable?_ Yes, please see this detailed [user guide](https://lydialucchesi.github.io/smallsets/articles/smallsets.html).
* _Will smallsets automate data-preprocessing?_  In short, no. 
* _Is Python code supported?_ Yes, in ipython notebooks.
* _Will smallsets support preprocessing code across different scripts?_ Not yet. 
* _Will smallsets support word embeddings, large language models and the like?_  Not yet, let us know what you think are important to support. 

<br/>

#### **Resources**

* [Smallset Timelines: A Visual Representation of Data Preprocessing Decisions](https://arxiv.org/abs/2206.04875), Lydia R. Lucchesi, Petra M. Kuhnert, Jenny L. Davis, and Lexing Xie, Proceedings of the 2022 ACM Conference on Fairness, Accountability, and Transparency, 2022

<h5 id="thesis"></h5>

* [Visualisation and Software to Communicate Data Preprocessing Decisions](https://lydialucchesi.github.io/thesis/thesis_LydiaLucchesi.pdf), Lydia R. Lucchesi, PhD Thesis, The Australian National University, 2024
