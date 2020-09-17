clear all
capture log close
set more off

log using "$git/programs/make_deaths_panel.log", replace

timer clear
timer on 1

cd "$git"

local startdate 21aug2020	/* specify start date */
local enddate 16sept2020	/* specify end date */

local raw "raw deaths data"

/* 
This file opens the state's death data files for a specified
date range and appends them to create a panel dataset.
*/

/* Create local with desired date range */

use dates if date >= td(`startdate') & date <= td(`enddate'), clear

levelsof datestr, local(dates)

/* Open each CSV file and save as a temporary dta file */

foreach date of local dates {
    
	di "`date'"
	
	import delimited "`raw'/deaths_by_county_of_residence_`date'.csv", ///
		varnames(1) clear
	
	drop if county == "County"
	
	cap rename countypopulation countypopulation1
	cap rename deathrateper100000residents rate2
	cap rename rate rate2
	
	gen datestr = "`date'"
	gen date = date(datestr, "MDY")
	format date %td
	drop datestr
	
	replace county = upper(county)
	rename ofdeaths deaths
	rename countypopulation1 county_pop
	
	cap replace deaths = subinstr(deaths,",","",.)
	cap destring deaths, replace
	
	cap replace county_pop = subinstr(county_pop,",","",.)
	cap destring county_pop, replace
	
	cap gen rate2 = round(deaths/(county_pop/100000),0.1)
	rename rate2 rate
	cap destring rate, replace
	
	label var county_pop "County Population 2018"
	label var rate "Death rate per 100,000 residents"
	
	save "temp/deaths_`date'.dta", replace
}

clear

/* Append datasets */

foreach date of local dates {
	di "`date'"
	append using "temp/deaths_`date'.dta"
}

compress

sort county date

/* Label vars and add new vars */

encode county, gen(county_n)
tsset county_n date

rename deaths deaths_cum
label var deaths_cum "Cumulative Deaths"

gen new_deaths = deaths_cum - L1.deaths_cum
label var new_deaths "Daily Deaths"

gen new_deaths_per_100k = new_deaths/(county_pop/100000)
label var new_deaths_per_100k "New deaths per 100,000 pop"

/* Save as panel */

order date county county_n new_deaths new_deaths_per_100k ///
	deaths_cum rate county_pop
compress

save "built/deaths_panel_`startdate'_`enddate'.dta", replace

/* Create a dataset with each county's 2018 population */

keep county county_pop

duplicates drop
duplicates report county

save "built/county_population.dta", replace

timer off 1
timer list
timer clear

log close



