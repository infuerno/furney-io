---
layout: post
title: "Architecture"
---

Using Clean Architecture methodology.

Data will either be from automated scrapes or input manually.

## Presentation

* `/sources/index` show all sources (both scrapable and manual)
* `/sources/{id}` show details of a particular source including all scrapes performed against scrapable sources
* `/sources/edit/{id}` edit a source
* `/sources/create` create a new source
* `/scrapes/index` show all scrapes
* `/scrapes/{id}` show details of a particular scrape including all records found
* `/surnames/index` show all surnames with records
* `/surnames/{value}` show details of a particular surname 

## Application
### Commands

* `IPerformScrapeCommand` scrape the specified site for any records with the specified surname and store
* `ICalculateChangesFromLastScrapeCommand` compare results from last scrape to second to last scrape (if available) and get changes

### Queries

* `IGetSourcesQuery` get all the different sources e.g. FreeBmdBirths, FreeBmdDeaths, GroBirths, GroMarriages
* `IGetScrapesQuery` get all scrapes independent of source or surname
* `IGetScrapesBySourceQuery` get all scrapes performed against a particular source
* `IGetItemsByScrapeQuery` get all items from a particular scrape
* `IGetPeopleBySurnameQuery` get all people as merged from the sources for a particular surname
* `IGet`

## Domain

## Infrastructure

Likely to contain different services for connecting to different sites in order to scrape records from that site

* `FreeBmdService`
* `GroService`
* `AncestryService`

## Persistence

Items

Locations


ManualEntryItems
Id - generated unique id (mandatory)
SourceId - foreign Key to Sources table (mandatory)
UniqueRecordId - a unique identifier as recognised by this particular source (mandatory)
Surname - the surname of the record (mandatory)
Forenames - the forenames of the record (optional)
FactOrEvent - either Fact OR Event (optional)
FactOrEventType - e.g. Birth, Death, Census (optional)
FactOrEventDate
FactOrEventLocation
Data - full data from the source, key value pair

ScrapeItems
Id - generated unique id (mandatory)
ScrapeId - foreign key to Scrapes table (mandatory)
UniqueRecordId - a unique identifier as recognised by this particular source (mandatory)
Surname - the surname of the record (mandatory)
Forenames - the forenames of the record (optional)
FactOrEvent - either Fact OR Event (optional)
FactOrEventType - e.g. Birth, Death, Census (optional)
FactOrEventDate - date string (optional)
FactOrEventLocation - location string (optional)
Data - full data from the source, key value pair JSON

Scrapes
Id - generated unique id (mandatory)
SourceId - foreign key to Sources table (mandatory)
Surname - the surname used to perform the scrape (mandatory)
StartedAt - datetime the scrape was started
FinishedAt - datetime the scrape finished
TimeTaken - calculated
NumberOfRecordsScraped - calculated

Sources
Id - generated unique id (mandatory)
Name - short name of the source e.g. FreeBmdBirths, InterviewWithSylvia
Description - description of the source including base URL if relevant

