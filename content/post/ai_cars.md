---
title: "AI as ''Cars''? A Historic Analogy"
description: "Three timelines in developing and adopting cars may shed light on what humanity would do with machine intelligence."
date: "2019-07-01"
draft: true
categories:
  - "hmi"
  - "misc"
tags:
  - "machine intelligence"
  - "lexing.x"
---


##### posted by _Lexing Xie_<br /><p />

<img style="float: left;"
	src="/img/AI_cars/overview.png" Hspace="5" Vspace="10"><p />
  <small>
    Fig. 1<sup>4</sup>: Overview of three evolving timelines in the development of cars. Top (green) - key events in the core component (engine) and systems (early car models). Middle (red) - key events in car and road-safety related legislation. Bottom (blue) - rough separation of eras in car styling. Key events selected from Wikipedia narratives on [cars](https://en.wikipedia.org/wiki/Car) and [history of the automobile](https://en.wikipedia.org/wiki/History_of_the_automobile)<sup>2</sup>. See article for discussion. For readability, time scales are not uniform.
  </small>

<!--more-->
AI (Artificial Intelligence) is entered everyday and media conversations in the past few years as both the boon and bane for our futures.
<!-- s -->
In this article, we narrate the development of cars since the 18th century as three concurrently evolving timelines<sup>2</sup> including the core technology, the legislation (and the needs driving it), and peripheral technologies.
<!-- s -->
All of these make the car a machine that we rely on and even enjoy in our daily lives.
<!-- s -->
While on surface AI and cars are separated by the software/hardware boundary, both are very sophisticated machinery that have been under rapid development for half a century or more.
<!-- s -->
Both has fostered hope and fear that they will, or has already changed our lives and shaped our environment.


We feel that this is the right time to reflect on the analogy physical and software machines,
because our fears and worrries about AI wrecking harm bears resemblance with those experienced by our post industrial-revolution ancestors.
<!-- s -->
The Chinese saying has it that one can use history as a mirror<sup>3</sup>, we hope this analogy will help the community think about the path forward for AI.
<!-- s -->
In particular, this piece pays tribute to the recently launched ANU [Humanising Machine Intelligence](https://hmi.anu.edu.au/) (HMI) project。
<!-- s -->
Both because the idea for writing it originated from a workshop organised by HMI colleagues<sup>1</sup>,
also because our goal is to engage readers in shaping the goals and approaches to humanising machine intelligence (MI) through a familiar machine.
<!-- s -->

#### 1. Core components and systems

An automobile is a complex driving machine with tens of thousands of moving parts<sup>7</sup>.
<!-- s -->
We start the discussion on cars from its core power source -- the engine.
<!-- s -->

<figure class="asn-fig asn-left" style="max-width: 750px;">
    <img src="/img/AI_cars/engine.png">
    <figcaption>
      Fig. 2: Timeline of early development activities for engines in the 1700s and 1800s and commercial automobile.
    </figcaption>
</figure>

Figure 2 summarises the key events in the development of engines, as well as complete and commercially viable early models of cars.
<!-- s -->
Frenchmen Cugnot built and drove the first steam-powered tricycle down the streets of Paris in 1769.
<!-- s -->
The first internal combustion engines emerged in 1808 and was powered by hydrogen.
<!-- s -->
But neither the steam nor hydrogen engine caught on in large scale.
<!-- s -->
Almost half a century later, Nikolaus Otto built the first four-stroke gasoline internal combustion engine in 1861.
<!-- s -->
Benz Motorwagen was built in 1885 and patented in 1886.
<!-- s -->
This is now regarded as the birth of the modern car, as the "production" contains several identical copies.
<!-- s -->
In 1897,  Rudolf Diesel invented the diesel engine, which, after undergoing many generations of development, still competes with gasoline engine for fuel efficiency and power.
<!-- s -->
The Ford Model T entered market in 1913, was the first mass produced and widely adopted car model.

One notable aspect of engine development is that many different technologies co-existed and co-evolved for a long period of time.
<!-- s -->
Take, for example, steam engines took on new energy in the 1950s when nuclear power became available for industrial use.
<!-- s -->
On the other hand, electric engines started in 1928, but it wasn't until the 2000s that they became widely available to the average driver.

**What might this mean for machine intelligence?**
<!-- s -->
Algorithms are the _engines_ that power machine intelligence.
<!-- s -->
Over the last few decades, many new algorithms are being invented and perfected for performance and speed.
<!-- s -->
The development of new algorithms will continue by the growing community of machine intelligence researchers.
<!-- s -->
We should expect a constant stream of incremental improvements for the currently most popular algorithm paradigm - neural networks, as well as occasional disruptive changes.
<!-- s -->
Take, for example, [electric cars](https://en.wikipedia.org/wiki/Electric_car) went from experimental to mass-market in the last decade, and [solar car](https://en.wikipedia.org/wiki/Solar_car) product was only recently [shown to public](https://www.engadget.com/2019/07/04/lightyear-one-solar-car-goodwood/).
<!-- s -->
For cars, multiple engine types, namely steam, electric, and internal combustion, coexisted for a long time.
<!-- s -->
The same holds for machine intelligence algorithms -- not every machine learning problem needs a deep neural network, generalised linear models, boosting and ensemble classifiers, kernel machines, and others will continue to play their roles in a variety of scenarios.
<!-- s -->
What this implies is that students of machine learning should aim to build a broad foundation of different mathematical tools and decision-making paradigms, to be able to adapt and propel to the technolgy shifts in the future.

<!-- s -->
Our other observation is that whole-system prototypes and engines are developed simultaneously.
<!-- s -->
Internet companies have been practicing building large online systems driven by machine intelligence algorithms for the past two decades or so.
<!-- s -->
Each large company has its home-brew machine learning systems and peripheral components.
<!-- s -->
As we now know many negative aspects including bias and unfair effects on their users have only recently been noticed.
<!-- s -->
Much of these systems and practices are so application specific that do not directly translate to other problem domains.
<!-- s -->
Cars has evolved for more than a decade (1885 to 1913) from being a niche product (Benz Motowagen) to a mass market (Ford Model T).
<!-- s -->
The technical community are working hard on comomon components and reusable systems, one may wonder what the "Model T" equivalent of machine learning looks like?


#### 2. Legislation

An automobile consist of a many sophisticated parts working together, for mechanical efficiency, safety, and passenger comfort.
<!-- s -->
But every complex machine can fail, sometimes due to [faulty parts](https://www.toyota.com.au/news/toyota-australia-ahead-of-schedule-takata-airbag-recall-expansion), sometimes due to humans who are inside or outside the car.
<!-- s -->
The history of car accidents and mishaps is as long as the history of the car itself.
<!-- s -->
The [first fatal accident](https://en.wikipedia.org/wiki/Mary_Ward_(scientist)) happened in 1869 when a passenger was thrown out a experimental steam car.
<!-- s -->
The year 1896 saw the [first pedestrian fatality](https://en.wikipedia.org/wiki/Death_of_Bridget_Driscoll) in London when the car was traveling at 4 miles per hour.
<!-- s -->
Legislations on the behaviours of cars and humans in and around them developed after these unfortunate events and the need to integrate automobile to society.
<!-- the above sentence is lame -->

<figure class="asn-fig asn-left" style="max-width: 800px;">
    <img src="/img/AI_cars/legislation.png">
    <figcaption>
      Fig. 3: Timeline of development of automotive legislation<sup>5</sup>.
    </figcaption>
</figure>


One notable aspect of the legislation is the speed limit.
<!-- s -->

seatbelts?

**Compared to machine intelligence**

auto-industry regulation, safety ratings.

quantify damage and develop protocols for liability

To develop: protocol for driver's license

responsive vs proactive

#### 3. Peripheral components and eras of evolution

it is estimated that over 100,000 patents created the modern automobile and motorcycle<sup>8</sup>
<!-- s -->

<figure class="asn-fig asn-left" style="max-width: 800px;">
    <img src="/img/AI_cars/otherthings.png">
    <figcaption>
      Fig. 4: Timeline of automobile styles and example list of auto components.
    </figcaption>
</figure>

<!--
In 1870 Siegfried Marcus built the first gasoline powered combustion engine, which he placed on a pushcart, building four progressively more sophisticated combustion-engine cars over a 10-to-15-year span that influenced later cars. Marcus created the two-cycle combustion engine.[citation needed] The car's second incarnation in 1880 introduced a four-cycle, gasoline-powered engine, an ingenious carburetor design and magneto ignition. He created an additional two models further refining his design with steering, a clutch and a brake.
-->
Siegfried
<!-- s -->
If one collects all the section and subsection titles in a paper, they should make logical sense.
<!-- s -->

**Compared to machine intelligence**

whether it requires specialised knowledge to operate (from chauffeurs to everyone drives)

popular mechanics, fix-your-own-car2

given time, AI applications may evolved into sedan, hatchback, SUV, 4-wheel drives, pickup, vans, buses, road trains ...

**Putting it together**,
when one think of a car these days, the first reaction isn't complex or dangerous.
MI rely on algorithms, they are powerful and can be dangerous

AI seem scary because a lot of the surrounding factor are unkonwn (a priori)

put another plug for HMI

---------
<sup>1</sup> This article is based on part of my talk given at the "AI, Politics and Security" workshop between ANU and [LeverhulmeCFI](http://lcfi.ac.uk/) in March 2019.

<sup>2</sup> All car-related knowledge in this post comes from Wikipedia, a big thank you to Wikipedians for their curation of such knowledge. Any mis-interpretations are mine. https://en.wikipedia.org/wiki/Car, https://en.wikipedia.org/wiki/History_of_the_automobile

<sup>3</sup> There is a long tradition of making the analogy of history and mirror in Chinese official culture, for example the name of a grand history book, Zi Zhi Tong Jian (资治通鉴), https://www.theepochtimes.com/grand-book-of-history-a-mirror-for-chinese-emperors_1346839.html.

<sup>4</sup> We are grateful for the free clipart for cars http://clipart-library.com/cartoon-car-images-free.html

<sup>5</sup> Wikipedia pages on UK Locomotive Acts, https://en.wikipedia.org/wiki/Locomotive_Acts, https://en.wikipedia.org/wiki/Locomotives_on_Highways_Act_1896, https://en.wikipedia.org/wiki/Motor_Car_Act_1903, https://en.wikipedia.org/wiki/Road_Traffic_Act_1930, https://en.wikipedia.org/wiki/Road_Traffic_Act_1934

<sup>6</sup> Ning P, Schwebel DC, Huang H, Li L, Li J, Hu G (2016) Global Progress in Road Injury Mortality since 2010. PLoS ONE 11(10): e0164560. https://doi.org/10.1371/journal.pone.0164560

<sup>7</sup> How many parts is each car made of?, Toyota Children's Question Room, retrieved July 2019 https://www.toyota.co.jp/en/kids/faq/d/01/04/

<sup>8</sup> Jerina, Nataša G. (May 2014). "Turin Charter ratified by FIVA". TICCIH. Retrieved July 2019.
