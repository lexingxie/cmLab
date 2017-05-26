---
title: "Escape from broadcasting: Talk show as a news source"
description: "We analyze viewership of news source on YouTube to reveal their different roles in information conveyance."
date: "2017-05-26"
draft: true
categories:
  - "research"
  - "visualization"
tags:
  - "datasci"
---

##### posted by _Siqi Wu_<br />
In the era of information explosion, we are witnessing tremendous amount of information being generated every day.
Besides this, information format involves from the text to audio, image and ultimately, video.
Correspondingly, platforms for hosting and spreading information have been created greatly, such as Spotify, Flickr, YouTube, etc.
In this post, we focus on analysing the impact of recent emerging news talk show on people's viewing behavior on YouTube.

<!--more-->

### A spring of political entertainment

"Political Entertainment" (`Holbert13`), often refers to politics appeal but in an entertaining narrative way.
From "Late night show" to the ever-popular TV series "House of Cards", people never get tired of politic subject-matters.
And thanks to user-generated content platform (YouTube, etc.) and social media (Twitter, etc.), even normal people can speak out their appeals and deliver information.
Although in this communication hierarchy, a group of professional producers stand out and act as an "opinion leader" to their mass audience.
We collect YouTube viewing data from 2 traditional news source (**_BBC news/UK_**, **_ABC news/USA_**) and 2 political entertainment news source (**_The Alex Jones Channel_**, **_The Young Turks_**) based most-subscribed politics channels on [vidstatsx](https://vidstatsx.com/youtube-top-100-most-subscribed-news-politics-channels).
Next we will feature them and reveal their very different roles in information conveyance.

### Are traditional broadcasting company dying out?

We pull out all videos that target channel has uploaded since Aug 01, 2016 then aggregate view, share and watch time by channel on a daily basis.

<img src="/img/youtube_news/news_channel_daily.png" height=400>

In terms of daily viewcount (Figure 1), both of political entertainment channels attract significant traffic compared to traditional news source, average 1.45 million views everyday.
Figure 3 confirms this, which shows the average time people spend on those channels everyday.
Furthermore, political entertainment channels are capable to initiate more interaction, resulting in more sharing behavior (Figure 2).

<img src="/img/youtube_news/news_per_video_stats.png" height=250>

Figure 4 and Figure 5 look at the lifetime statistic per video, not surprised that political entertainment channels beat tradition news source once again.
This rules out the possibility that political entertainment channels win by massive uploading.

### A close look on election day

We also notice that ABC news brought enormous traffic on US election day, thus we take a close look to see how real time major event influences online traffic.

<img src="/img/youtube_news/news_election_day.png" height=450>

The dot in above picture (Figure 6) represents a recorded video and the horizontal line refers to a brand new broadcasting format on Internet -- YouTube Live, with length from start time to finish.

On the election day, ABC news drew >20M views and >70k days watch time, primarily because it streamed presidential election and published the first 3 speeches from candidates.
And this made up of top 6 videos about election on that day.
This reveals that the exclusive news still works, first-hand authority news is an effective way to draw public attention.

Combined with Figure 1, another observation we have noticed is that ABC news achieve this instantaneous gain at the expense of others.
The Alex Jones Channel lost insignificant amount of views and shares on that day, especially on shares.
This matches with previous research that online media are for competing limited attention (`Weng13`).

We also have intuition that YouTube live seems a promising format to broadcast news, the traffic volume YouTube live videos drew are numerous while the number of them remains small.

### Conclusion

To conclude, we have found that traditional news source and political entertainment media aim at different functionality.
The former focus on delivering authentic news content, while the later are more subjective with purpose to entertain, engage, or persuade.

#### References

* Holbert, R. Lance, and Dannagal Goldthwaite Young. "Exploring Relations Between Political Entertainment Media And Traditional Political Communication Information Outlets." The international encyclopedia of media studies (2013).
* Weng, Lilian, et al. "Competition among memes in a world with limited attention." Scientific reports 2 (2012).