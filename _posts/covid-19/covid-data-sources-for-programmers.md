---
title: Covid-19 Data Sources for Programmers
date: 2020-04-08 10:00:00 -0700
categories:
- [science]
- [covid-19]
---

I've been doing analysis of Covid cases to try to understand what to expect in
terms of lockdown length and disease progress, especially in Colorado and
Brazil, the places I spend the most time in. There are a lot of data sources
around, and it took me a few hours to find and test a number of them. I hope
this saves time for anyone interested in crunching Covid numbers. If you have
suggestions and tips on data sources, please open a PR or issue in my [Github
repo][mbf-repo]. Here we go.

[John Burn-Murdoch](https://twitter.com/jburnmurdoch) and his team at the
Financial Times have done a [great job][ft-corona] reporting visually on the
pandemic. They have fewer and simpler charts than many other sites but their
charts are done exquisitely and distill a lot of data to provide you the
clearest picture available of each country's situation, plus a few of the
regional hotspots around the world.

[Our World in Data](https://ourworldindata.org/) is a wonderful project based at
Oxford University that attempts to explain the world using rigorous data sources
and beautiful charts. They have been producing a lot of great Covid content
since the pandemic broke out. If you have some time, I suggest exploring the
non-covid areas of the site as well (and if you enjoy that, I highly recommend
the book [Factfulness]). All of their work is [open sourced](https://github.com/owid).

The OWID data is in a [GitHub repo](https://github.com/owid/covid-19-data).
Their main source is the [European CDC][ECDC], which publishes confirmed cases
and deaths aggregated by date and country for most of the world (not just
Europe) in JSON, CSV, and XML files.

Johns Hopkins University has built a wildly popular dashboard available in
[desktop][jhu-desktop] and [mobile][jhu-mobile] versions. Their
[repository](https://github.com/CSSEGISandData/COVID-19) is public and it
aggregates data from a variety of sources into easy to use CSV files (there's
also a [JSON mirror](https://github.com/pomber/covid19)). In
addition to worldwide national totals, data is available for individual US
counties and states.  It includes number of cases and deaths along with
recovered and active patients. Since they aggregate data from the US CDC, China
CDC, European CDC and several other national institutions, this is a great way
to get your hands at worldwide data.

The New York Times offers a plethora of high-quality Covid [maps and
visualizations][nyt-maps]. It's not a surprise Mike Bostock, creator of the
D3.js library, used to work there. The NYT open sourced a [repository][nyt-repo]
providing high-quality and painstakingly verified data for US cases at both the
state and county level. This is probably the best source of data for analyzing
number of cases and deaths in the US.

Another outstanding US data source is the [Covid Tracking
Project](https://covidtracking.com/), powered by dozens of volunteers attempting
to collect data on number of tests performed, positive and negative results,
hospitalizations, patients in the ICU and on ventilators, and so on. They face
a severe dearth of information in the US and the complete lack of centralized
reporting, but they're making the best of it. If you want to attempt more
sophisticated analysis, this is a good source. But mind the gaps.

I'm sure you've hit [Worldometer](https://www.worldometers.info/coronavirus/)
while googling covid information. They provide encyclopedic amounts of data
about Covid infection worldwide through an effective bare-bones interface with
good charts. Data is aggregated by country and includes deaths and active cases,
both by day and totalized.

Finally, if you are interested in more regional data for other countries, there
are great repositories for [Spain][providencialdata19] and [Italy][italy-data].
It's not easy to aggregate UK data, but Tom White has a [good
repo](https://github.com/tomwhite/covid-19-uk-data). Álvaro Justen has done the
same for [Brazil](https://github.com/turicas/covid19-br), while research lab
Fiocruz has a good [web UI](https://bigdata-covid19.icict.fiocruz.br/) for
Brazilian data.

If you know of other high-quality regional repos, please send a PR or [GitHub
issue][mbf-repo]. I'd love to expand this post with the best repos for each
region.

[Factfulness]: https://www.amazon.com/Factfulness-Reasons-World-Things-Better/dp/1250123828/

[ECDC]: https://www.ecdc.europa.eu/en/publications-data/download-todays-data-geographic-distribution-covid-19-cases-worldwide

[jhu-desktop]: https://gisanddata.maps.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6
[jhu-mobile]:
http://www.arcgis.com/apps/opsdashboard/index.html#/85320e2ea5424dfaaa75ae62e5c06e61

[nyt-maps]: https://www.nytimes.com/interactive/2020/world/coronavirus-maps.html
[nyt-repo]: https://github.com/nytimes/covid-19-data

[ft-corona]: https://www.ft.com/coronavirus-latest

[providencialdata19]: https://code.montera34.com/numeroteca/covid19/-/tree/master

[italy-data]: https://github.com/pcm-dpc/COVID-19

[mbf-repo]: https://github.com/gduarte/blog
