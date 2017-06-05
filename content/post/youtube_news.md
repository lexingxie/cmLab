---
title: "Escape from broadcasting: Talk shows as news sources"
description: "We analyze news sources on YouTube to reveal their roles in broadcasting information."
date: "2017-05-26"
draft: false
categories:
  - "research"
  - "visualization"
  - "social media"
  - "popularity"
tags:
  - "datasci"
---

##### posted by _Siqi Wu_, edited by _Marian-Andrei Rizoiu_ and _Lexing Xie_<br />

<img src="/img/youtube_news/youtube_news_banner.png" width="500"> <br>

<!--The era of information explosion brought a --> 
We are in an era when information consumption and production are democratized.
Regular users not only consume information, but they digest, mutate and produce new information which gets passed on to other users.
Prompted by a press inquiry from the Polish online news [www.press.pl](http://www.press.pl), we analyze the impact of these emergent sources of information versus traditional media, in the context of politics.
More precisely, we study how YouTube videos posted by two **traditional news sources** (_BBC news/UK_, _ABC news/USA_)
and two **emergent online news sources** (_The Alex Jones Channel_, _The Young Turks_) are viewed around the time of the US political elections of 2016.

<!--more-->

### A surge of political entertainment

The term "Political Entertainment" (`Holbert13`) refers to discussions of politics, but in an entertaining narrative way.
People never seem to get tired of political subjects, such as "The Late Night Show" to the ever-popular TV series "House of Cards".
<!-- And thanks to user-generated content platform (YouTube, etc.) and social media (Twitter, etc.), regular users can speak out their appeal and deliver information to others.
LX: this was unclear 
--> 
In this age when everyone can broadcast their discussions easily, a group of individuals and organizations stand out in terms of the amount of production. Some of these are traditional news sources, while others are political entertainers.
We collect YouTube viewing data from two news organizations (_BBC news/UK_, _ABC news/USA_) and two political video-bloggers / entertainers (_The Alex Jones Channel_, _The Young Turks_) based on the list of the most-subscribed political channels on [vidstatsx](https://vidstatsx.com/youtube-top-100-most-subscribed-news-politics-channels).
Next, we analyze and reveal their very different roles in conveying political information.

<!-- 
### Are traditional broadcasting company dying out?
LX: i'd opt for a less provocative heading! 
--> 

### The race of daily attention and interactions

We retrieve all videos posted by each channel between Aug 01, 2016 to Nov 28 2016. We further aggregate their view, share and watch-time series to construct channel-wide statistics on a daily basis. The key observations include:

* US presidential election took place on Nov 8, which shows up as an outlier. ABC News USA received significantly more views and interactions than any other channel. This shows that general public still prefers to follow traditional news organizations in significant official events. 
* In terms of daily viewcount (Figure 1), both political entertainment channels attract significantly higher traffic than traditional news sources, averaging 1.45 million views per day.
* Figure 3 confirms this conclusion, and it shows the average time that people spend on each of these channels every day.
* Political entertainment channels appear to initiate more interaction within their viewership, resulting in a more dynamic sharing behavior (Figure 2).


<img src="/img/youtube_news/news_channel_daily.png" height=400>

Figure 4 and Figure 5 show statistics over the lifetime of each video, aggregated for each channel as a boxplot. This scheme ensures that observations are not skewed by the volume of videos posted by each channel.
We observe that videos posted by political entertainment channels consistently receive more views and more comments that those posted by traditional news sources.

<img src="/img/youtube_news/news_per_video_stats.png" height=275>



### A closer look at election day

<!-- 
We also notice that the channel _ABC news/USA_ has received very high traffic on the 2016 US election day, thus we take a closer look to see how real time major events influence online traffic.
--> 
Audience behavior on US election day is significantly different. We present additional details of online traffic broken down by videos and real-time streaming. 

<img src="/img/youtube_news/news_election_day.png" height=450>

The dot in above picture (Figure 6) represents a recorded video (located at its time of upload) and the horizontal line refers to a brand new broadcasting format on Internet -- YouTube Live, with length from start time to finish.

On the election day, _ABC news/USA_ drew more than 20 million views and more than 70,000 total days of watch time, primarily because it streamed presidential election and it published the first 3 speeches from the candidates.
Top 5 election blockbusters -- videos that receiving the most views on their first day -- are shown with their title.
This graph shows that the public still prefers authoritative news outlets during planned official events. 

Corroborated with Figure 1, we also notice that _ABC news/USA_ achieve this instantaneous gain of public attention at the expense of others.
_The Alex Jones Channel_ lost significant amount of attentions on that day, especially in terms of shares.
This matches with previous research that online media items compete for the limited amount of available human attention (`Weng13`).
Another intuition is that YouTube live seems to be a promising format for broadcasting news, which has already been widely adopted and has shown the capability to draw traffic.

### Conclusion

In short, the history of YouTube attention data reveals much about. We have found that traditional news source and political entertainment media serve different information (or infotainment) needs.
The former focus on delivering authentic news content, while the later are more subjective with the purpose to entertain, engage, or persuade.

Follow-up topics that could be interesting for media analysts and the curious public include:

* Engagement metrics for grass-root political infotainment versus the variety of late shows by different news organizations. 
* Topical preferences that YouTube audience may have across different news organizations (e.g. world versus science versus US news). 

<!--
In other words, when I am looking for first-hand news, I want the source to be canonical.
But when I am digging into some concrete facts, show me something fun!
LX: I don't like this first-person narrative. what are you trying to tell the audience?
-->

#### References

* Holbert, R. Lance, and Dannagal Goldthwaite Young. "Exploring Relations Between Political Entertainment Media And Traditional Political Communication Information Outlets." The international encyclopedia of media studies (2013).
* Weng, Lilian, et al. "Competition among memes in a world with limited attention." Scientific reports 2 (2012).
