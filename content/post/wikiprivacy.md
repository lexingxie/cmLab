---
title: "Evolution of Privacy Loss in Wikipedia"
description: "your online traces tell who you are"
date: "2016-01-08"
draft: false
categories:
 - "research"
 - "paper"
 - "data"
tags:
 - "social"
 - "privacy"
 - "online"
---

<img style="float: left;" src="/img/privacy_loss/wiki-privacy-icon.png" width="100" height="77" Hspace="10" Vspace="5">
The digital traces left behind by the users in the online environment reveal more about them than they might like.
As our recent WSDM'16 paper shows, machine learning algorithms can be used to uncover hidden links between an user's past activity and her private traits -- like gender, education level or religious views --, even for retired users.
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

Marian-Andrei Rizoiu, Lexing Xie, Tiberio Caetano and Manuel Cebrian. **Evolution of Privacy Loss on Wikipedia**, in *Proceedings International Conference on Web Search and Data Mining* (WSDM '16), San Francisco, USA, 2016. 

Download: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Paper PDF + SI](/documents/papers/WSDM_2016_wikipedia.pdf) &nbsp;&nbsp;&nbsp; Talk slides

Data:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [User edit behavior](http://goo.gl/Tx5SoI) &nbsp;&nbsp;&nbsp; [Wikisample (1%)](http://goo.gl/T47UVj) &nbsp;&nbsp;&nbsp; [Wikicomplete](http://goo.gl/2iLH7A)

<br />
<br />


Discussions on Twitter 
---

{{< tweet 676523093901377536 >}} 
{{< tweet 679390543105888256 >}} 
