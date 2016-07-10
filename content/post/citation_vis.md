---
date: "2016-07-08"
title: "Visualizing Citation Patterns of Computer Science Conferences"
description: "We plot the citation flow among different subfields in computer science, using data from microsoft academic graph."

categories:
  - "research"
  - "visualization"
tags:
  - "social"
  - "datasci"
  - "graph"
---

##### *posted by* Lexing Xie

This paper contain a series of visualizations on the citation records made by, and referring to papers in a number of conferences. 

<a href=/citation/NIPS><img width=260 src="/img/citation/NIPS/NIPS_mini_graph.png" alt="citation summary - NIPS"></a>
<a href=/citation/PLDI><img width=260 src="/img/citation/PLDI/PLDI_mini_graph.png"></a>
<a href=/citation/WSDM><img width=260 src="/img/citation/WSDM/WSDM_mini_graph.png"></a>

<!--more-->
The colored half-wheels above summarizes the overall amount of citation between a conference in question (gray node in the center) and the top 25 other conferences or journals that cites or are cited by this venue. The thickness of the edges denote the amount of citations in either direction; the blue edges denote references, or incoming information flow for this conference; the red edges denote citations, or outgoing infomration flow. The node colors are shaded and sorted by the ratio of incoming vs outgoing information flow -- the node corresponding to the conference itself is white, due to equal in/out citations and with usually thick edges. 

Left to right above: NIPS in machine learning, PLDI on programming language systems, and WSDM on web search and data mining. Click on individual conferences above or below for details. 

### Why is this worth looking at

**Where are the intellectual influences of a conference coming from, and going to?** I was wondering these myself, and the aha-moment when I saw the dataset that can answer them.  If you have been publishing in, and going to conference(s) for a while, or if you are about to enter a community formed researchers around a conference, you may wonder what this community's intellectual heirtage is.

Furthermore, one may wonder: have citation bahaviors changed over the years? <br />
Spoiler alert: yes they do, particularly right after 2005 or 2006, and we could probably name it the 'scholar search effect'. 

#### Data and method

