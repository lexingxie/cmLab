---
date: "2016-08-16"
title: "How Long Do Papers Survive in the Collective Academic Memory?"
description: "We plot the citation survival rate of many computer science conferences, using data from microsoft academic graph."

categories:
  - "research"
  - "visualization"
tags:
  - "social media"
  - "datasci"
  - "graph"
---

##### *posted by* Lexing Xie

<a href=/citation/ACL><img width=200 src="/img/citation/ACL/ACL_citation_survival.png"></a>
<a href=/citation/PLDI><img width=200 src="/img/citation/PLDI/PLDI_citation_survival.png"></a>
<a href=/citation/ISMB><img width=200 src="/img/citation/ISMB/ISMB_citation_survival.png"></a>
<a href=/citation/SIGGRAPH><img width=200 src="/img/citation/SIGGRAPH/SIGGRAPH_citation_survival.png"></a>
<!--more-->

This is the overview page for the citation survival rate of many computer science conferences, using data from microsoft academic graph. For a general discussion of data process, and why we are doing this, see the [overview blog post](/post/citation_vis). For other visualizations on this dataset, see the [citation flow summary page](/post/citation_flow), or details about individual conferences below. 

Left to right above: ACL on natural language processing, PLDI on programming language design and implementation, ISMB on bioinformatics, and SIGGRAPH on computer graphics. 


### FAQ

