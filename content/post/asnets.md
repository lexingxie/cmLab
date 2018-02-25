---
title: "Quick Planning with Action Schema Networks"
description: "How tricks from computer vision and deep learning can be used to accelerate planning algorithms"
date: "2018-02-26"
draft: false
categories:
  - "reseach"
  - "paper"
tags:
  - "deeplearning"
  - "planning"
---
  
<!-- per-article styles -->
<style>
  .asn-left {
    float: left;
  }

  .asn-right {
    float: right;
  }

  .asn-fig {
    margin: 15px;
  }

  .asn-fig.asn-results {
    text-align: center;
    width: 100%;
    clear: both;
  }

  .asn-fig.asn-results img {
    display: inline-block;
    max-width: 350px;
  }
</style>

##### posted by _Sam Toyer_ and _Sylvie Thiébaux_ <br />

<figure class="asn-fig asn-left" style="max-width: 200px;">
    <img src="/img/asnets/mit-blockbot.jpg">
    <figcaption>
      Fig.1: A robot stacking blocks.
    </figcaption>
</figure>

<!-- I'm using 's' breaks to delineate sentences. -->
Planning algorithms try to find series of actions which enable an intelligent
agent to achieve some goal.
<!-- s -->
<!-- this sentence is very complicated, omitting it seem to make the overview short+sweet?
For instance, a planner might recommend a sequence of stops to make and packages
to load or unload in order for an automated package delivery robot to complete
its delivery route.
-->
<!-- s -->
Such algorithms are used everywhere from manufacturing to robotics to power
distribution.
<!-- s -->
In our [recent paper at AAAI '18](https://arxiv.org/abs/1709.04271), we showed how
to use deep learning techniques from vision and natural language processing to
teach a planning system to solve entire classes of sophisticated problems by
training on a few simple examples.

<!-- this annotation truncates the post so that only part of it is shown -->
<!-- on homepage: -->
<!--more-->

<div style="clear: both; height: 0; margin: 0; padding: 0;"></div>
### Deep learning and planning

Deep learning is a popular technique for tasks like [generating stylised
captions for images](/post/senticap/), or learning how to play video or board
games from images alone.
<!-- s -->
At a more abstract level, deep learning uses artificial neural networks with
many layers (deep neural nets) to learn patterns in data.
<!-- s -->
For tasks where neural networks excel, there’s often a specific kind of network
architecture which enables high performance.
<!-- s -->
For instance, recent image captioning work uses 
convolutional neural networks for visual processing and recurrent neural
networks for text generation.
<!-- s -->
Despite its success in other areas, deep learning still has not seen wide
application to automated planning.
<!-- s -->
We posit that this is due to a lack of network architectures for efficient,
generalisable learning in a planning context.

There are many kinds of automated planning, but we focus on discrete
probabilistic planning.
<!-- s -->
A probabilistic planner views each state of its environment as a truth
assignment to a set of propositions (or binary variables).
<!-- s -->
Figure 1 shows a simple robot which uses a gripper to stack blocks on top of one
another. This robot might use several propositions:
<!-- s -->
<ul>
  <li>
    One proposition, <code>(gripper-empty)</code> to indicate whether the
    gripper is free to grasp another block (<code>(gripper-empty) = True</code>)
    or not (<code>(gripper-empty) = False</code>).
  </li>
  <li> 
    A set of propositions of the form <code>(on ?block1 ?block2)</code> to
    indicate whether a pair of blocks, <code>?block1</code> and
    <code>?block2</code>, are stacked on one another (<code>(on ?block1 ?block2)
    = True</code>) or not (<code>(on ?block1 ?block2) = False</code>).
  </li>
  <li>
    A set of propositions of the form <code>(holding ?block)</code> to indicate
    whether a specific block is sitting in the gripper (<code>(holding ?block) =
    True</code>), or not (<code>(holding ?block) = False</code>).
  </li>
  <li>
    &hellip;and so on.
  </li>
</ul>
<!-- s -->
The planner also has access to actions which can move the environment from state-to-state.
<!-- s -->
In our running _blocks world_ example, it might have actions of the form "pick
block A up from block B and hold it in the gripper".
<!-- s -->
These actions may have stochastic outcomes (hence the <em>probabilistic</em> in
probabilistic planning)&mdash;perhaps our robot might accidentally drop blocks
from time to time when it tries to grasp them.
<!-- s -->
The planner's goal is to suggest an appropriate action in each state which the
agent visits such that following the planer's suggested actions will, with high
probability and low cost, allow the agent to obtain some goal (e.g. to stack all
blocks in a specific configuration).
<!-- s -->
This general approach can be used to solve many problems ranging from classic
puzzles (like Rubik's Cube or the aforementioned Blocks World) to real-world
problems in robotics, transport, cyber-security, etc.

Probabilistic planning is hard partly because of the huge number of states which
an agent might encounter.
<!-- s -->
A planning problem with $n$ variables could have up to $2^n$ states!
<!-- s -->
Current planners use domain-independent heuristics to guide their search towards
goal states, thus allowing them to ignore all but a handful of environment
states.
<!-- s -->
However, such planners are generally not able to learn from experience: if the
heuristic over-estimates or under-estimates the "goodness" of a state, then it
will continue to do so in future when it visits similar states.
<!-- s -->
The focus of our work is on using deep learning to teach planners how to choose
appropriate actions in a planning problem, then generalise that knowledge to
similar problems.
<!-- s -->
This greatly accelerates planning by allowing the planner to avoid making the
same mistakes over and over again.

### A neural network for planning

<figure class="asn-fig asn-right" style="max-width: 400px;">
    <img src="/img/asnets/lead.png">
    <figcaption>
      Fig.2: In our paper, we draw an analogy between ASNets and convolutional
      neural networks.
      <!-- s -->
      Each filter in each layer of a convolutional neural network performs the
      same learnt operation to each image location in the
      feature map supplied as input.
      <!-- s -->
      For instance, there might be a single filter in the first layer which is
      responsible for detecting vertical edges everywhere in the image.
      <!-- s -->
      This allows the network to build up a more expressive representation with
      each successive layer&mdash;first edges, then corners, then textures, then
      object parts, and so on.
      <!-- s -->
      ASNets are similar, but rather than applying local operations at each
      location in an image, they apply relationally local operations
      corresponding to each action and proposition.
      <!-- s -->
      In both cases, the networks' connectivity structure and use of
      weight-sharing allow them to generalise across different input sizes.
    </figcaption>
</figure>

Our AAAI paper introduces a new form of deep neural networks, called ASNets,
that are specifically designed to solve planning problems.
<!-- s -->
This new neural net architecture is designed to learn to solve any problem of a
given planning domain, from the specification the "rules" of this domain, and
examples of plans for small problems in this domain.
<!-- s -->
For instance, we can give ASNets a description of the blocks world puzzle,
give it some example of plans for small blocks world problems, e.g. those with 4-7
blocks.
<!-- s -->
It will then learn to solve any blocks world problem, even with very large
numbers of blocks.

Fig.2 (at right) gives a very high-level overview of the structure of our neural
network, the ASNet.
<!-- s -->
Each planning problem corresponds to a (possibly distinct) ASNet which is
automatically constructed using the structure of the problem.
<!-- s -->
The ASNet consists of alternating layers of action layers and proposition
layers.
<!-- s: LX: I find long paragraphs difficult to follow in a blog -->

* Each action layer consists of an action module for each action in the
corresponding problem; in intermediate layers, these action modules are like
single-layer neural nets that take feature vectors from proposition modules as
input and produce new feature vectors as output.
<!-- s -->
* Each proposition layer consists of a proposition module corresponding
to each proposition in the original problem; again, each proposition module
takes action module feature vectors as input and produces a single feature
vector as output.
<!-- s -->
* The first layer is always an action layer in which action modules receive
proposition truth values describing the current state, while the last layer is
always an action layer in which action modules produce quantities representing
the network's confidence that each action is helpful.
<!-- s LX: Sam to check the following -->
* Within the same layer, weights are shared between action modules for similar actions and between
proposition modules for similar propositions, which reduces the number of
parameters that need to be learned.
<!-- s -->

We detail this full construction in [our
paper](https://arxiv.org/pdf/1709.04271.pdf).

Importantly, the combination of weight sharing and specially-structured
connectivity between modules ensures that two action schema networks
corresponding to problems instantiated from the same domain will be able to
share the same weights.
<!-- s -->
This holds even if the problems have a different number of actions and
propositions (and thus a different action and proposition modules).
<!-- s -->
Hence, we can learn a set of weights by training the network on small problems
from a domain, then transfer those learnt weights to solve large problems
without having to re-train at all.
<!-- s -->
In other words, we can obtain a <em>generalised policy</em>: a mapping from
states to appropriate actions which can be applied to any problem in a domain.

While there has been a great deal of past work on solving decision-making
problems with neural
networks&mdash;[AlphaGo](https://deepmind.com/research/alphago/) being one
prominent example&mdash;most existing approaches are not able to generalise in
the same way as ASNets.
<!-- s -->
For instance, AlphaGo would not be able to adapt from a 13x13 Go board (as used
to train humans) to a (standard) 19x19 one without retraining.
<!-- s -->
The tasks that ASNets can currently solve are very different to Go, but the way
that ASNets generalise planning knowledge with neural networks is, to the best
of our knowledge, unique.
<!-- s -->
Further, we have found that the special structure of our network enables it to
learn with very little data, in contrast to the famously data-hungry
neural-net-based systems used in vision, reinforcement learning, and related
areas.

<div style="clear: both; height: 0; margin: 0; padding: 0;"></div>
### Quick planning and more

We can use ASNets for rapid planning on large planning problems.
<!-- s -->
We train the ASNet to choose good actions on a collection of small,
related problems from the same domain as a single large one.
<!-- s -->
The training problems are small enough that we can quickly run a traditional
heuristic search planner to figure out which actions are "good", then use a
normal classification loss to encourage the ASNet to choose similar actions to
the heuristic search planner.
<!-- s -->
After the ASNet is trained, we can simply evaluate it on the large problem.
<!-- s -->
Fig.3 shows the outcome of this approach on three planning domains which are
challenging for traditional planners.
<!-- s -->
After spending somewhere between a few minutes and a couple of hours training,
our system is able to rapidly solve all tested problems in quick succession.
<!-- s -->
In contrast, the non-learning baseline planners struggle to solve the larger
problems within our 2.5 hour cutoff.

<figure class="asn-fig asn-results">
  <img src="/img/asnets/res-cn.png">
  <img src="/img/asnets/res-ttw.png">
  <img src="/img/asnets/res-pbw.png">
  <figcaption>
    Fig.3:
    <!-- s -->
    A selection of our results illustrating how an ASNet can reduce time taken
    to plan (y-axis) in different domains as problem size (x-axis) increases.
    <!-- s -->
    For our method&mdash;which is shown in blue&mdash;we report the time taken
    to train on a set of between 3 and 25 small problems, <em>plus</em> the time
    taken to evaluate on a problem of a given size.
    <!-- s -->
    The baselines do not need to learn, so the remaining lines in the plot
    show only evaluation time for the baselines.
  </figcaption>
</figure>

<!-- LX: the two uses of "generalised" and "general" seem vague to me -->
Although we have only closely examined the use of ASNets for generalised
policies, we believe that future generations of ASNets would connect deep learning methods
to planning problems in more ways.
<!-- provide a more general bridge between the
worlds of planning and deep learning. -->
<!-- s -->
For instance, it may be possible to use ASNets to learn generalised heuristics
and ranking functions.
<!-- s -->
We could also consider combining ASNets with traditional search; for example, by
using an ASNet as the rollout policy in
[UCT](http://mcts.ai/pubs/mcts-survey-master.pdf) (or _Upper Confidence Bound_ in [Monte Carlo Tree Search](https://en.wikipedia.org/wiki/Monte_Carlo_tree_search)).
<!-- s -->
Finally, we note that ASNets are not closely tied to the particular planning
formalism that we have considered; indeed, it could be possible to apply them to
planning problems that have numeric state variables or partially observable states
with little modification.
<!-- s -->
We leave all these promising avenues for future work.

To find out more about ASNets, check out our [paper](https://arxiv.org/pdf/1709.04271.pdf),
[code](https://github.com/qxcv/asnets/) or [AAAI oral
slides](https://github.com/qxcv/asnets/blob/master/slides.pdf), or the [ANU News article "New intelligent system learns from simple problems to solve complex ones"](http:/www.anu.edu.au/news/all-news/new-intelligent-system-learns-from-simple-problems-to-solve-complex-ones).
### Resources

[Sam Toyer](http://qxcv.net/),
[Felipe Trevizan](http://felipe.trevizan.org/),
[Sylvie Thiebaux](http://users.cecs.anu.edu.au/~thiebaux/)
and [Lexing Xie](http://users.cecs.anu.edu.au/~xlx/).
**Action Schema Networks: Generalised Policies with Deep Learning**,
in *Proceedings AAAI Conference on Artificial Intelligence* (AAAI '18), 
New Orleans, USA, 2018.

<table>
  <tr>
    <th>Download:</th>
    <td style="padding-left: 3em;">
      <a href="https://arxiv.org/pdf/1709.04271.pdf">Paper PDF</a>
      &nbsp;|&nbsp;
      <a href="https://github.com/qxcv/asnets/blob/master/slides.pdf">Talk slides</a>
    </td>
  </tr>
  <tr>
    <th>Code & models:</th>
    <td style="padding-left: 3em;">
      <a href="https://github.com/qxcv/asnets/">Github repository</a>
    </td>
  <tr>
  <tr>
    <th>Bibtex:</th>
    <td></td>
  </tr>
</table>

```
@inproceedings{toyer2018action,
  title={Action Schema Networks: Generalised Policies with Deep Learning},
  author={Toyer, Sam and Trevizan, Felipe and Thi{\'e}baux, Sylvie and Xie, Lexing},
  booktitle={AAAI Conference on Artificial Intelligence (AAAI)},
  year={2018}
}
```
