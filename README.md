# PA Covid-19 Data

## Raw Data

 I have collected county-level data on COVID-19 cases and testing from the Pennsylvania Department of Health, as posted daily to https://www.health.pa.gov/topics/disease/coronavirus/Pages/Cases.aspx.

 The original PDF files from the PA DOH can be found in the folders: "case count pdfs" and "deaths pdfs".

 The raw data, converted to .csv format, can be found in: "raw case count data" and "raw deaths data".

## Code and Built Data

 The program make_deaths_panel.do creates a new dataset, built/deaths_panel_[dates].dta, with panel data on deaths by county. It also creates a dataset called built/county_population.dta with the 2018 population of each county (as reported by PA DOH in the deaths data).

 The program make_cases_panel.do creates a new dataset, built/case_count_panel_[dates].dta, with panel data on incidence, cumulative incidence, test positivity rates, etc. by county.





