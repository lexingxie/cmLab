---
title: "Expecting to be HIP! Could this go viral?"
description: "identifying the potentially next blockbuster"
date: "2017-05-29"
draft: false
categories:
  - "research"
  - "paper"
tags:
  - "stochastic process"
  - "popularity"
  - "social media"
---

##### posted by _Marian-Andrei Rizoiu_ <br />

<!--<img style="float: left;" src="/img/expecting_to_be_HIP/expecting_to_be_hip_icon.png" width="180" Hspace="10" Vspace="5">-->
<img style="float: left;" src="/img/expecting_to_be_HIP/hatted_hip_hippo.png" width="150" Hspace="10" Vspace="5">

It is common knowledge that it is almost impossible to predict what will become viral in the online environment.
Perceptual biases and the competition for the limited available human attention make online popularity appear as almost random.
But **can we predict what could become viral given enough attention?**
As our recent WWW'17 paper shows, we can use theoretical models to explain observed popularity dynamics and to predict which items have the potential of becoming viral.

<!--more-->

### Why popularity?

Popularity is the novel currency of the online environment.
It is a social phenomenon, a state of being liked, admired, or supported by many people.
Popularity can be measured for an individual, a cultural item (like a book and a movie), a physical item, or a virtual entity that exist online (like a trending hashtag). 
Popularity captures people's attention, it is directly linked to political outcomes, monetary awards and various notions of fame. 
However, predicting what will become popular is notoriously difficult, given a series of social phenomena that we are just starting to understand (such as perceptual biases, the limited amount of available human attention or randomly occurring external events which direct the human attention towards certain items).
Better understanding of popularity and its dynamics over time is at the heart of understanding contemporary political and civil events, from grassroots movements such as Arab Springs and the Occupy movement, to actively promoting issues such as climate change and global public health.

### Modeling popularity with HIP

<figure style="float: right;" >
  <img src="/img/expecting_to_be_HIP/modeling_pop_HIP.png" width="250" Hspace="15" Vspace="10">
  <figcaption>Fig.1: Modeling popularity with HIP</figcaption>
</figure> 

While it may turn out impossible to accurately predict what will be highly popular in the future (in other words, **what will become viral**), we can already do the next best thing: we can identify what has the potential of becoming viral given enough attention by precisely quantifying the relationship between the popularity of an online item and the external promotions it receives. 
Our work recently presented at WWW'17 supplies the missing link between exogenous inputs from public social media platforms, such as Twitter, and endogenous responses within the content platform, such as YouTube. 
We developed a novel mathematical model HIP (short for Hawkes Intensity Processes), which can explain the complex popularity history of each video according to its type of content, network of diffusion, and sensitivity to promotion. 
HIP is based on a novel method for computing the expected event rate in unit time for point processes, called the Hawkes intensity and which was already detailed in one of our [previous posts](/post/hawkes_intensity/).
As shown in Fig.1, HIP is capable of explaining complex popularity dynamics by constructing a tight fit between observed popularity (<span style="color:green">green curve</span>) and the fitted popularity (<span style="color:blue">blue curve</span>), given the series of exogenous inputs (<span style="color:red">red curve</span>).


### Identifying potentially viral items

<figure style="float: right;">
    <img src="/img/expecting_to_be_HIP/endo_exo_map.png" width="300" Hspace="15" Vspace="10">
    <figcaption>Fig.2: The endo-exo map.</figcaption>
  
    <img src="/img/expecting_to_be_HIP/potentially_viral_video.png" width="300" Hspace="15" Vspace="10">
    <figcaption>Fig.3: A potentially viral video, which went viral.</figcaption>
</figure> 

