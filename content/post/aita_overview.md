---
title: "Data-driven Understanding of 100,000 Everyday Moral Dilemmas"
description: "We analysed the 7-year history of /r/AmITheAsshole, asked two questions and got two surprising answers."
date: "2024-02-13"
draft: false
categories:
  - "research"
tags:
  - "language"
  - "social media"
  - "moraldilemmas"
---

##### Posted by _Lexing Xie_ and _Ziyu Chen_. <br /> 
Thanks to Eric Byler for a [2022 profile article](https://comp.anu.edu.au/news/2022/07/01/algorithms-reveal-human-nature-100k-moral-dilemmas/) in college news! 
<p />

<br/>

We identify Reddit’s Am I the Asshole (AITA) forum as a rich source of data to investigate the moral sphere using AI and machine learning.
This work is done with Josh Nguyen and Alasdair Tran, and ANU philosophers Colin Klein, Nick Carroll, and most recently Nick Schuster. 

<!--more-->

<br/>

#### **Question 1: what are in the 100,000 moral dilemmas? **

The popular online community AITA crowd-sources moral deliberation one sticky situation at a time, they have accumulated 100,000+ dilemmas since 2013. 
We ask: what are the types of issues people struggle with? 

<br/>

#### **Surprise 1: There are ~50 topics, and people percieve them in pairs. **

<figure class="asn-fig asn-left" style="max-width: 750px;">
    <img src="/img/AITA_treemap.png">
</figure>

We analysed 100,000 threads—the largest such study to date—using algorithms to identify topic clusters. 
Human participants helped to refine the algorithm by deciding when to combine similar clusters and how to assign thematic designations to threads.
The resulting data identifies 47 meaningful topics that fall into five meta-categories: 
Identities, Aspects, Processes, Events, and Things. Aspects, for example, includes such topics as 
hygiene, manners, and safety while Events includes weddings, breakups, and parties.
The paper explains that clustering algorithms were designed to allow clusters to overlap, 
“since both the intersections and the gaps between two intuitive clusters (such as family and money) may be meaningful and interesting”.
We found that most moral dilemmas included combinations of topics called topic pairs. 
Frequently occurring topic pairs included friends & manners, communication & mental health, and celebrations & manners.
There are about 1,000 significant top pairs, which adds nuance beyond what can be described with the 47 topics alone. 

“Most philosophers distinguish between moral norms, such as the norm that we ought to keep our promises, and conventional norms, 
such as the norm that we ought to allow passengers to exit a busy train before we try to board it”, Nick Carroll said. 
“This has resulted in philosophers excising from the realm of morality various dilemmas that fall on the conventional side of this distinction. 
But by contrast, the dilemmas that non-philosophers on AITA post about are mostly about what philosophers would consider conventional norms—dilemmas 
relating to, for instance, communication, family, friends, manners, and relationships. 
The realm of morality is far larger than philosophers ordinarily think it is.”

<br/>

#### **Question 2: How do we measure moral dimensions in lots and lots of written text? **



<br/>

#### **Surprise 2: There is very little agreement among linguistic resources curated for the same five moral foundations**

<figure class="asn-fig asn-left" style="max-width: 550px;">
    <img src="/img/MFD_venndiagram.png">
    <figcaption>
    Figure 2: A Venn diagram showing three widely adopted lexicons for measuring moral dimensions — MFD, MFD 2.0, and eMFD. 
      They use word count for detecting moral foundations. It is surprising how little consensus there is among these resources. 
    </figcaption>
</figure>


<br/>

#### **Resources**

* [Mapping Topics in 100,000 Real-life Moral Dilemmas](https://arxiv.org/abs/2203.16762), Tuan Dung Nguyen, Georgiana Lyall, Alasdair Tran, Minjeong Shin, Nicholas George Carroll, Colin Klein, and Lexing Xie, International AAAI Conference on Web and Social Media (ICWSM '22), 2022
* [Measuring Moral Dimensions in Social Media with Mformer](https://arxiv.org/abs/2311.10219), Tuan Dung Nguyen, Ziyu Chen, Nicholas George Carroll, Alasdair Tran, Colin Klein, and Lexing Xie, International AAAI Conference on Web and Social Media (ICWSM '24), 2024
