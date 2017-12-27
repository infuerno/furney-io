---
layout: post
title: "Previous journey"
---

* Wrote some scripts which scraped the GRO website for all births and deaths for a paricular surname (by default you can only search for either male or female and only for a particular birth year +/- 2 years)
* Started looking at the list of births and trying to group the sets of brothers and sisters born with the same mother's maiden name, in the same place, into families.
* The list of deaths has age at death. Next steps was to try to match these to the births, which I didn't start on. 
    - For the males, it would then be possible to match these up with the birth lists. 
    - For the females, it would be necessary to search again on maiden name around birth year for possible matches. Depending on how common the surname was, this is likely to be impossible to do in an automated way. It would be necessary to manually follow up each line via census returns.
* Downloaded all the births, deaths and marriages from FreeBMD (no restrictions on searching) and wrote a script to output them in the same format as the GRO data
* Started manually matching them up, there were quite a few inconsistencies, but in general the people were the same. This quickly got boring and I starting thinking more about an automated way to do this - presumably the transcription inconsistencies would also be corrected over time, so a scrape a year from now may yield slightly different results. Just like some MDM software, it would be good to know which source data the master data had been formed from and then revisit the formation of the master data if the source data had changed. In fact this was quickly boiling down into an MDM problem.
* Installed the [Microsoft MDS SQL Server tooling](https://docs.microsoft.com/en-us/sql/master-data-services/master-data-services-overview-mds) and started setting this up. However, this also proved to be a largely manual approach. The tooling would merge an extra source and for any discrepancies you can choose which details to keep from each source. But following that - you have lost the link between the master data and the source records. To be any good, I would potentially need a more enterprise MDM solution.
* Concurrently I looked into possible schemas to hold the data and came across [GEDCOM X](http://www.gedcomx.org). From the website, it looks like the project has stalled somewhat, but there is a wealth of good information there and as good a basis for starting as any. 
    - [http://www.gedcomx.org/schemas.html]() - list of different part of the schema
    - [http://www.gedcomx.org/Recipe-Book.html](http://www.gedcomx.org/Recipe-Book.html) - really useful examples of how to represent real life information using the schema
    - [C# Libraries](https://github.com/FamilySearch/gedcomx-csharp) - not sure how these would be useful yet
    - [Family Search Developers site](https://www.familysearch.org/developers/) - with search API
    - [https://hubdesignsmagazine.com](https://hubdesignsmagazine.com) - might have some useful information on MDM tools