Our model supplies a prototypical description of videos, called an endo-exo map. 
This map explains popularity as the result of an extrinsic factor – the amount of promotions from the outside world that the video receives, acting upon two intrinsic factors – and inherent virality on the X axis, and sensitivity to promotion on the Y axis.
Fig.2 shows a collection of videos projected on the endo-exo map: each disc is a video, the diameter of the disc is proportional to videos popularity, and the color intensity of the disc is proportional to the amount of promotion each video has received.
The map allows to analyze videos comparatively: the more a video is to the right, the higher its inherent virality; the more a video is to the top, the higher its sensitivity to external promotions.
This relation can be visually observed in Fig.2: videos with more privileged positions on the map acquire higher popularities (larger discs) with less external promotion (lighter colors).

**How to use the endo-exo map?**
The endo-exo map can be used when deciding between which videos to promote in an advertisement context.
Furthermore, it can be used to identify a particular class of videos: those that **have a high potential to become viral, but are yet to do so**.
Fig.3 shows an example of such a potentially viral video, which received virtually no attention during its first three months of live, only go viral during the forth month.
When studying the fitted HIP parameters for this video, we observe that HIP deemed it as highly viral, by studying its popularity dynamics during the first three months (shown in the inset - before going viral).
Potentially viral videos are expected to be found in the top-right corner of the endo-exo map, the area in which lies videos most likely to respond best to external promotion.

### Try it yourself

We built an interactive visualizer for HIP, applied to Youtube videos. 
It allows you to create your own video collections, by adding your favorite videos, visualizing them on the endo-exo map, alonside with the observed and fitted popularity series and video metadata.
Or simply explore one of the default visualizations, including TED videos and VEVO artists. 

If you want to try out on your own data, we have released [code and tutorials for fitting HIP](https://github.com/andrei-rizoiu/hip-popularity) and explaining popularity dynamics.

[<figure>
    <figcaption>(access the visualizer by clicking on the thumbnail below)</figcaption>
    <img src="/img/expecting_to_be_HIP/demo-screenshot.png"> 
</figure>](http://130.56.253.177/)

### Resources

<!--#### Preprint-->
<!--**Linking endogenous and exogenous popularity processes in social media**, by -->
<!--Marian-Andrei Rizoiu, Lexing Xie, Scott Sanner, Manuel Cebrian, Honglin Yu, Pascal Van Hentenryck, [http://arxiv.org/abs/1602.06033](http://arxiv.org/abs/1602.06033)-->

<!--#### Data and code-->
<!--Forthcoming. -->

[Marian-Andrei Rizoiu](http://www.rizoiu.eu), [Lexing Xie](http://users.cecs.anu.edu.au/~xlx/), [Scott Sanner](http://d3m.mie.utoronto.ca/), [Manuel Cebrian](http://web.media.mit.edu/~cebrian/), Honglin Yu and [Pascal Van Hentenryck](https://pascalvanhentenryck.engin.umich.edu/). **Expecting to be HIP: Hawkes Intensity Processes for Social Media Popularity**, in *Proceedings International Conference on World Wide Web* (WWW '17), pp. 735-744, Perth, Australia, 2017. 

| | |
|---|---|
|Download: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | [Paper PDF + SI](http://arxiv.org/pdf/1602.06033.pdf) &nbsp;&nbsp;&nbsp; [Talk slides](http://rizoiu.eu/documents/research/presentations/RIZOIU_WWW-2017_slides.pdf) |
|Data & code:  | [Github repository](https://github.com/andrei-rizoiu/hip-popularity) <!--&nbsp;&nbsp;&nbsp; [Interactive visualization system](https://github.com/andrei-rizoiu/hip-popularity#hip-visualization-system) --> |
|Bibtex: | |
``` 
@inproceedings{Rizoiu2017,
    address = {Perth, Australia},
    author = {Rizoiu, Marian-Andrei and Xie, Lexing and Sanner, Scott and Cebrian, Manuel and Yu, Honglin and {Van Hentenryck}, Pascal},
    booktitle = {World Wide Web 2017, International Conference on},
    pages = {735--744},
    title = {Expecting to be {HIP}: Hawkes Intensity Processes for Social Media Popularity},
    year = {2017},
    doi = {10.1145/3038912.3052650},
    isbn = {9781450349130},
}

```