Our data source is [Microsoft Academic Graph](http://research.microsoft.com/en-us/projects/mag/) (MAG), in particular, the version released on 2016-02-05. In particular, we group papers by venue, and map out the incoming and outgoing citations for all papers in a given venue known to MAG. 
The analysis was mostly conducted over late 2015 and the first half of 2016. The repo for data crunching, plotting and report generation are <a href=https://github.com/lexingxie/academic-graph>here</a>.

#### Caveats

* Statistics on the plot are based on counting citations individually, it could be skewed by one or a few highly cited paper(s), especially for small venues. 
* The paper counts (and hence citation and references per paper) include not just technical papers but also other items such as demos, abstracts for keynote talks, this may skew the average statistics of the reference and citation counts.  
* Where is _conference X_? The list of conferences and their grouping is arbitrary based on the biased and limited knowledge of the author, drop me a line or leave a comment if you'd like to see one or more particular conference lsted. 

### So what?

* *A few picture may be worth a thousand words*. I hope this gives useful insights for your conference, get to know a new conference, or it may be useful to help you present the profile and impact of a conference. 
* *Could this become an alternative impact metric*? Maybe. There are many metrics, some are widely used, such as [this](http://wokinfo.com/essays/impact-factor), [this](http://www.mapequation.org/), or [these](https://scholar.google.com/citations?view_op=top_venues) No metric is perfect, and having another view could certainly be useful. 
* *A low-dimentional similarity space of venues*, or this could lead to 'another map of science'. 

Happy to hear feedback or ideas -- leave a comment below, or let me know! 

<!--
* local dimensionality of a conference (specialization of the conference), AI conference high? e.g. ICML, CP, ICAPS
* animate map over time - plate tectonics of the field 
-->


### Show me the plots

You can either browse through [a list of all conferences](/tags/citation/), or navigate using the conference list grouped by topical area below. 

<a id="ml"></a>
#### Machine learning

<table width=800>
<tr>

<td width=33%>
<a href=/citation/ICML>
	ICML - International Conference on Machine Learning (1987-2015)
 <img align=center width=250 src="/img/citation/ICML/ICML_mini_graph.png">
<a>
</td>

<td width=33%>
<a href=/citation/NIPS>
	NIPS - Neural Information Processing Systems (1987-2015)
 <img align=center width=250 src="/img/citation/NIPS/NIPS_mini_graph.png">
<a>
</td>

</tr>
</table>


<a id="nlp"></a>
#### Natural Language processing

<table width=800>
<tr>

<td width=33% textalign=top>
<a href=/citation/ACL>
	ACL - Meeting of the Association for Computational Linguistics (1979-2015)
 <img align=center width=250 src="/img/citation/ACL/ACL_mini_graph.png">
<a>
</td>


<td width=33% textalign=top>
<a href=/citation/EMNLP>
	EMNLP - Empirical Methods in Natural Language Processing (2000-2015)
 <img align=center width=250 src="/img/citation/EMNLP/EMNLP_mini_graph.png">
<a>
</td>

<td width=33% textalign=top>
<a href=/citation/NAACL>
	NAACL - North American Chapter of the Association for Computational Linguistics (1991-2015)
 <img align=center width=250 src="/img/citation/NAACL/NAACL_mini_graph.png">
<a>
</td>

</tr>
</table>

<a id="web"></a>
#### Web, media, social, information retrieval and data mining

<table width=800>
<tr>
<td width=33%>
<a href=/citation/KDD>
	KDD - Knowledge Discovery and Data Mining (1994-2015)
 <img align=center width=250 src="/img/citation/KDD/KDD_mini_graph.png">
<a>
</td>

<td width=33%>
<a href=/citation/WWW>
	WWW - International World Wide Web Conferences (1994-2015)
 <img align=center width=250 src="/img/citation/WWW/WWW_mini_graph.png">
<a>
</td>

<td width=33%>
<a href=/citation/WSDM>
	WSDM - Web Search and Data Mining (2008-2015)
 <img align=center width=250 src="/img/citation/WSDM/WSDM_mini_graph.png">
<a>
</td>
</tr>

<tr>
<td width=33%>
<a href=/citation/SIGIR>
	SIGIR - International ACM SIGIR Conference on Research and Development in Information Retrieval (1971-2015)
 <img align=center width=250 src="/img/citation/SIGIR/SIGIR_mini_graph.png">
<a>
</td>

<td width=33%>
<a href=/citation/CIKM>
	CIKM - Conference on Information and Knowledge Management (1992-2015)
 <img align=center width=250 src="/img/citation/CIKM/CIKM_mini_graph.png">
<a>
</td>

<td width=33%>
<a href=/citation/ICWSM>
	ICWSM - International Conference on Weblogs and Social Media (2007-2015)
 <img align=center width=250 src="/img/citation/ICWSM/ICWSM_mini_graph.png">
<a>
</td>

</tr>

<tr>

<td>
<a href=/citation/SIGGRAPH>
	SIGGRAPH - International Conference on Computer Graphics and Interactive Techniques (1972-2015)
 <img align=center width=250 src="/img/citation/SIGGRAPH/SIGGRAPH_mini_graph.png">
<a>
</td>

<td width=33%>
<a href=/citation/MM>
	MM - ACM Multimedia (1993-2015)
 <img align=center width=250 src="/img/citation/MM/MM_mini_graph.png">
<a>
</td>
</tr>

</table>


<a id="hci"></a>
#### Human Computer Interaction

<table width=800>
<tr>

<td>
<a href=/citation/CHI>
	CHI - Human Factors in Computing Systems 
 <img align=center width=250 src="/img/citation/CHI/CHI_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/UIST>
	UIST - User Interface Software and Technology 
 <img align=center width=250 src="/img/citation/UIST/UIST_mini_graph.png">
<a>
</td>


<td>
<a href=/citation/IUI>
	IUI - Intelligent User Interfaces 
 <img align=center width=250 src="/img/citation/IUI/IUI_mini_graph.png">
<a>
</td>

</tr>
<tr>

<td>
<a href=/citation/CSCW>
	CSCW - Conference on Computer Supported Cooperative Work 
 <img align=center width=250 src="/img/citation/CSCW/CSCW_mini_graph.png">
<a>
</td>


<td>
<a href=/citation/ICMI>
	ICMI - International Conference on Multimodal Interfaces 
 <img align=center width=250 src="/img/citation/ICMI/ICMI_mini_graph.png">
<a>
</td>

</tr>
</table>

<a id="ai"></a>
#### Artificial Intelligence

<table width=800>
<tr>
	
<td>
<a href=/citation/IJCAI>
	IJCAI - International Joint Conference on Artificial Intelligence 
 <img align=center width=250 src="/img/citation/IJCAI/IJCAI_mini_graph.png">
<a>
</td>

</tr>
</table>

<a id="db"></a>
#### Databases

<table width=800>
<tr>

<td width=33%>
<a href=/citation/SIGMOD>
	SIGMOD - International Conference on Management of Data (1970-2015)
 <img align=center width=250 src="/img/citation/SIGMOD/SIGMOD_mini_graph.png">
<a>
</td>



<td width=33%>
<a href=/citation/VLDB>
	VLDB - Very Large Data Bases (1975-2015)
 <img align=center width=250 src="/img/citation/VLDB/VLDB_mini_graph.png">
<a>
</td>



<td width=33%>
<a href=/citation/ICDE>
	ICDE - International Conference on Data Engineering (1984-2015)
 <img align=center width=250 src="/img/citation/ICDE/ICDE_mini_graph.png">
<a>
</td>
</tr>

</table>


<a id="net"></a>
#### Communications and networks

<table width=800>
<tr>
<td>
<a href=/citation/SIGCOMM>
	SIGCOMM - ACM Special Interest Group on Data Communication 
 <img align=center width=250 src="/img/citation/SIGCOMM/SIGCOMM_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/SIGMETRICS>
	SIGMETRICS - Measurement and Modeling of Computer Systems 
 <img align=center width=250 src="/img/citation/SIGMETRICS/SIGMETRICS_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/IMC>
	IMC - Internet Measurement Conference 
 <img align=center width=250 src="/img/citation/IMC/IMC_mini_graph.png">
<a>
</td>

</tr>
</table>

<a id="pl"></a>
#### Programming language and software

<table width=800>
<tr>

<td>
<a href=/citation/PLDI>
	PLDI - Programming Language Design and Implementation 
 <img align=center width=250 src="/img/citation/PLDI/PLDI_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/OOPSLA>
	OOPSLA - Conference on Object-Oriented Programming Systems, Languages, and Applications 
 <img align=center width=250 src="/img/citation/OOPSLA/OOPSLA_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/ICSE>
	ICSE - International Conference on Software Engineering 
 <img align=center width=250 src="/img/citation/ICSE/ICSE_mini_graph.png">
<a>
</td>

</tr>
</table>

<a id="cv"></a>
#### Computer vision

<table width=800>
<tr>
	
<td>
<a href=/citation/CVPR>
	CVPR - Computer Vision and Pattern Recognition (1982 - 2015)
 <img align=center width=250 src="/img/citation/CVPR/CVPR_mini_graph.png">
<a>
</td>

</tr>
</table>

<a id="bio"></a>
#### Bioinformatics and computational biology 
TODO: RECOMB, ISMB and PSB

<a id="theory"></a>
#### CS Theory
TODO: SODA, STOC and FOCS

### Backmatters

* Material on this page and associated detail pages are licenced under [BY-NC-4.0](https://creativecommons.org/licenses/by-nc/4.0/)
* This is a work in progress. I'm certainly happy to hear comments, and if you use it in some way.  
