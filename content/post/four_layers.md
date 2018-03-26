---
title: "The Layered Cake Structure of a Paper"
description: "The craft of paper writing can be mastered using recipes."
date: "2018-03-25"
draft: false
categories:
  - "advice"
  - "misc"
tags:
  - "cm"
  - "lexing.x"
  - "akmenon"
---


##### posted by _Lexing Xie_, additions and edits by _Aditya Menon_ <br /><p />

<img style="float: left;" 
	src="https://i1.wp.com/alyonascooking.com/wp-content/uploads/2016/03/IMG_8489.jpg?w=160" 
	width="100" Hspace="10" Vspace="5">
I like cakes, and I enjoy reading logically lucid research articles.
This post argues that research papers can benefit from explicitly thinking about and planning its _four_ logical layers, just like a multi-layered 
<a href=https://en.wikipedia.org/wiki/Mille-feuille>Mille-feuille</a>, or Napoleon cake (image credit: <a href=http://alyonascooking.com/2016/03/easy-napoleon-cake/>alyonascooking</a>).

<!--more-->

<p />

#### Motivation 
I gave the following advice multiple times to different people in the group in the past year or so. 
<!-- s -->
Penning it down may help aspiring researchers master the craft of technical story-telling.
<!-- s -->
This is a repackaging of technical writing tips (aka _open secret_) that are practiced often, but in my opinion, can be publicized more. 
<!-- s -->
Good writing advice exists in abundance. See [this recent one](http://approximatelycorrect.com/2018/01/29/heuristics-technical-scientific-writing-machine-learning-perspective/) by Zack Lipton, or [this](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1003453) or [this](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005619) or [this](http://asegrp.blogspot.com.au/2011/06/coping-with-issues-of-sloppiness-and.html).  

### 1. Section and subsection titles

They are the back-bone of the paper. 
<!-- s -->
If one collects all the section and subsection titles in a paper, they should make logical sense. 
<!-- s -->
Instead of section titles that simply say `Method` or `Model`, say a hypothetical cake-making paper may have the following sections:
```
Sec 3 Making puff pastry
Sec 4 Assembling the mille-feuille
```

<!-- s -->
For some work it is easy to see one linear sequence to present the ideas and results, such as [Action Schema Network](/post/asnets/). 
<!-- s -->
For others, there are several alternative sequencing that make sense, such as the [SIR-Hawkes](https://arxiv.org/abs/1711.01679) or [RNN-MAS](./) papers.
<!-- s -->
In the latter case, we chose a sequence that will better help the reader understand the proposal with the least amount of cognitive gaps and jumps. 
<!-- s -->
Try to avoid stand-alone vague terms at confusing nesting levels, such as 
```
Sec 5 Results
Sec 6 ...
Sec 6.2 Results
```

<!-- s -->
Lastly, the aesthetics of section titles matters too. 
<!-- s -->
Subsection should have parallel phrase structure, e.g. _designing, learning, extracting_ ... 
<!-- s -->
It is an eyesore to allow section titles to be overly long, e.g. spanning three lines in the paper template.
<!-- s -->
It is also irritating to have consecutive section titles without any content in between. 
```
6 Experiments
6.1 Design of experiments

We design...
```

### 2. Paragraphs

The logical back-bone of each section or subsection is reflected in its paragraphs. 
<!-- s -->
Such logical structure should be immediately clear to the reader. 
<!-- s -->
In other words, a clear and predictable structure will allow the reader to focus on the content and argument, while an unusual or buggy structure will waste the reader's energy trying to guess what is being presented. 
<!-- s -->
One common way to organize a methodology section is what-how-why, or problem setup-approach-discussion. For example, the cake-making paper may have a section focusing on puff pastry:
<!-- s -->
```
Puff pastry forms the skeleton of a Mille-feuille, it has three desired properties: ...

There are four key steps for making good puff pastry ...

This method works on plain flour and whole wheat. For recipe with pumpkin, see ...
```
<!-- s -->
One common way to present a set of results is *how-what-sowhat*. 
<!-- s -->
Or, how the result is generated, key observations, and then implications and discussions. For example:
<!-- s -->
```
We generate 16 batches of Mille-feuille, with two levels of butter, four different nuts, and two different fruit toppings. We tested them on four cultural groups recruited on a university campus, and report majority preferences. 

Table 1 summarises our results. We found that the Tahiti group strongly prefers macadamia, and the Antarctica group dislikes peanuts. ... 

Our observations imply that fruit toppings can change seasonally and will not influence the market performance of Mille-feuille. The preference for nuts were known [Babylonian, 2300BC] but observations about the Antarctica population is new. 
```

If you find certain paragraphs flowing on and on, it is time to consider splitting it. Pause to summarise the main logical point this paragraph tries to make, and how to split is usually clear. 


### 3. Sentences

Within a paragraph, sentences string together a smooth logical flow to cover the core idea. 
<!-- s -->
Naturally, adjacent sentences often have logical relationships. 
<!-- s -->
The most common one being cause-effect 
```
The pastry should be chilled but baked when the oven is at 200 centigrade or more. This is to allow it to puff before the butter melts.
```
or parallel 
```
To roll a puff pastry dough, first .... Then ... Finally ...
```

<!-- s -->
Each sentence should introduce *one and only one* new thing to the reader. The new thing should be connected to the previous sentence to avoid logical jumps. 
<!-- s -->
It is common in early drafts to eagerly pile insights into a long sentence. 
<!-- s -->
This is easy to improve by breaking them into two or more sentences -- the fixing of the example below is left as reader exercise. 
<!-- s -->
```
Temperature controls for puff pastries is key to its success, which the refrigerated resting phase determines the quality of mixing between starch and fat, furthermore the baking temperature determines the puffiness and surface consistency. 
```

<!-- s -->
A corollary of this advice is to *present each new concept and new argument once and only once.* 
<!-- s -->
It is enjoyable for the reader to have a bit more insight as she reads, rather than encountering the same argument again and again. 
<!-- s -->
Introduction and conclusion of the paper are notable exceptions, since their purpose is to **succinctly** summarise key points of the paper. 
<!-- s -->
Content selection and presentation in these sections is left for a separate discussion.

<!-- s -->
It is the authors' responsibility to *anticipate reader questions*, such as why should one follow such steps, the computational complexity, how to choose hyper-parameters, etc. Point to other sections that may contain additional justification. 
<!-- s -->
```
...
The multiple resting rounds for pastry dough is time-consuming, but essential for the adequate mixing of starch and fat components. The optimal resting time is believed to be 2 hours and can be as short as 1.5 hours. Section 5 contains results of varied mixing time with different fat ingredients such as butter, lard, or their vegetarian replacements.
```
<!-- s -->
It is also the authors' responsibility to echo (but not repeat) earlier content in the paper, and point out non-obvious connections. 
```
... Step 2 of pastry-making involves multiple rounds of mixing and refrigerated resting. ... This is time-consuming but is the only way to ensure the first requirement outlined in the last section -- be puffy! 
```


### 4. Within a sentence

*Brevity is the soul of wit*. I am a big fan of punchy and accurate sentences. Here is a handful of tips for generating them, google will find you many many more (e.g. [this](http://asegrp.blogspot.com.au/2011/06/coping-with-issues-of-sloppiness-and.html))

* Replace emtpy words with active words. For example, 

```
Utilisation of appropriate instrumentation will ease the creation of puff pastry.
```
becomes
```
Making puff pastry needs the right tools. 
```
* Get to the primary subject of a sentence without delay. e.g. instead of 

```
A common substitute, especially popular in recent years, is brown sugar
```
say 
```
Brown sugar is a common substitute
```

* Remove unnecessary words, such that `there is no doubt that puff pastry is ...` becomes `no doubt puff pastry is ...`. See [Strunk and White](http://www.bartleby.com/141/strunk5.html#13) and [Good Writing Matters](https://www.extension.harvard.edu/inside-extension/cut-clutter-17-phrases-omit-your-writing-today) for more examples. 
* A common sin is using the same (non-trivial) word multiple time in a para, unless one is aiming for deliberate symmetry. For example, 

```
Choosing the right tools is important. ... It is important to let the dough rest for 30 minutes ... Sugar content is the most important ingredient affecting user satisfaction.  
```
may become the following after looking up the thesaurus. 
```
Choosing the right tools is important. ... It is crucial to let the dough rest for 30 minutes ... Sugar content is the most critical ingredient affecting user satisfaction.  
```

* Avoid subjective words that cannot be backed up by evidence. As a consequence, words such as "amazing" "wonderful" are banned from papers. Notable exceptions include _surprising_, _disappointing_. For example, a paper could say that one was expecting worse-case exponential time for the simplex method for solving linear programs, but _surprisingly_ it terminates in low-order polynomial time for most practical cases. 


**To conclude**, 
practice makes perfect. 
Even for experienced writers, bugs at these four layers creep up at different iterations of paper writing. The only way to combat such sloppiness is to proof read -- with the criteria that a paper should 
_compile_<sup>1</sup> at all four logical levels.

Aside: there are many other worthy subtopics about the making of a great technical paper. Let me know in person, or post a comment below. 


Cake party for the lab, anyone?

---------

<sup>1</sup> The original idea for a "compiler" check for a paper comes from [Salman Durani](http://users.cecs.anu.edu.au/~Salman.Durrani/) in private communication.

<sup>*</sup> Any culinary instructions contained in this article are purely fictional. Our advice is _not_ to follow them. 

<!--
	Paper-writing is a critical and integral part of performing research. It forces us to communicate the methods and results in one linear order, and in the process we formally reflect the motivation and significance for each part of the work. 

	non native speaker, with confidence 
	Chinese chef cooking western cake, or 
	vice versa - Asian dishes are well within reach for 
-->