---
title: "Feature Driven and Point Process Approaches for
Popularity Prediction"
description: "Predicting number of retweets a tweets will get with easy to construct features and Hawkes Process"
date: "2016-08-31"
draft: true
categories:
 - "research"
 - "paper"
 - "data"
tags:
 - "social media"
 - "popularity"
 - "point processes"
 - "features"
---

##### posted by _Swapnil Mishra_ <br />

<img style="float: left;" src="/img/fdhawkes/spock-dead-cascade.png" width="100" height="77" Hspace="10" Vspace="5">
Predicting popularity as number of retweets a tweet will get is an important and difficult task. It's unclear which approaches, settings and features works best. Our current CIKM'16 paper bridges this gap by comparing across feature driven and point process approaches under both regression and classification settings.
<!--more-->

The problem
-------------------------

The cumulative effect of collective online participation has an important and adverse impact on individual privacy.
As an online system evolves over time, new digital traces of individual behavior may uncover previously hidden statistical links between an individual's past actions and her private traits.
To quantify this effect, we analyze the evolution of individual privacy loss by studying the edit history of Wikipedia over 13 years, including more than 117,523 different users performing 188,805,088 edits.
We trace each Wikipedia's contributor using apparently harmless features, such as the number of edits performed on predefined broad categories in a given time period (e.g. Mathematics, Culture or Nature).
We show that even at this unspecific level of behavior description, it is possible to use off-the-shelf machine learning algorithms to uncover usually undisclosed personal traits, such as gender, religion or education.
We provide empirical evidence that the prediction accuracy for almost all private traits consistently improves over time.
Surprisingly, the prediction performance for users who stopped editing after a given time still improves.
The activities performed by new users seem to have contributed more to this effect than additional activities from existing (but still active) users.
Insights from this work should help users, system designers, and policy makers understand and make long-term design choices in online content creation systems.

Sample results
--------------------

**Privacy Loss** is evaluated as the capability to predict hidden personal traits, based on simple past recorded activity (i.e. number of page edits within a given interval).
An increasing prediction accuracy involves loss of privacy.

<!--Table of 3 columns, corresponding to the 3 figures.-->

|<img src="/img/privacy_loss/gender-aggr-basic-features.png" width="240" Hspace="10"> | <img src="/img/privacy_loss/new-entry-vs-fixed.png" width="320"> | <img src="/img/privacy_loss/exited-users-education-undergrads.png" width="240" Hspace="10"> |
|:-:|:-:|:-:|
| Static behavior analysis correlates with gender: **males** tend to edit more the content of Wikipedia articles, while **females** seem to concentrate more on the social interaction. | Privacy Loss over time to the "online breadcrumbs" left behind by users (<span style="color:red">red line</span>) compared to the Privacy Loss due to information learned from other users (<span style="color:blue">blue line</span>). | Privacy Loss occurs even for retired editors, who have been active prior to 2008 (<span style="color:blue">blue period</span>), but stopped contributing afterwards. <!--(<span style="color:red">red period</span>)--> |

Resources
--------------------

[Marian-Andrei Rizoiu](http://www.rizoiu.eu), [Lexing Xie](http://users.cecs.anu.edu.au/~xlx/), [Tiberio Caetano](http://tiberiocaetano.com/) and [Manuel Cebrian](http://web.media.mit.edu/~cebrian/). **Evolution of Privacy Loss on Wikipedia**, in *Proceedings International Conference on Web Search and Data Mining* (WSDM '16), San Francisco, USA, 2016.

| | |
|---|---|
|Download: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | [Paper PDF + SI](http://arxiv.org/pdf/1512.03523.pdf) &nbsp;&nbsp;&nbsp; [Talk slides](http://rizoiu.eu/documents/research/presentations/RIZOIU_WSDM-2016_slides.pdf) &nbsp;&nbsp;&nbsp; [Poster](http://rizoiu.eu/documents/research/presentations/RIZOIU_WSDM-2016_poster.pdf)|
|Data:  | [User edit behavior](http://goo.gl/Tx5SoI) (82MB) &nbsp;&nbsp;&nbsp; [Wikisample (1%)](http://goo.gl/T47UVj) (495MB) &nbsp;&nbsp;&nbsp; [Wikicomplete](http://goo.gl/2iLH7A) (3.6GB) |
|Bibtex: | |
```
@inproceedings{Mishra2016,
    title = {{Feature Driven and Point Process Approaches for Popularity Prediction}},
    author = {Mishra, Swapnil and Rizoiu, Marian-Andrei and Xie, Lexing},
    booktitle = {Proceedings of the 25th ACM International Conference on Conference on Information and Knowledge Management},
    series = {CIKM '16},
    address = {Indianapolis, IN, USA},
    doi = {10.1145/2983323.2983812},
    keywords = {social media; self-exciting point process; information diffusion; cascade prediction},
    year = {2016},
    url_Abstract={https://arxiv.org/abs/1608.04862},
    url_Paper = {https://arxiv.org/abs/1608.04862v2.pdf},
    url_Presentation_Page = {http://cm.cecs.anu.edu.au/post/fdhawkesforpopularity/}
}
```



<br />
<br />
