---
title: "AI as Cars - an Historical Analogy"
description: "Three timelines in developing and adopting cars may shed light on what humanity would do with machine intelligence."
date: "2019-07-17"
draft: false
categories:
  - "hmi"
  - "misc"
tags:
  - "machine intelligence"
  - "lexing.x"
---


##### Posted by _Lexing Xie_. Thanks to [_Mario Günther_](https://www.mario-guenther.com/) for many suggestions.<br /><p />

<img style="float: left;"
	src="/img/AI_cars/overview.png" Hspace="5" Vspace="10"><p />
  <small>
    Fig. 1<sup>4</sup>: Overview of three concurrently evolving timelines in the development of cars. Top (green) - key events in engine and early system developments. Middle (red) - key events in car and road-safety related legislations. Bottom (blue) - rough separation of eras in car styling. Key events selected from Wikipedia narratives on [cars](https://en.wikipedia.org/wiki/Car) and [history of the automobile](https://en.wikipedia.org/wiki/History_of_the_automobile)<sup>2</sup>. See article for discussion. For readability, time scales are not uniform.
  </small>

<!--more-->
In the past few years, Artificial Intelligence (AI) entered everyday conversations as both the boon and bane for our futures.
<!-- s -->
In this article, we draw a seemingly remote analogy between AI and cars.
<!-- s -->
While separated by the software/hardware boundary, AI and cars are complex machinery that have been under rapid development for half a century or more, and is now (or will be) an integral part of our daily lives.
<!-- s -->
We review the development of cars since the 18th century as three concurrently evolving timelines<sup>2</sup> including the core technology, the legislation (and the needs driving it), and peripheral components.
<!-- s -->
The goal of the historical narrative is to highlight several similarities in the development of cars and AI,
including the excitement of how new technology shapes our world and the fear of its danger and negative effects.
<!-- s -->
The Chinese saying has it that one can use history as a mirror<sup>3</sup>, we hope this analogy will help the community reflect the path for AI and shape what may happen.
<!-- s -->

<!--
We feel that this is the right time to reflect on the analogy physical and software machines,
because our fears and worries about AI wrecking harm bears resemblance with those experienced by our post industrial-revolution ancestors.
s -->
This post pays tribute to the recently launched ANU [Humanising Machine Intelligence](https://hmi.anu.edu.au/) (HMI) project.
<!-- s -->
The idea for writing it originated from a talk I gave at the invitation of HMI colleagues<sup>1</sup>.
<!-- s -->
We also invite the readers to envision the goals and approaches to humanising Machine Intelligence (MI) through a familiar machine.
<!-- s ... don't like the last sentence -->


#### 1. Core components and systems

An automobile is a complex driving machine with tens of thousands of moving parts<sup>7</sup>.
<!-- s -->
We start the discussion on cars from its core power source -- the engine.
<!-- s -->

<figure class="asn-fig asn-left" style="max-width: 750px;">
    <img src="/img/AI_cars/engine.png">
    <figcaption>
      Fig. 2: Timeline of early development activities for engines in the 1700s and 1800s, and inception of the commercial automobile<sup>2</sup>.
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
In 1897,  Rudolf Diesel invented the diesel engine, which, after undergoing many generations of development, still competes with the gasoline engine for fuel efficiency and power.
<!-- s -->
The Ford Model T entered market in 1913.
<!-- s -->
It was the first mass produced and widely adopted car model.

One notable aspect of engine development is that many different technologies co-existed and co-evolved for a long period of time.
<!-- s -->
For example, new steam engines were designed in 1950s that are [powered by small nuclear reactors](https://en.wikipedia.org/wiki/Ford_Nucleon).
<!-- s -->
On the other hand, electric engines started in 1928, but it wasn't until the 2000s that they became widely available to the average driver.

**What might this mean for Machine Intelligence?**
<!-- s -->
Algorithms are the _engines_ that power Machine Intelligence.
<!-- s -->
Over the last few decades, many new algorithms are being invented and perfected for performance and speed.
<!-- s -->
The development of new algorithms will continue by the growing community of Machine Intelligence researchers.
<!-- s -->
We should expect a constant stream of incremental improvements for the currently most popular algorithm paradigm - such as neural networks, as well as occasional disruptive changes.
<!-- s -->
For example, [electric cars](https://en.wikipedia.org/wiki/Electric_car) went from experimental to mass-market in the last decade, and [solar car](https://en.wikipedia.org/wiki/Solar_car) product was only recently [shown to public](https://www.engadget.com/2019/07/04/lightyear-one-solar-car-goodwood/). One may ask if another algorithm may replace neural networks soon?
<!-- s -->
The coexistence of multiple core technologies also holds for Machine Intelligence algorithms -- not every machine learning problem needs a deep neural network -- generalised linear models, boosting and ensemble classifiers, kernel machines, and others will continue to play their roles in a variety of scenarios.
<!-- s -->
What this implies is that students of Machine Intelligence should start from a broad foundation of different mathematical tools and decision-making paradigms, to be able to adapt to the technology shifts in the future.

<!-- s -->
We also observe that whole-system prototypes and engines are developed simultaneously.
<!-- s -->
Internet companies have been practicing building large online systems driven by Machine Intelligence algorithms for the past two decades or so.
<!-- s -->
Each large company has its home-brew machine learning systems and peripheral components.
<!-- s
Much of these systems and practices are application specific and do not directly translate to other problem domains. -->
<!-- s -->
Cars have evolved for more than a decade (1885 to 1913) from being a niche product (Benz Motowagen) to a mass market (Ford Model T).
<!-- s -->
The technical community is working hard on common components and reusable systems, one may wonder what the "Model T" equivalent of machine learning looks like?


#### 2. Legislation

<!-- An automobile consist of a many sophisticated parts working together, for mechanical efficiency, safety, and passenger comfort.
s -->
Every complex machine can fail, sometimes due to [faulty parts](https://www.toyota.com.au/news/toyota-australia-ahead-of-schedule-takata-airbag-recall-expansion), sometimes due to humans who are in or around the car.
<!-- s -->
The history of car accidents and mishaps is as long as the history of the car itself.
<!-- s -->
The [first fatal accident](https://en.wikipedia.org/wiki/Mary_Ward_(scientist)) happened in 1869 when a passenger was thrown out a experimental steam car.
<!-- s -->
The year 1896 saw the [first pedestrian fatality](https://en.wikipedia.org/wiki/Death_of_Bridget_Driscoll) in London when the car was traveling at 4 miles per hour.
<!-- s -->
Legislations on the behaviours of cars and humans developed thereafter.  
<!-- the need to integrate automobile to society.
 the above sentence is lame -->

<figure class="asn-fig asn-left" style="max-width: 800px;">
    <img src="/img/AI_cars/legislation.png">
    <figcaption>
      Fig. 3: Development timeline of early automotive legislations<sup>5</sup>.
    </figcaption>
</figure>

One notable aspect of the legislations is the speed limit.
<!-- s -->
The Locomotives on Highways Act 1861 introduced the first speed limit of 10 mph on open roads, or 5mph in inhabited areas.
<!-- s -->
The second edition [The Locomotive Act 1865](https://en.wikipedia.org/wiki/Locomotive_Acts#The_Locomotive_Act_1865_(Red_Flag_Act)) reduced this limit to a draconian 4mph (2mph in towns), and required that a man carrying a red flag to walk in front of the vehicle hauling multiple wagons.
<!-- s -->
This restriction essentially eliminated the advantage of cars over horse-drawn carriages,
and was a result of powerful lobbying by those with interests in railways and horse-drawn vehicles.
<!-- s -->
[The Locomotives on Highways Act 1896](https://en.wikipedia.org/wiki/Locomotives_on_Highways_Act_1896)
relaxed the speed limit to 14 mph, set in comparison to 'furious driving' of horse carriages.
<!-- s -->
This event has been celebrated by motor enthusiasts with the [London to Brighton Run](https://en.wikipedia.org/wiki/London_to_Brighton_Veteran_Car_Run) to this day.
<!-- s -->
Eight years later, the [Motor Car Act 1903](https://en.wikipedia.org/wiki/Motor_Car_Act_1903) raised the speed limit to 20 mph, and introduced the crime of reckless driving with associated penalties.
<!-- s -->
In [1930](https://en.wikipedia.org/wiki/Road_Traffic_Act_1930), the speed limit was controversially removed.
<!-- s -->
The documented reason was that it was difficult to enforce.
<!-- s -->
Four years later, in the face of a record number of road casualties (7,343 deaths and 231,603 injuries), [Road Traffic Act 1934](https://en.wikipedia.org/wiki/Road_Traffic_Act_1934) reintroduced a 30mph speed limit in built-up areas - a limit similar to those in use today.
<!-- s -->

Key measures of safety and liability was also developed in the same era, including car registration, classification of motor vehicles, driver licensing, driving test, requirement for insurance, driving offences, and others.

**What might this mean for Machine Intelligence?**
The automotive industry is heavily regulated.
<!-- s -->
Regulations cover how different components are designed, what safety features are included, and the overall performance of any given vehicle, such as noise and emission levels.
<!-- s -->
In addition, there are independent agencies who provide vehicles safety ratings and extensive consumer surveys on user ratings.
<!-- s -->
As recent incidents show, the regulation of Machine Intelligence systems is in its very early stages.
<!-- s -->
One main part of existing regulation is around data protection and access restrictions.
<!-- s -->
But they are far from sufficient, for instance, hidden attributes such as race and gender [can be inferred even if not explicitly collected](https://news.cornell.edu/stories/2019/01/study-ai-may-mask-racial-disparities-credit-lending).
<!-- s -->
Just like the [emission standards](https://en.wikipedia.org/wiki/Volkswagen_emissions_scandal), MI companies should be transparent on what data is collected and how its used.
<!-- s -->
The public should not be shocked at what [our voice assistants at home listens to](https://www.wired.com/story/whos-listening-talk-google-assistant/).
<!-- s
Another salient difference is the scale of influence of a Machine Intelligence system - which can affect thousands of people e.g. in a banking application, or all internet users, e.g. in online search. Compared to automobile safety, which each individual failure affects the driver, passenger, and people in their immediate physical surroundings.
-->

In addition to regulating the components and processes of the machine (cars), we can ponder what the Machine Intelligence counterparts may be for behaviour and competence.
<!-- we also need regulations for people and behaviours around the machine. Such as drivers' license, penalties for reckless driving, and protocols for insurance and liability in general.
-->
<!-- s -->
Should practitioners hold a license (or a university-level course in the subject, or a graduate degree), and be subjected to continuous monitoring (such as the learning and re-certification required for medical practitioners)?
<!-- s -->
Who should be liable for mishaps resulting from the Machine Intelligence system -- the practitioner, the company employing them, or the producer of the original algorithm?

<!-- s -->
There is considerable urgency for Machine Intelligence researchers, practitioners and society at large to understand the safety, moral and ethical implications of MI systems.
<!-- s -->
There is hope that this will happen more proactively than the Road Traffic Act of 1934.
<!-- s -->
Let's do better than merely reacting to record number of accidents!


#### 3. Peripheral components and eras of evolution

It is estimated that over 100,000 patents created the modern automobile and motorcycle<sup>8</sup>.
<!-- s -->
Besides the chassis and [powertrain](https://en.wikipedia.org/wiki/Powertrain) that can be considered as the skeleton and muscular system of the car, many other components make the rest of the machine practical, comfortable and even enjoyable to drive and ride.
<!-- s -->
Figure 4 lays out a timeline of the [five eras of invention](https://en.wikipedia.org/wiki/History_of_the_automobile#Eras_of_invention), and a non-exhaustive list of common components.

<figure class="asn-fig asn-left" style="max-width: 800px;">
    <img src="/img/AI_cars/otherthings.png">
    <figcaption>
      Fig. 4: Timeline of automobile styles and example list of various components in a vehicle.
    </figcaption>
</figure>

**What might this mean for Machine Intelligence?**
There are direct analogies from some of these parts to those in a Machine Intelligence system.
<!-- s -->
The notion of a dashboard is now commonplace in deployed machine learning systems<sup>9</sup>,
the importance of which is underscored by well-publicized cases of data drift and prediction failure over time in non-mission critical systems<sup>10</sup>.
<!-- s -->
Other analogies may be still open for imagination, such as the counter-part of headlights, Antilock Breaking System (ABS), and others.

On the adoption and use of automobiles, the machine went from being operated by hobbist or requiring specialised knowledge to operate (chauffeurs) to being a skill that a large fraction of the population has.
<!-- s -->
In the understanding and maintenance of automobiles, on one hand the reliability improved so much that a driver no longer need to be prepared to stop on the road, pop the hood open, and supply crucial liquids (water, oil, fluid).
<!-- s -->
On the other hand, the contents of popular mechanics and fix-your-own-car videos has proliferated, that people can learn to fix many small problems via self-education.
<!-- s -->
One may ask, what will it take for machine learning to be both accessible for novices and enthusiasts alike?

Finally, one may ask what Machine Intelligence applications may evolved into, analogous to the diverse styles and functions of automobiles, e.g., 4-wheel drives, convertibles, SUVs, trucks, vans, buses, or even [road trains](https://en.wikipedia.org/wiki/Road_train)?


#### Parting thoughts

When one thinks of a car these days, the first reaction usually isn't that it is complex or dangerous.
<!-- s -->
This is despite the fact that automobiles brought dramatic changes in how we travel, how we live, how our cities and rural landscape look like in the past century or so.

The recent development on AI and Machine Intelligence may seem scary because much of their effects and implications are unknown.
<!-- s -->
In the early 20th century, people have approached cars with the same level of apprehension.
<!-- s -->
The not-so-short history on how humans _humanised_ cars may offer a few fruitful thoughts on how we should humanise Machine Intelligence.
<!-- s -->
This is a timely subject that needs much intellectual energy from students, the public, policy makers and researchers all alike.
<!-- s -->
One place for such thinking and debate is the [HMI project](https://hmi.anu.edu.au/), stay tuned!

<!--
end with another plug for HMI
-->
---------
<small>
<sup>1</sup> This article is based on part of my talk given at the "AI, Politics and Security" workshop jointly held by [ANU Bell School](http://bellschool.anu.edu.au/) and [LeverhulmeCFI](http://lcfi.ac.uk/) in March 2019.

<sup>2</sup> All car-related knowledge in this post comes from Wikipedia, a big thank you to Wikipedians for their curation of such knowledge. Any mis-interpretations are mine. https://en.wikipedia.org/wiki/Car, https://en.wikipedia.org/wiki/History_of_the_automobile

<sup>3</sup> There is a long tradition of making the analogy of history and mirror in Chinese official culture, for example the name of a grand history book, Zi Zhi Tong Jian (资治通鉴), https://www.theepochtimes.com/grand-book-of-history-a-mirror-for-chinese-emperors_1346839.html.

<sup>4</sup> We are grateful for the free clipart for cars http://clipart-library.com/cartoon-car-images-free.html

<sup>5</sup> Wikipedia pages on UK Locomotive Acts, https://en.wikipedia.org/wiki/Locomotive_Acts, https://en.wikipedia.org/wiki/Locomotives_on_Highways_Act_1896, https://en.wikipedia.org/wiki/Motor_Car_Act_1903, https://en.wikipedia.org/wiki/Road_Traffic_Act_1930, https://en.wikipedia.org/wiki/Road_Traffic_Act_1934

<sup>6</sup> Ning P, Schwebel DC, Huang H, Li L, Li J, Hu G (2016) Global Progress in Road Injury Mortality since 2010. PLoS ONE 11(10): e0164560. https://doi.org/10.1371/journal.pone.0164560

<sup>7</sup> How many parts is each car made of?, Toyota Children's Question Room, retrieved July 2019 https://www.toyota.co.jp/en/kids/faq/d/01/04/

<sup>8</sup> Jerina, Nataša G. (May 2014). "Turin Charter ratified by FIVA". TICCIH. http://ticcih.org/turin-charter-ratified-by-fiva-federation-internationale-des-vehicules-anciens/, Retrieved July 2019.

<sup>9</sup> Google Cloud Machine Learning Engine description, https://cloud.google.com/ml-engine/, Retrieved July 2019.

<sup>10</sup> Lazer, D., Kennedy, R., King, G., & Vespignani, A. (2014). The parable of Google Flu: traps in big data analysis. Science, 343(6176), 1203-1205.
</small>
