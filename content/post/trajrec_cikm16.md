---
title: "Learning Points and Routes to Recommend Trajectories"
description: "We present a novel approach to jointly rank points-of-interest and plan routes"
date: "2016-08-31"
draft: false
categories:
 - "research"
 - "paper"
 - "data"
tags:
 - "recommendation"
 - "ranking"
 - "planning"
 - "stuctured prediction"
---

##### posted by _Dawei Chen_ 

<img src="/img/trajrec/threeflavours.png" height="150"> <br>
The problem of recommending tours to travellers is an important and broadly studied area. We consider the task of recommending a sequence of points-of-interest (POI), that simultaneously uses information about POIs and routes. 

<!--more-->

The problem
-------------------------
A large amount of location traces are becoming available from ubiquitous location tracking devices, which provide new opportunities for better travel planning traditionally done with written travel guides. Good solutions to these problems will in turn lead to better urban experiences for residents and visitors alike, and foster sharing of even more location-based behavioural data. A lot of work has been done in this area, such as using heuristic combination of locations and routes, or formulating an optimisation problem that is not informed or evaluated by behaviour history. We note that a principled method to jointly learn POI ranking and optimise for route creation is still missing. Furthermore, a unified approach to incorporate various features such as location, time, distance, user profile and social interactions is desired, as they tend to get specialised and separate treatments.


Our Solution
-------------------------
In our CIKM'16 paper, we address these challenges by unifying the treatment of various sources of information and learning from past behaviour. In particular,

* We develop a novel feature-driven approach that learns from past behaviour without having to design specialised treatment for spatial, temporal or social information. 
* We jointly optimise point preferences and routes, which shows good performance compared to recent results. We find that learning-based approaches generally outperform heuristic route recommendation. 
* We quantify the contributions from different components, such as ranking points, scoring transitions, and routing. We find that incorporating transitions to POI ranking results in a better sequence of POIs, and avoiding sub-tours further improves performance of classical Markov chain methods.
* Lastly, we propose a new metric to evaluate trajectories, which captures the order in which POIs are visited. This metric has some nice properties such as lying between 0 and 1, and achieves 1 if and only if the recommended trajectory is exactly the same as the ground truth.


Lessons learned
--------------------
I would like to share some lessons I learned from this project to newcomers:

* Problem formulation is essential to a research problem, it comes as no surprise that existing techniques can be employed to solve a tough problem with proper formulation.
* Pretend that you are not familiar with your work and find out as many assumptions as possible could help both problem formulation and solution.


Resources
--------------------
[Dawei Chen](http://cm.cecs.anu.edu.au/people), [Cheng Soon Ong](http://ong-home.my/) and [Lexing Xie](http://users.cecs.anu.edu.au/~xlx/). **[Learning Points and Routes to Recommend Trajectories](http://arxiv.org/pdf/1608.07051v1.pdf)**, in *Proceedings of the 25th ACM International Conference on Information and Knowledge Management* (CIKM '16), Indianapolis, IN, USA.

[Paper](http://arxiv.org/pdf/1608.07051v1.pdf) |
[Code + Data](https://bitbucket.org/d-chen/tour-cikm16) |
[Poster](http://cm.cecs.anu.edu.au/documents/chen_cikm16_poster.pdf)

Bibtex:
```
@inproceedings{chen2016,
        title={{Learning Points and Routes to Recommend Trajectories}},
        author={Chen, Dawei and Ong, Cheng Soon and Xie, Lexing},
        booktitle={Proceedings of the 25th ACM International Conference on Information and Knowledge Management},
        series={CIKM '16},
        address = {Indianapolis, IN, USA},
        doi = {10.1145/2983323.2983672},
        year={2016}
}
```

<br />
<br />
