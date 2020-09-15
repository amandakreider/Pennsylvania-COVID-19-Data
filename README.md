# PA County-Level COVID-19 Data

## Raw Data

 I have collected county-level data on COVID-19 cases, testing, and deaths from the Pennsylvania Department of Health, as posted daily to [the PA DOH website](https://www.health.pa.gov/topics/disease/coronavirus/Pages/Cases.aspx).

 The original PDF files from the PA DOH can be found in the folders: [Case Count PDFs](https://github.com/amandakreider/Pennsylvania-COVID-19-Data/tree/master/case%20count%20pdfs) and [Deaths PDFs](https://github.com/amandakreider/Pennsylvania-COVID-19-Data/tree/master/deaths%20pdfs).
 
 I have also converted the original data (from the PDFs) to CSV files. These can be found in: [Raw Case Count Data](https://github.com/amandakreider/Pennsylvania-COVID-19-Data/tree/master/raw%20case%20count%20data) and [Raw Deaths Data](https://github.com/amandakreider/Pennsylvania-COVID-19-Data/tree/master/raw%20deaths%20data).
 
 So far, I have collected data on cases as far back as August 21, 2020, and on deaths as far back as September 13, 2020. I used the [Wayback Machine](https://archive.org/web/) to collect older PDFs of the data.

## Code and Built Data

 The program [make_deaths_panel.do](https://github.com/amandakreider/Pennsylvania-COVID-19-Data/tree/master/programs) creates a new dataset, [deaths_panel_DATES.dta](https://github.com/amandakreider/Pennsylvania-COVID-19-Data/tree/master/built), with panel data on deaths by county of residence. It also creates a dataset called [county_population.dta](https://github.com/amandakreider/Pennsylvania-COVID-19-Data/tree/master/built) with the 2018 population of each county (as reported by PA DOH in the deaths data).

 The program [make_cases_panel.do](https://github.com/amandakreider/Pennsylvania-COVID-19-Data/tree/master/programs) creates a new dataset, [case_count_panel_DATES.dta](https://github.com/amandakreider/Pennsylvania-COVID-19-Data/tree/master/built), with panel data on incidence, cumulative incidence, test positivity rates, etc. by county.





