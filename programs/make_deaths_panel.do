clear all
capture log close
set more off

log using "$git/programs/make_deaths_panel.log", replace

timer clear
timer on 1

cd "$git"

local startdate 13sept2020	/* specify start date */
local enddate 15sept2020	/* specify end date */

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
	
	import delimited "`raw'/deaths_by_county_of_residence_`date'.csv", varnames(1) clear
	
	gen datestr = "`date'"
	gen date = date(datestr, "MDY")
	format date %td
	drop datestr
	
	replace county = upper(county)
	rename ofdeaths deaths
	rename countypopulation1 county_pop
	rename rate2 rate
	
	label var county_pop "County Population 2018"
	label var rate "Death rate per 100,000 residents"
	
	cap replace county_pop = subinstr(county_pop,",","",.)
	cap destring county_pop, replace
	
	cap replace deaths = subinstr(deaths,",","",.)
	cap destring deaths, replace
	
	save "temp/deaths_`date'.dta", replace
}

clear

/* Append datasets */

foreach date of local dates {
	append using "temp/deaths_`date'.dta"
}

compress

sort county date

/* Save as panel */

order date county deaths county_pop rate
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



