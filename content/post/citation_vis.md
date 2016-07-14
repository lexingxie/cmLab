---
date: "2016-07-12"
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
<img width=257 src="/img/citation/mini_bar.png">

The colored half-wheels above summarizes the overall amount of citation between a conference in question (gray node in the center) and the top 25 other conferences or journals that cites or are cited by this venue. The thickness of the edges denote the amount of citations in either direction; the blue edges denote references, or incoming information flow for this conference; the red edges denote citations, or outgoing infomration flow. The node colors are shaded and sorted by the ratio of incoming vs outgoing information flow -- the node corresponding to the conference itself is white, due to equal in/out citations and with usually thick edges. 

Left to right above: NIPS in machine learning, PLDI on programming language design and implementation, and WSDM on web search and data mining. Click on individual conferences above or below for details. 

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
* Where is _conference X_? The list of conferences and their grouping is arbitrary based on the biased and limited knowledge of the author, drop me a line or leave a comment if you'd like to see one or more particular conference included. 
* Why there is conference X but not Y? There is still some data or software bug encountered by some conferences, I aim to add them as bug fixes go along. 

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
	CHI - Human Factors in Computing Systems (1982 - 2015)
 <img align=center width=250 src="/img/citation/CHI/CHI_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/UIST>
	UIST - User Interface Software and Technology (1991 - 2015)
 <img align=center width=250 src="/img/citation/UIST/UIST_mini_graph.png">
<a>
</td>


<td>
<a href=/citation/IUI>
	IUI - Intelligent User Interfaces (1991 - 2015)
 <img align=center width=250 src="/img/citation/IUI/IUI_mini_graph.png">
<a>
</td>

</tr>
<tr>

<td>
<a href=/citation/CSCW>
	CSCW - Conference on Computer Supported Cooperative Work (1986 - 2015)
 <img align=center width=250 src="/img/citation/CSCW/CSCW_mini_graph.png">
<a>
</td>


<td>
<a href=/citation/ICMI>
	ICMI - International Conference on Multimodal Interfaces (1998 - 2014)
 <img align=center width=250 src="/img/citation/ICMI/ICMI_mini_graph.png">
<a>
</td>

</tr>
</table>

<a id="ai"></a>
#### AI, robotics, planning

<table width=800>
<tr>
	
<td>
<a href=/citation/IJCAI>
	IJCAI - International Joint Conference on Artificial Intelligence (1969 - 2015)
 <img align=center width=250 src="/img/citation/IJCAI/IJCAI_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/IROS>
	IROS - Intelligent RObots and Systems (1988-2015) 
 <img align=center width=250 src="/img/citation/IROS/IROS_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/ICAPS>
	ICAPS - International Conference on Automated Planning and Scheduling (2003-2014) 
 <img align=center width=250 src="/img/citation/ICAPS/ICAPS_mini_graph.png">
<a>
</td>

</tr>
</table>

<a id="theory"></a>
#### CS theory
<table width=800>
<tr>

<td>
<a href=/citation/STOC>
	STOC - Symposium on the Theory of Computing (1969-2015) 
 <img align=center width=250 src="/img/citation/STOC/STOC_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/FOCS>
	FOCS - Foundations of Computer Science (1961-2015) 
 <img align=center width=250 src="/img/citation/FOCS/FOCS_mini_graph.png">
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
	SIGCOMM - ACM Special Interest Group on Data Communication (1969 - 2015)
 <img align=center width=250 src="/img/citation/SIGCOMM/SIGCOMM_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/SIGMETRICS>
	SIGMETRICS - Measurement and Modeling of Computer Systems (1972 - 2015)
 <img align=center width=250 src="/img/citation/SIGMETRICS/SIGMETRICS_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/IMC>
	IMC - Internet Measurement Conference (1990 - 2015)
 <img align=center width=250 src="/img/citation/IMC/IMC_mini_graph.png">
<a>
</td>

</tr>
</table>

<a id="pl"></a>
#### Programming language and software

<table width=800>
<tr>


<td width=33%>
<a href=/citation/PLDI>
	PLDI - Programming Language Design and Implementation (1987-2015)
 <img align=center width=250 src="/img/citation/PLDI/PLDI_mini_graph.png">
<a>
</td>

<td width=33%>
<a href=/citation/OOPSLA>
	OOPSLA - Conference on Object-Oriented Programming Systems, Languages, and Applications (1987-2015)
 <img align=center width=250 src="/img/citation/OOPSLA/OOPSLA_mini_graph.png">
<a>
</td>

<td width=33%>
<a href=/citation/ICSE>
	ICSE - International Conference on Software Engineering (1976-2015)
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

<td>
<a href=/citation/ICCV>
	ICCV - International Conference on Computer Vision (1987-2015) 
 <img align=center width=250 src="/img/citation/ICCV/ICCV_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/ECCV>
	ECCV - European Conference on Computer Vision (1990-2015) 
 <img align=center width=250 src="/img/citation/ECCV/ECCV_mini_graph.png">
<a>
</td>

</tr>
</table>

<a id="bio"></a>
#### Bioinformatics and computational biology 

<table width=800>
<tr>
<td>
<a href=/citation/RECOMB>
	RECOMB - Research in Computational Molecular Biology (1996-2015) 
 <img align=center width=250 src="/img/citation/RECOMB/RECOMB_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/ISMB>
	ISMB - Intelligent Systems in Molecular Biology (1993-2014) 
 <img align=center width=250 src="/img/citation/ISMB/ISMB_mini_graph.png">
<a>
</td>

<td>
<a href=/citation/PSB>
	PSB - PSB - Pacific Symposium on Biocomputing (1995-2015) 
 <img align=center width=250 src="/img/citation/PSB/PSB_mini_graph.png">
<a>
</td>

</tr>
</table>

<a id="sp"></a>
#### Signal and speech processing

<table width=800>
<tr>
	<td>
	<a href=/citation/ICASSP>
		ICASSP - International Conference on Acoustics, Speech, and Signal Processing (1976-2015) 
	 <img align=center width=250 src="/img/citation/ICASSP/ICASSP_mini_graph.png">
	<a>
	</td>

	<td>
	<a href=/citation/INTERSPEECH>
		INTERSPEECH - Conference of the International Speech Communication Association (1988-2016) 
	 <img align=center width=250 src="/img/citation/INTERSPEECH/INTERSPEECH_mini_graph.png">
	<a>
	</td>
</tr>
</table>

<!-- conferences w data or code bugs
	(data gen) AAAI, COLT(0), RSS(?)
	(vis code) SODA, ISMIR, UAI, ICRA
	 ax = sns.heatmap(cite_pubyear_count.loc[1975:2016], linewidths=.5, annot=True, fmt=".0f")
-->

### Backmatter

* Material on this page and associated detail pages are licenced under creative commons *Attribution-NonCommercial 4.0 International* license: [BY-NC-4.0](https://creativecommons.org/licenses/by-nc/4.0/)
* This is a work in progress. I'm certainly happy to hear comments, and if you use it in some way.  
* Thanks go to Richard Nock for inspiring discussions.
