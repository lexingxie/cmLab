---
title: "Inverting a Random Walk - Solution Strategies"
description: "In this second post on the topic, we discuss optimization strategies for graph inversion from random walks."
date: "2017-01-06"
draft: true
categories:
  - "research"
  - "stochastic process"
tags:
  - "graph"
  - "randomwalk"
  - "optimization"
---

##### posted by _Lexing Xie_

We review solutions strategies for Inverting a Random Walk from `(Kumar15)`, `(Mackay15)` and `(Xie13)`, for problem settings see the [last post](/post/invert_random_walk_problem).

<!--more-->

<p> <br /> </p>

Here is a list of notations for self-sufficiency, most of them are defined in [the last post](/post/invert_random_walk_problem). 

* Graph $G \in {\cal R}^{n\times n}$ with nonnegative weights $G \geq 0$.
  * $g\_{ij}$, $i,j \in \{1,\ldots,n\}$ : edge weight from node $i$ to node $j$.
  * $g\_i$ the $i^{\text{th}}$ row vector, and $g^j$ the $j^{\text{th}}$ column vector. 
* Transition matrix $W$ is a row-normalized version of $G$. That is, $w_i = {\cal Z}(g_i)$, $W = {\cal Z}(G).$

* Pagerank, or steady state vector of $W$ - $p \in {\cal R}^n$ and satisfies: $pW = p$ (Page99, Langville04).
  * $p$ is non-negative and stochastic, i.e,  $p\geq 0$ and ${\cal Z}(p)=p$. 

* Personalized pagerank (PPR, Jeh03) or Random Walk with Restart (RWR, Tong06).
	* Transition matrix when starting from node $i$ $\hat W^i = \alpha W + (1-\alpha) e \nu^i $. Starting state $\nu^i = [0,\ldots,i,0,\ldots]$, a row vector of all $0$s except one $1$ in the $i$-th position. $e$ is a column vector of all 1s. 
	* PPR/RWR vector from node $i$ is $p^i \hat W^i = p^i$
	* PPR/RWR matrix row-stacks the different PPR/RWR vectors $P = [p^1; \ldots; p^n].$
	* Short-hand notation: $PPR(W,\alpha) \rightarrow P$


There are two main solutions strategies used by the three work mentioned -- gradient descent and bipartite inversion. 

#### Gradient descent for eigen vectors 

This applies to the **Direct Inversion** `(Mackay15)`  and * **Inverse Personalized Pagerank** `(Xie13)` formulations. 

* **Direct Inversion** `(Mackay15)` 
	
	Given steady state vector $p$, find transition matrix $W$ that satisfies these conditions:

	* Pagerank $p (W-I) = 0$
	* Stochastic ${\cal Z}(W) = W$
	* Non-negative $W \geq 0$

	The original post formulates an optimization objective by linearly and uniformly combining these constraints into a loss function. 


* **Inverse Personalized Pagerank** `(Xie13)`

	Given PPR/RWR matrix $P$, find transition matrix $W$ and restart parameter $\alpha$, such that:

	* $PPR (W, \alpha) \rightarrow P$

	_Discussions_: 
	There are not one, but $n$ "steady" state vectors to consider now. This problem is no longer under-determined. This is useful when there're pair-wise statistics. It is not too difficult to show (although I did not have space to fit it into the paper at the time) that the solution $W$ is unique, details in the next post. 

#### Bipartite inversion for choice scaling 

* **Choice Scaling** `(Kumar15)` 
	
	The setting here is given $p$, estimate the graph. 
	
	Denote an underlying positive _score_ vector $s \in {\cal R}^n$, $s >0$, with a positive score assigned to each node in the graph.  $diag (s)$ denotes a diagonal matrix with the correponding element of $s$ in its diagonal, 0 elsewhere. 
	The problem becomes, given $p$, find $s$ such that $p$ is the principle eigenvector of the normalized version of $diag(s)G$. That is to say, weight every column of $G$ by the corresponding node score, and then row-normalize. 

	* The pagerank condition becomes $p \left( {\cal Z}(diag(s)\; G) - I \right) = 0$.  Assuming $G$ and $p$ are given, we need to find $s$. 

	They show that the solutions are unique and computable in polynomial time. 



### References

* `(Kumar15)` Kumar, R., Tomkins, A., Vassilvitskii, S., & Vee, E. (2015). Inverting a Steady-State. Proceedings of the Eighth ACM International Conference on Web Search and Data Mining - WSDM ’15, 359–368. http://doi.org/10.1145/2684822.2685310
* `(Mackay15)` Mackay, J. F. (2015). Inverting the Steady State of a Markov Chain. Blog post, May 14, 2015, https://jfmackay.wordpress.com/2015/05/14/inverting-the-steady-state-of-a-markov-chain
* `(Xie13)` Xie, L. and He, X. (2013). Picture Tags and World Knowledge: learning tag relations from visual semantic sources. Proceedings of the 21st ACM International Conference on Multimedia - MM ’13, 967-976. http://doi.org/10.1145/2502081.2502113

#### Background material

* `(Page99)` L. Page, S. Brin, R. Motwani, and T. Winograd. The PageRank citation ranking: Bringing order to the Web. Technical report, InfoLab, Stanford University, 1999
* `(Jeh03)` Jeh, G. and Widom, J., 2003, May. Scaling personalized web search. In Proceedings of the 12th international conference on World Wide Web (pp. 271-279). ACM.
* `(Langville04)` A. N. Langville and C. D. Meyer. Deeper inside PageRank. Internet Mathematics, 1(3):335--380, 2004.
* `(Langville09)` A. Langville and C. Meyer. Google’s PageRank and beyond: The science of search engine rankings. Princeton University Press, 2009.
* `(Tong06)` H. Tong, C. Faloutsos, and J. Pan. Fast random walk with restart and its applications. In ICDM. IEEE, 2006.
* `(Ben-Akiva85)` M. Ben-Akiva and S. Lerman. Discrete Choice Analysis: Theory and Application to Travel Demand. MIT Press, 1985.
* `(Luce77)` R. D. Luce. The choice axiom after twenty years. Journal of Mathematical Psychology, 15(3):215--233, 1977.