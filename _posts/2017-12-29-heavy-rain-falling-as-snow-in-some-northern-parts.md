---
layout: post
title: "Heavy rain, falling as snow in some northern parts"
---

That's the weather forecast. 

Its cold and miserable outside and I'm holed up in Costa with a few other brave souls eating my West Country Cheddar and Slow Roasted Tomato toastie getting distracted by various things (just now by the fact that the costa.co.uk website has various old pages still published with hosts of broken links).

I've started rewriting the previous [Ruby GRO website scraper](https://github.com/infuerno/one-name-study) using .NET. Python has [Scrapy](https://scrapy.org/), Ruby has [Mechanise](http://docs.seattlerb.org/mechanize/GUIDE_rdoc.html) and [nokogiri](http://www.nokogiri.org/), C# has ...? Well, certainly nothing so well documented. I've settled on [AngleSharp](https://anglesharp.github.io), which apart from the lack of documentation looks pretty good. Planning to write a bit of a blog article as I go through implementing these various scrapers.

And then what to do with the scraped records? Still contemplating the best way to store the original records (potentially just a simple .csv), transform to some kind of canonical model and then merge and store the final master records. Have been reading up on GEDCOM X a little and realised it is not all that obvious how to store the data, although for my purposes, I can probably just store the whole model as JSON and then reimport into memory at application start up.

* https://rootsdev.org/ - google group with some interesting leads as well as github account with some potential things to explore

