---
title: "Inverting a Random Walk - Problem Settings"
description: "We discuss three approaches for graph inversion from steady state distribution of random walks. This first post compares the problem settings."
date: "2017-01-03"
draft: false
categories:
  - "research"
  - "stochastic process"
tags:
  - "graph"
  - "randomwalk"
  - "optimization"
---

##### posted by _Lexing Xie_

Markov chains and random walk on graphs are long-standing subjects in applied math and related disciplines. Given a markov chain / transition matrix / graph, properties of the random walk such as steady state distribution, mixing time and so on . It seems that only in recent years the inverse problem has started gaining interest -- that is, given _some measurements_ after random walk on a graph, infer _some version_ of the graph. This blog post compares three related but different problem settings in recent literature from `(Kumar15)`, `(Mackay15)` and `(Xie13)`. 

<!--more-->

<p> <br /> </p>

We first define notations and introduce some basic terminology. 

#### Random walk on a graph

Let us use a square matrix $G \in {\cal R}^{n\times n}$ to represent a graph with $n$ nodes. Its element $g\_{ij}$, $i,j \in \{1,\ldots,n\}$ denote the edge weight from node $i$ to node $j$. For many graphs the weights are non-negative, that is, $g_{i,j} \geq 0$, $\forall i, j$, or $G \geq 0$. Furthermore, $g\_i$ denotes the $i^{\text{th}}$ row vector of $G$, and $g^j$ denotes the $j^{\text{th}}$ column vector.

The random walk follows a transition matrix $W$ which is the row-normalized version of $G$, i.e. $w\_{ij} = g\_{ij} \left( \sum_{j=1}^n g\_ij \right)^{-1}.$

For convenience, we define a normalization operator $\cal Z$ that applies to both row vectors and matrixes (applied row-wise), that is, 
$$w_i = {\cal Z}(g_i),$$
$$W = {\cal Z}(G).$$

#### Pagerank 

The primary eigenvector (with eigen value 1.0) of $W$ is known as the _Pagerank_ vector (Page99, Langville04). It is denoted as a row vector $p \in {\cal R}^n$ and satisfies: $pW = p$.

This is also known as the _steady state_ vector of random walk, or _stationary distribution_ of a Markov chain according to $W$, since the state distribution remains the same if one makes a transition according to $W$. 

Note that $p$ is non-negative and stochastic, i.e,  $p\geq 0$ and ${\cal Z}(p)=p$. 

#### Personalized pagerank 

Extending the notion of the steady state, we now define vectors for Personalized PageRank (PPR, Jeh03) or Random Walk with Restart (RWR, Tong06). 

Assuming that a random walk starts from node $i$, or having a initial distribution $\nu^i = [0,\ldots,i,0,\ldots]$ -- $\nu^i$ is a row vector of all $0$s except one $1$ in the $i$-th position. The PPR/RWR transtion matrix $\hat W^i$ is derived from the originally Markov chain, by following $W$ with probability $\alpha$, and jumping back to the starting node $i$ with probability $1-\alpha$. 

$$\hat W^i = \alpha W + (1-\alpha) e \nu^i $$ 
Here $e$ is a column vector of all 1s. It is not difficult to see that $W^i$ is also a stochastic matrix whose rows sum to 1. The pagerank vector $p^i$ of $\hat W^i$ is called the PPR, or RWR vector $p^i \hat W^i = p^i$.

If we vary the starting state from 1 to $n$, and stack all PPR row vectors, we get a PPR matrix $P = [p^1; \ldots; p^n].$

Summarizing the above, we can write the PPR process as $PPR(W,\alpha) \rightarrow P$

### Versions of inverse random walk 

We now compare the three different formulations for inverting the random walk. 

* **Direct Inversion** `(Mackay15)` 

	Given steady state vector $p$, find transition matrix $W$ that satisfies these conditions:

	* Pagerank $p (W-I) = 0$
	* Stochastic ${\cal Z}(W) = W$
	* Non-negative $W \geq 0$

	Mackay's post then linearly and uniformly combine these three objectives as one (L2 ?) loss minimization problem and claims that it is solved using gradient descent. 

	_Discussions_:
	This formulation is direct and intuitive. What is not clear is properties of the intended solutions, and how in practice one should trade-off among different losses. 
	There are $n \times n$ unknowns and $n$ equations in the pagerank objective, this problem is generally under-constrained. It is yet unclear whether gradient descent will find one solution, a class of solutions, or something else. We will examine this more in the next post. 

	The underlyling assumptions include the graph being irreducible, strongly connected, $p$ being strictly positive, and additionally $W$ respects the underlying graph connectivity. 

* **Choice Scaling** `(Kumar15)` 
	
	The setting here is still given $p$, estimate the graph. 
	Kumar, Tomkins, Vassilvitskikk and Vee proposed a new formulation, that reduced the number of unknowns from $n \times n$ to $n$. 

	Denote an underlying positive _score_ vector $s \in {\cal R}^n$, $s >0$, with a positive score assigned to each node in the graph.  $diag (s)$ denotes a diagonal matrix with the correponding element of $s$ in its diagonal, 0 elsewhere. 
	The problem becomes, given $p$, find $s$ such that $p$ is the principle eigenvector of the normalized version of $diag(s)G$. That is to say, weight every column of $G$ by the corresponding node score, and then row-normalize. 

	* The pagerank condition becomes $p \left( {\cal Z}(diag(s)\; G) - I \right) = 0$.  Assuming $G$ and $p$ are given, we need to find $s$. 

	_Discussions_: Kumar et al did not explicitly spell out their underlying rationale for this re-fomulation. I hypothesize two reasons (1) Overcome the fact that the Direct Scaling approach is under-determined. In a series of elegant expositions, they show that the solutions are unique and computable in polynomial time. (2) Close connection to choice theory (Luce77,Ben-Akiva85) via the likelihood function, and further making this problem amenable to a range of applications. 
	More about these in the next post. 

* **Inverse Personalized Pagerank** `(Xie13)`

	Given PPR/RWR matrix $P$, find transition matrix $W$ and restart parameter $\alpha$, such that:

	* $PPR (W, \alpha) \rightarrow P$

	_Discussions_: 
	There are not one, but $n$ "steady" state vectors to consider now. This problem is no longer under-determined. This is useful when there're pair-wise statistics. It is not too difficult to show (although I did not have space to fit it into the paper at the time) that the solution $W$ is unique, details in the next post. 

* **Other sensible formulations?** 

	All three formulations above rely on version of marginal distributions, i.e. frequency of nodes in steady-state distributions. It is concievable that other information from random walks could be used as input. One example can be: 

	* Random-walk network tomography. If we observe the (start, end) node pairs of random walks, but do not observe the intermediate nodes in the walk. Can we infer the underlying graph? This formulation contains more info than the Inverse Personalized Pagerank approach. 


<!--### Applications (in a separate post?) -->

### Questions for readers

Dear readers, I'd like to invite you to share your thoughts about these problems.

* Have you seen this problems solved somewhere? It seems to me that early (1980s and 1990s) literature in computer and communication networks are treasure troves of many-times-reinvented nice things ... Especially the one with network tomography. 

* Beside the ones mentioned above, are there other plausible settings you can think of?  


**`Next post`**

This is intended to be the first in a duo (or trio) of bite-sized blog posts. The next post will discuss the solution strategy and properties of the problems above. We shall also talk about applications of inverse graph inference problems in different domains. Let me know what you think!

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