* *How is citation survival computed*? It is the fraction of papers from a conference that are cited at least once more than X years after publication. This plot and its name was coined and first [implemented for ACL](https://twitter.com/jacobeisenstein/status/744221019875971073) by [Jacob Eisenstein](http://www.cc.gatech.edu/~jeisenst).
* *Should survival rates decrease as papers age?* or, is there a bug in [SIGGRAPH](#siggraph) data? Survival rates do not necessarily decrease, since both the denominator (# of papers with age X and above) and the numerator (# of papers cited with the above) get smaller as we look at older papers. So there is no bug for SIGGRAPH, for 20 years, 635 papers cited 5 year+ out of a total of 1257, 50%; and for 5 years, 3820 papers cited 5 year+ out of a total of 9159, 42%. Or as one may say: older SIGGRAPH papers are arguably doing better than newer ones overall. 
* *Why are the results different?* The [plot by Jacob](https://twitter.com/jacobeisenstein/status/744221019875971073) show a 20-year survival rate of 20%, but yours show 40% for ACL? The source of citation data are different. The plot by Jacob counts citations to ACL papers from papers within ACL Anthology (i.e. within the natrual language processing community), but data in this analysis include citations by all academic publications (as tracked by [MAG](http://research.microsoft.com/en-us/projects/mag/)). In other words, after 20 years, 20% of ACL papers are only cited from _outside_ its own community -- this is quite good! 

### Show me the plots

You can either browse through [a list of all conferences](/tags/citation/), or navigate using the conference list grouped by topical area below. 

<a id="ml"></a>
#### Machine learning

<table width=800>
<tr>

<td width=33%>
<a href=/citation/ICML>
	ICML - International Conference on Machine Learning (1987-2015)
 <img align=center width=250 src="/img/citation/ICML/ICML_citation_survival.png">
<a>
</td>

<td width=33%>
<a href=/citation/NIPS>
	NIPS - Neural Information Processing Systems (1987-2015)
 <img align=center width=250 src="/img/citation/NIPS/NIPS_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/UAI>
	UAI - Uncertainty in Artificial Intelligence (1985-2014) 
 <img align=center width=250 src="/img/citation/UAI/UAI_citation_survival.png">
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
 <img align=center width=250 src="/img/citation/ACL/ACL_citation_survival.png">
<a>
</td>


<td width=33% textalign=top>
<a href=/citation/EMNLP>
	EMNLP - Empirical Methods in Natural Language Processing (2000-2015)
 <img align=center width=250 src="/img/citation/EMNLP/EMNLP_citation_survival.png">
<a>
</td>

<td width=33% textalign=top>
<a href=/citation/NAACL>
	NAACL - North American Chapter of the Association for Computational Linguistics (1991-2015)
 <img align=center width=250 src="/img/citation/NAACL/NAACL_citation_survival.png">
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
 <img align=center width=250 src="/img/citation/KDD/KDD_citation_survival.png">
<a>
</td>

<td width=33%>
<a href=/citation/WWW>
	WWW - International World Wide Web Conferences (1994-2015)
 <img align=center width=250 src="/img/citation/WWW/WWW_citation_survival.png">
<a>
</td>

<td width=33%>
<a href=/citation/WSDM>
	WSDM - Web Search and Data Mining (2008-2015)
 <img align=center width=250 src="/img/citation/WSDM/WSDM_citation_survival.png">
<a>
</td>
</tr>

<tr>
<td width=33%>
<a href=/citation/SIGIR>
	SIGIR - International ACM SIGIR Conference on Research and Development in Information Retrieval (1971-2015)
 <img align=center width=250 src="/img/citation/SIGIR/SIGIR_citation_survival.png">
<a>
</td>

<td width=33%>
<a href=/citation/CIKM>
	CIKM - Conference on Information and Knowledge Management (1992-2015)
 <img align=center width=250 src="/img/citation/CIKM/CIKM_citation_survival.png">
<a>
</td>

<td width=33%>
<a href=/citation/ICWSM>
	ICWSM - International Conference on Weblogs and Social Media (2007-2015)
 <img align=center width=250 src="/img/citation/ICWSM/ICWSM_citation_survival.png">
<a>
</td>

</tr>

<tr>
<a id="siggraph"></a>
<td>
<a href=/citation/SIGGRAPH>
	SIGGRAPH - International Conference on Computer Graphics and Interactive Techniques (1972-2015)
 <img align=center width=250 src="/img/citation/SIGGRAPH/SIGGRAPH_citation_survival.png">
<a>
</td>

<td width=33%>
<a href=/citation/MM>
	MM - ACM Multimedia (1993-2015)
 <img align=center width=250 src="/img/citation/MM/MM_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/ISMIR>
	ISMIR - International Symposium/Conference on Music Information Retrieval (2000-2014) 
 <img align=center width=250 src="/img/citation/ISMIR/ISMIR_citation_survival.png">
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
 <img align=center width=250 src="/img/citation/CHI/CHI_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/UIST>
	UIST - User Interface Software and Technology (1991 - 2015)
 <img align=center width=250 src="/img/citation/UIST/UIST_citation_survival.png">
<a>
</td>


<td>
<a href=/citation/IUI>
	IUI - Intelligent User Interfaces (1991 - 2015)
 <img align=center width=250 src="/img/citation/IUI/IUI_citation_survival.png">
<a>
</td>

</tr>
<tr>

<td>
<a href=/citation/CSCW>
	CSCW - Conference on Computer Supported Cooperative Work (1986 - 2015)
 <img align=center width=250 src="/img/citation/CSCW/CSCW_citation_survival.png">
<a>
</td>


<td>
<a href=/citation/ICMI>
	ICMI - International Conference on Multimodal Interfaces (1998 - 2014)
 <img align=center width=250 src="/img/citation/ICMI/ICMI_citation_survival.png">
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
 <img align=center width=250 src="/img/citation/IJCAI/IJCAI_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/IROS>
	IROS - Intelligent RObots and Systems (1988-2015) 
 <img align=center width=250 src="/img/citation/IROS/IROS_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/ICRA>
	ICRA - International Conference on Robotics and Automation (1975-2016) 
 <img align=center width=250 src="/img/citation/ICRA/ICRA_citation_survival.png">
<a>
</td>

</tr>
<tr>
<td>
<a href=/citation/ICAPS>
	ICAPS - International Conference on Automated Planning and Scheduling (2003-2014) 
 <img align=center width=250 src="/img/citation/ICAPS/ICAPS_citation_survival.png">
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
 <img align=center width=250 src="/img/citation/STOC/STOC_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/FOCS>
	FOCS - Foundations of Computer Science (1961-2015) 
 <img align=center width=250 src="/img/citation/FOCS/FOCS_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/SODA>
	SODA - Symposium on Discrete Algorithms (1990-2016)
 <img align=center width=250 src="/img/citation/SODA/SODA_citation_survival.png">
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
 <img align=center width=250 src="/img/citation/SIGMOD/SIGMOD_citation_survival.png">
<a>
</td>



<td width=33%>
<a href=/citation/VLDB>
	VLDB - Very Large Data Bases (1975-2015)
 <img align=center width=250 src="/img/citation/VLDB/VLDB_citation_survival.png">
<a>
</td>



<td width=33%>
<a href=/citation/ICDE>
	ICDE - International Conference on Data Engineering (1984-2015)
 <img align=center width=250 src="/img/citation/ICDE/ICDE_citation_survival.png">
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
 <img align=center width=250 src="/img/citation/SIGCOMM/SIGCOMM_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/SIGMETRICS>
	SIGMETRICS - Measurement and Modeling of Computer Systems (1972 - 2015)
 <img align=center width=250 src="/img/citation/SIGMETRICS/SIGMETRICS_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/IMC>
	IMC - Internet Measurement Conference (1990 - 2015)
 <img align=center width=250 src="/img/citation/IMC/IMC_citation_survival.png">
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
 <img align=center width=250 src="/img/citation/PLDI/PLDI_citation_survival.png">
<a>
</td>

<td width=33%>
<a href=/citation/OOPSLA>
	OOPSLA - Conference on Object-Oriented Programming Systems, Languages, and Applications (1987-2015)
 <img align=center width=250 src="/img/citation/OOPSLA/OOPSLA_citation_survival.png">
<a>
</td>

<td width=33%>
<a href=/citation/ICSE>
	ICSE - International Conference on Software Engineering (1976-2015)
 <img align=center width=250 src="/img/citation/ICSE/ICSE_citation_survival.png">
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
 <img align=center width=250 src="/img/citation/CVPR/CVPR_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/ICCV>
	ICCV - International Conference on Computer Vision (1987-2015) 
 <img align=center width=250 src="/img/citation/ICCV/ICCV_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/ECCV>
	ECCV - European Conference on Computer Vision (1990-2015) 
 <img align=center width=250 src="/img/citation/ECCV/ECCV_citation_survival.png">
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
 <img align=center width=250 src="/img/citation/RECOMB/RECOMB_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/ISMB>
	ISMB - Intelligent Systems in Molecular Biology (1993-2014) 
 <img align=center width=250 src="/img/citation/ISMB/ISMB_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/PSB>
	PSB - Pacific Symposium on Biocomputing (1995-2015) 
 <img align=center width=250 src="/img/citation/PSB/PSB_citation_survival.png">
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
	 <img align=center width=250 src="/img/citation/ICASSP/ICASSP_citation_survival.png">
	<a>
	</td>

	<td>
	<a href=/citation/INTERSPEECH>
		INTERSPEECH - Conference of the International Speech Communication Association (1988-2016) 
	 <img align=center width=250 src="/img/citation/INTERSPEECH/INTERSPEECH_citation_survival.png">
	<a>
	</td>
	<td>
	<a href=/citation/ISIT>
		ISIT - International Symposium on Information Theory (1973-2015) 
	 <img align=center width=250 src="/img/citation/ISIT/ISIT_citation_survival.png">
	<a>
	</td>
</tr>
</table>

#### Cryptography and systems

<a id='crypto'></a>
<table width=800>
<tr>
<td>
<a href=/citation/EUROCRYPT>
	EUROCRYPT - Theory and Application of Cryptographic Techniques (1982-2015) 
 <img align=center width=250 src="/img/citation/EUROCRYPT/EUROCRYPT_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/CRYPTO>
	CRYPTO - International Cryptology Conference (1982-2015) 
 <img align=center width=250 src="/img/citation/CRYPTO/CRYPTO_citation_survival.png">
<a>
</td>

<td>
<a href=/citation/CHES>
	CHES - Cryptographic Hardware and Embedded Systems (1999-2014) 
 <img align=center width=250 src="/img/citation/CHES/CHES_citation_survival.png">
<a>
</td>
</tr>
</table>