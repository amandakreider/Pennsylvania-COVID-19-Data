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
local pop "raw pop data"

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
	replace county = upper(county)
	
	merge m:1 county using "built/county_population.dta", nogen
	
	rename ofdeaths deaths	
	cap rename countypopulation countypopulation1
	cap rename deathrateper100000residents rate2
	cap rename rate rate2
	
	cap drop rate2 
	cap drop countypopulation1
	
	gen datestr = "`date'"
	gen date = date(datestr, "MDY")
	format date %td
	drop datestr

	cap replace deaths = subinstr(deaths,",","",.)
	cap destring deaths, replace
	
	replace deaths = 0 if deaths == .
	
	gen rate = round(deaths/(county_pop_2018/100000),0.1)
	
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

gen new_deaths_per_100k = new_deaths/(county_pop_2018/100000)
label var new_deaths_per_100k "New deaths per 100,000 pop"

gen new_deaths_7_days = (new_deaths_per_100k + L1.new_deaths_per_100k + ///
	L2.new_deaths_per_100k + L3.new_deaths_per_100k + ///
	L4.new_deaths_per_100k + L5.new_deaths_per_100k + ///
	L6.new_deaths_per_100k) / 7
label var new_deaths_7_days "7-day average, daily deaths per 100,000 pop"

/* Save as panel */

order date county county_n new_deaths new_deaths_per_100k ///
	new_deaths_7_days deaths_cum rate county_pop_2018
compress

save "built/deaths_panel_`startdate'_`enddate'.dta", replace

timer off 1
timer list
timer clear

log close



