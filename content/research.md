---
title: "Research Themes in the Lab"
date: "2016-06-02"
categories:
  - "research"
  - "overview"
tags:
  - "cm"
---

Our research is broadly concerned with automated undertanding of rich media, esp. pictures and language; and modeling of collective online behaviours. We specialize and innovate in different method in machine leanring and optimization, recent favorites include: stochastic time series models, sequence and language models with neural netoworks, matrix and tensor factorisation, active learning, structured prediction models.

<!--more-->

### Understanding popularity in social media
<img style="float:left;" src="/img/proj_icons/popularity.png" width="200" hspace="15" vspace="10">

Individual preferences is relatively well understood (e.g. the netflix prize), but the aggregate attention, or popularity, is not. We bridge this gap by explaining the dynamics of attention, and connecting models for the user and the network.  We measure the longitudinal popularity change of YouTube videos over several years. We propose novel time series descriptions that correlate with popularity. We design new stochastic point process models to describe the ongoing interaction of external promotion and popularity evolution. 
Our project answers one of the core problems in computational social science. The results can be used to understand grass-root movements and organized online campaigns, predict crowd behavior under realistic social settings, identify potential hits in the digital media landscape. 

Papers: [CIKM'16](https://arxiv.org/abs/1608.04862), [arXiv'16](http://arxiv.org/abs/1602.06033), [ICWSM'15](http://users.cecs.anu.edu.au/~xlx/papers/icwsm15-phase.pdf), [ACM MM'14](http://users.cecs.anu.edu.au/~xlx/papers/acmmm14.pdf), 

Posts: 

* [Feature Driven and Point Process Approaches for Popularity Prediction](/post/fdhawkesforpopularity/), <small>August 31, 2016</small>
* [Expecting to be HIP](/post/hawkes_instensity/), <small>August 16, 2016</small>

### Generating Stylized Descriptions of Images
<img style="float:left;" src="/img/proj_icons/intro_example_senticap.png" width="200" hspace="15" vspace="10"> 
Recent progress in image recognition and language modelling is making automatic description of image content a reality. Yet these written descriptions lack style and emotion; aspects which help to engage and interest readers. This project looks to introduce style and emotion into automatically generated descriptions. We build upon our SentiCap (AAAI'16) system which generates image captions with human-level sentiments, and our recent publications on predicting naming choices (WACV'15, MM workshop'15). The project will solve two machine learning challenges, the first is style transfer with a small number of training examples, the second is unsupervised style transfer where we adapt description generators using unstructured language materials from the target style.

Papers: [AAAI'16](http://arxiv.org/pdf/1510.01431.pdf), [WACV'15](http://users.cecs.anu.edu.au/~xlx/papers/wacv2015.pdf), [MM Workshop'15](http://users.cecs.anu.edu.au/~u4534172/papers/ACM_MM15_naming.pdf)

Posts: 

* [SentiCap: Generating Image Descriptions with Sentiments](post/senticap), <small> January 3, 2016</small>

### Inferring Private Traits over Time from Wikipedia
<img style="float:left;" src="/img/proj_icons/wikiprivacy_trend.png" width="200" hspace="15" vspace="10"> 
The cumulative effect of collective online participation has an important and adverse impact on individual privacy.As an online system evolves over time, new digital traces of individual behavior may uncover previously hidden statistical links between an individual’s past actions and her private traits. To quantify this effect, we analyze the evolution of individual privacy loss by studying the edit history of Wikipedia over 13 years, including more than 117,523 different users performing 188,805,088 edits. We trace each Wikipedia’s contributor using apparently harmless features, such as the number of edits performed on the Mathematics, Culture or Nature sections. We show that even at this unspecific level of behavior description, it is possible to use off-the-shelf machine learning algorithms to uncover usually undisclosed personal traits, such as gender, religion or education. 

Paper: [WSDM'16](http://arxiv.org/pdf/1512.03523.pdf)

Posts: 

* [Discussing two privacy concerns with Wikipedia](/post/wikipedia-privacy-concerns/), <small>March 18, 2016</small>
* [Evolution of Privacy Loss in Wikipedia](/post/wikiprivacy), <small> January 8, 2016</small>


### Structured Prediction and Planning for Trajectories
<img style="float:left;" src="/img/proj_icons/trajectory_problems.png" width="200" hspace="15" vspace="10"> 
Data modeling over space and time is an important problem for machine learning, statistics and many application areas. Within the work on recommending travel trajectories, two desired qualities are still missing from the current solutions. The first is principled method to jointly learn point ranking, a prediction problem, and optimise for route creation, a planning problem. The second is a unified way to incorporate various features such as location, time, distance, user profile, social interactions, as they tend to get specialised and separate treatments. We propose a solution to address these two challenges.

Paper: [CIKM'16](http://arxiv.org/pdf/1608.07051v1.pdf)

Posts: 

* [Learning Points and Routes to Recommend Trajectories](/post/trajrec_cikm16/), <small>August 31, 2016</small>

### Visualizing Citation Patterns among Publication Venues

<a href=/citation/NIPS><img width=150 src="/img/citation/NIPS/NIPS_mini_graph.png"></a>
<a href=/citation/PLDI><img width=150 src="/img/citation/PLDI/PLDI_mini_graph.png"></a>
<a href=/citation/WSDM><img width=150 src="/img/citation/WSDM/WSDM_mini_graph.png"></a>
<a href=/citation/ACL><img width=100 src="/img/citation/ACL/ACL_citation_survival.png"></a>
<a href=/citation/PLDI><img width=100 src="/img/citation/PLDI/PLDI_citation_survival.png"></a>
<a href=/citation/ISMB><img width=100 src="/img/citation/ISMB/ISMB_citation_survival.png"></a>

We visualize the citation behavior over time for different subfields in computer science, using data from microsoft academic graph.

Posts: 

* [Visualizing Citation Patterns of Computer Science Conferences](/post/citation_vis),  <small>August 18, 2016</small>
* [How Long Do Papers Survive in the Collective Academic Memory?](/post/citation_survival), <small>August 16, 2016</small>
* [Where are Ideas Coming from, and Going to? - Measuring citation flow in academic communities](/post/citation_flow), <small>July 16, 2016</small>
* [Eight Years of WSDM: Increasing Influence and Diversifying Heritage](/post/citation_vis/), <small>February 22, 2016</small>


### Picturing Everyday Knowledge in Multimedia
<img style="float:left;" src="/img/proj_icons/tag-explore2.png" width="200" hspace="15" vspace="10"> 

Knowledge graphs have become powerful sources for web search, but an equivalent source about things and their relations in pictures and videos does not exist yet. This project develops core techniques to learn image-centric knowledge graphs by connecting large collections of image/video and their descriptions to existing knowledge bases with encyclopedic, lexical, and commonsense knowledge. One compelling application for multimedia knowledge graphs is in the understanding of ongoing news and social events. We will design methods that construct high-quality knowledge graphs that are specifically relevant and adapted to each event, and propose new methods to automatically generate multimedia event summary documents.

Paper: [CIKM'16](http://arxiv.org/abs/1608.05921), [ACM MM'13](http://users.cecs.anu.edu.au/~xlx/papers/mm2013-xie.pdf)

---------- 

### Selected topics of the recent past

#### Multimedia-hard problems
<img style="float:left;" src="/img/proj_icons/mmhard.png" width="160" hspace="15" vspace="10"> 

MM-hard refers to multimedia problems that require human-level insights and perception that can’t be realized with a single algorithmic approach. The notion of MM-hard has the potential to benefit multimedia research in two funda- mental ways. The first is to describe problems in terms of their (machine and human) difficulty; the second is to be able to do problem reduction — that is, convert one problem to another and compare problems.

Paper: [IEEE Multimedia '14](http://users.cecs.anu.edu.au/~xlx/papers/mmhard_2014.pdf)

#### Tracking visual memes in social media
<img style="float:left;" src="/img/proj_icons/youtube_example.png" width="160" hspace="15" vspace="10"> 
<img style="float:left;" src="/img/proj_icons/meme_influence.png" width="160" hspace="15" vspace="10"> 

We propose visual memes, or frequently reposted short video segments, for tracking large-scale video remix in social media. Video remixing is prevalent on social media platforms, it is part of "venacular creativity" (Burgess 2009) where users create "curated selections based on what they liked or thought was important". Social influence are often characterized from text-based online interactions such as quoting or reweeting (Leskovec 2009). Our tool allows such metric to be developed for visual media. We found that:

* Over 50% news-related videos contain remixed content, over 70% YouTube authors participate in remixing.
* Remix probability does not correlate well with traiditional popularity metrics such as view count.
* Influence analysis on visual remix overtime can reveal content importance and user roles.

Paper: [ACM MM'11](http://users.cecs.anu.edu.au/~xlx/papers/acmmm11-meme.pdf), [TMM'13](http://arxiv.org/abs/1210.0623)

#### Macroscopic patterns in online news discussions
<img style="float:left;" src="/img/proj_icons/event_bowtie.png" width="160" hspace="15" vspace="10"> 

We analyze the ICWSM’11 Spinn3r dataset containing over 60 million English documents. We observe surprising connections among the 161 wikipedia events it covers, and that over half (55%) of users only link to a small fraction of prolific users (1%), a notable departure from the balanced traditional bow-tie model of web content.

Paper: [ICWSM '12](http://users.cecs.anu.edu.au/~xlx/papers/icwsm12-event.pdf)
