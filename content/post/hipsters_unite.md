---
title: "Expecting to be HIP (IV) - HIPsters Unite!"
description: "The Hawkes Intensity Process (HIP) inspired a small cascade of puns, and a research-team-in-uniform"
date: "2017-07-24"
draft: false
categories:
  - "research"
  - "misc"
  - "group activity"
tags:
  - "social media"
---

##### posted by _Lexing Xie_ <br />

<img src="/img/expecting_to_be_HIP/hipsters.png" height="180"><br>

<!--more-->

This post is the fourth of a series on modeling social media popularity using the [Hawkes Intensity Process](https://arxiv.org/abs/1602.06033). ["Expecting to be HIP (I)"](/post/hawkes_intensity/) provides a technical intro on deriving the HIP model from Hawkes point process; ["Expecting to be HIP (II)"](/post/expecting_to_be_HIP/) gives an overview of results and interpretations on a large YouTube video dataset; ["Expecting to be HIP (III)"](/post/promotability/) further quantifies the effects and interpretations of promotion. 

Occasionally it's good not be too serious, so we decided to do just that. 

Our imagination started when we finally named the model for describing popularity:

**Hawkes Intensity Process** -- **HIP** -- **hippo (mascot)** -- **hipsters (people)**.

After choosing a mascot, the natural next step is to get t-shirts printed. In the photos above:

* Left: Marian-Andrei and Lexing grinning at the WWW 2017 conference in Perth. 
* Middle: HIPsters group shot, at Data61
* Right: Marian-Andrei and Alban, on the gist of being HIP


### HIPster roll

We'd like to take this opportunity and thank all the colleagues who helped us in various stages of this ongoing effort to _become HIP_.

* Siqi Wu for continuing to maintain and improve the data infrastructure that powered this large-scale study of online popularity.
* Quyu Kong for building and polishing the [HIP demo on the web](https://github.com/andrei-rizoiu/hip-popularity#hip-visualization-system). 
* [Alban Grastien](http://www.grastien.net/ban/) and [Christian Walder](http://users.cecs.anu.edu.au/~christian.walder/) for insightful discussions that led to the ICWSM paper. 
* [Richard Nock](http://users.cecs.anu.edu.au/~rnock/) for critical discussions on various paper drafts. 
* Young Lee for his expertise in point processes. 
* [Alex Mathews](http://users.cecs.anu.edu.au/~u4534172/index.html), [Minjeong Shin](https://berebere86.github.io/) and [Dongwoo Kim](http://arongdari.github.io/) for valuable suggestions on the conference presentations.

In addition, we thank [Aditya Menon](http://users.cecs.anu.edu.au/~akmenon) for the idea of hippo t-shirts, and artist [John Hart](https://www.johnhartart.com/) at [Megalo Studio](https://www.megalo.org/) for printing the group of happy hippos. Last but not least, we thank ANU [Research School of Computer Science](http://cs.anu.edu.au) for generously supporting our HIPster attire.

### Papers, data, demos

Here are three papers and pointers related to Hawkes process for describing and predicting popularity. 

[Marian-Andrei Rizoiu](http://www.rizoiu.eu), [Lexing Xie](http://users.cecs.anu.edu.au/~xlx/), [Scott Sanner](http://d3m.mie.utoronto.ca/), [Manuel Cebrian](http://web.media.mit.edu/~cebrian/), Honglin Yu and [Pascal Van Hentenryck](https://pascalvanhentenryck.engin.umich.edu/). **Expecting to be HIP: Hawkes Intensity Processes for Social Media Popularity**, in *Proceedings International Conference on World Wide Web* (WWW '17), Perth, Australia, 2017. 

| | |
|---|---|
|Download: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | [Paper PDF + SI](http://arxiv.org/pdf/1602.06033.pdf) &nbsp;&nbsp;&nbsp; [Talk slides](http://rizoiu.eu/documents/research/presentations/RIZOIU_WWW-2017_slides.pdf) <!-- &nbsp;&nbsp;&nbsp; [Poster](http://rizoiu.eu/documents/research/presentations/RIZOIU_WSDM-2016_poster.pdf)--> |
|Data:  | [ACTIVE Dataset and source code](https://github.com/andrei-rizoiu/hip-popularity) &nbsp;&nbsp;&nbsp; [Interactive visualization system](https://github.com/andrei-rizoiu/hip-popularity#hip-visualization-system) 
 |

<br />
[Marian-Andrei Rizoiu](http://www.rizoiu.eu) and [Lexing Xie](http://users.cecs.anu.edu.au/~xlx/). **Online Popularity under Promotion: Viral Potential, Forecasting, and the Economics of Time**, in *Proceedings of the 11th International AAAI Conference on Web and Social Media (ICWSM’17)*, p. 10, Montréal, Canada, 2017. 

| | |
|---|---|
|Download: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | [Paper PDF + SI](https://arxiv.org/pdf/1703.01012.pdf) &nbsp;&nbsp;&nbsp; [Talk slides](http://rizoiu.eu/documents/research/presentations/RIZOIU_ICWSM-2017_slides.pdf) |
|Data & code:  | [Github repository](https://github.com/andrei-rizoiu/hip-popularity) <!--&nbsp;&nbsp;&nbsp; [Interactive visualization system](https://github.com/andrei-rizoiu/hip-popularity#hip-visualization-system) --> 

<br />
[Swapnil Mishra](http://cm.cecs.anu.edu.au/people), [Marian-Andrei Rizoiu](http://www.rizoiu.eu) and [Lexing Xie](http://users.cecs.anu.edu.au/~xlx/). **Feature Driven and Point Process Approaches for Popularity Prediction**, in *Proceedings of the 25th ACM International Conference on Conference on Information and Knowledge Management* (CIKM '16), Indianapolis, IN, USA.

| | |
|---|---|
|Download: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | [Paper PDF + SI](http://arxiv.org/pdf/1608.04862v2.pdf)  &nbsp;&nbsp;&nbsp; [Presentation](http://cm.cecs.anu.edu.au/documents/smishra_cikm16_presentation.pdf) |
|Data:  | [NEWS Dataset](https://git.io/v6rIN)|

