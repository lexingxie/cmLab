---
title: "Escape from broadcasting: Talk show as a news source"
description: "We analyze viewership of news source on YouTube to reveal their different roles in information conveyance."
date: "2017-05-26"
draft: false
categories:
  - "research"
  - "visualization"
tags:
  - "datasci"
---

##### posted by _Siqi Wu_<br />

<img src="/img/youtube_news/youtube_news_banner.png" width="500"> <br>

The era of information explosion brought a democratization in information consumption and production.
Regular users not only consume information, but they digest, mutate and produce new information which gets passed on to other users.
In this post, we focus on analyzing the impact of these emergent sources of information versus traditional media, in the context of politics.
More precisely, we study how YouTube videos posted by two **traditional news sources** (_BBC news/UK_, _ABC news/USA_)
and two **emergent online news sources** (_The Alex Jones Channel_, _The Young Turks_) are viewed around the time of the US political elections of 2016.

<!--In the era of information explosion, we are witnessing tremendous amounts of information being generated every day.
The format in which this information is presented ranges from text to audio, image and ultimately, video.
Correspondingly, platforms for hosting and spreading information have been created greatly, such as Spotify, Flickr, YouTube, etc.
where people get their info, and if home-generated content gains weight compared to traditional media in people choice making process.
In this post, we focus on analyzing the impact of recent emerging news talk show on people's viewing behavior on YouTube.-->

<!--more-->

### A spring of political entertainment

The term "Political Entertainment" (`Holbert13`) refers to the appeal of politics, but in an entertaining narrative way.
From "Late night show" to the ever-popular TV series "House of Cards", people never get tired of political subjects.
And thanks to user-generated content platform (YouTube, etc.) and social media (Twitter, etc.), regular users can speak out their appeal and deliver information to others.
Within this plethora of information producers, a group of professionals stand out and act as an "opinion leaders" to the mass audience, some of which are traditional news sources, while others are political entertainers.
We collect YouTube viewing data from two of the former (_BBC news/UK_, _ABC news/USA_) and two of the latter (_The Alex Jones Channel_, _The Young Turks_) based on the list of the most-subscribed political channels on [vidstatsx](https://vidstatsx.com/youtube-top-100-most-subscribed-news-politics-channels).
Next, we analyze them and we reveal their very different roles in conveying political information.

### Are traditional broadcasting company dying out?

We retrieve all videos posted by each channel since Aug 01, 2016 and we aggregate their view, share and watch-time series to construct channel-wide statistics on a daily basis.

<img src="/img/youtube_news/news_channel_daily.png" height=400>

In terms of daily viewcount (Figure 1), both political entertainment channels attract significantly higher traffic than traditional news sources, averaging 1.45 million views per day.
Figure 3 confirms this conclusion, and it shows the average time that people spend on each of these channels every day.
Furthermore, political entertainment channels appear to initiate more interaction within their viewership, resulting in a more dynamic sharing behavior (Figure 2).

<img src="/img/youtube_news/news_per_video_stats.png" height=275>

Figure 4 and Figure 5 show the _per video_ lifetime statistic, aggregated for each channel as a boxplot, therefore making sure that the conclusions are not skewed by the volume of videos posted by each channel.
We observe that videos posted by political entertainment channels consistently receive more views and more comments that those posted by traditional news sources.
<!--This rules out the possibility that political entertainment channels win by massive uploading.-->

### A close look on election day

We also notice that the channel _ABC news/USA_ has received very high traffic on the 2016 US election day, thus we take a closer look to see how real time major events influence online traffic.

<img src="/img/youtube_news/news_election_day.png" height=450>

The dot in above picture (Figure 6) represents a recorded video and the horizontal line refers to a brand new broadcasting format on Internet -- YouTube Live, with length from start time to finish.

On the election day, _ABC news/USA_ drew more than 20 million views and more than 70 thousand days watch time, primarily because it streamed presidential election and it published the first 3 speeches from the candidates.
Top 5 election blockbusters are highlighted in above figure with video title.
This reveals that when it comes to being informed about hard facts, the public still prefers first-hand authority news outlets as its source of information.

Corroborated with Figure 1, we also notice that _ABC news/USA_ achieve this instantaneous gain of public attention at the expense of others.
_The Alex Jones Channel_ lost significant amount of attentions on that day, especially in terms of shares.
This matches with previous research that online media items compete for the limited amount of available human attention (`Weng13`).
Another intuition is that YouTube live seems to be a promising format for broadcasting news, which has already been widely adopted and has shown the capability to draw traffic.

### Conclusion

To conclude, we have found that traditional news source and political entertainment media serve different functions.
The former focus on delivering authentic news content, while the later are more subjective with the purpose to entertain, engage, or persuade.
In other words, when I am looking for first-hand news, I want the source to be canonical.
But when I am digging into some concrete facts, show me something fun!

#### References

* Holbert, R. Lance, and Dannagal Goldthwaite Young. "Exploring Relations Between Political Entertainment Media And Traditional Political Communication Information Outlets." The international encyclopedia of media studies (2013).
* Weng, Lilian, et al. "Competition among memes in a world with limited attention." Scientific reports 2 (2012).
