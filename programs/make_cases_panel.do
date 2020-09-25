clear all
capture log close
set more off

log using "$git/programs/make_cases_panel.log", replace

timer clear
timer on 1

cd "$git"

local startdate 21aug2020	/* specify start date */
local enddate 25sept2020	/* specify end date */

local raw "$git/raw case count data"

/* 
This file opens all of the state's case count data files for a specified
date range and appends them to create a panel dataset.
*/

/* Create local with desired date range */

use dates if date >= td(`startdate') & date <= td(`enddate'), clear

levelsof datestr, local(dates)

/* Open each CSV file and save as a temporary dta file */

foreach date of local dates {
    
	di "`date'"
	
	import delimited "`raw'/tabula-County Case Counts_`date'.csv", varnames(1) clear
	
	gen datestr = "`date'"
	gen date = date(datestr, "MDY")
	format date %td
	drop datestr
	
	rename personswithnegativepcr persons_negative_pcr
	
	compress
	
	order date county region cases confirmed probable persons_negative_pcr
	
	save "temp/case_counts_`date'.dta", replace
}

clear

/* Append datasets */

foreach date of local dates {
	append using "temp/case_counts_`date'.dta"
}

compress

drop if county == "TOTAL"

fillin county date
sort county date

tab _fillin
drop _fillin

/* Merge in county population */

merge m:1 county using "built/county_population.dta", nogen

/* New variables */

encode county, gen(county_n)
tsset county_n date

rename cases cum_cases 
label var cum_cases "Cumulative Cases"

gen incident_cases = cum_cases - L1.cum_cases
label var incident_cases "Incident Cases"

gen cum_cases_per_100k = cum_cases/(county_pop_2018/100000)
label var cum_cases_per_100k "Cumulative Cases per 100,000 pop"

gen new_cases_per_100k = incident_cases/(county_pop_2018/100000)
label var new_cases_per_100k "Incident Cases per 100,000 pop"

gen avg_7_days = (new_cases_per_100k + L1.new_cases_per_100k + ///
	L2.new_cases_per_100k + L3.new_cases_per_100k + ///
	L4.new_cases_per_100k + L5.new_cases_per_100k + ///
	L6.new_cases_per_100k) / 7
label var avg_7_days "7-day average, daily cases per 100,000 pop"

gen daily_negative_tests = persons_negative_pcr - L1.persons_negative_pcr
	
gen incidence_7_days = incident_cases + L1.incident_cases + ///
	L2.incident_cases + L3.incident_cases + ///
	L4.incident_cases + L5.incident_cases + ///
	L6.incident_cases
gen negatives_7_days = daily_negative_tests + L1.daily_negative_tests + ///
	L2.daily_negative_tests + L3.daily_negative_tests + ///
	L4.daily_negative_tests + L5.daily_negative_tests + ///
	L6.daily_negative_tests
	
gen pct_positive_7_days = ///
	(incidence_7_days / (incidence_7_days + negatives_7_days))*100
label var pct_positive_7_days "% of tests positive, last 7 days (approximation)"
	
drop daily_negative_tests incidence_7_days negatives_7_days

/* Save as panel */

order date county county_n region incident_cases ///
	new_cases_per_100k avg_7_days pct_positive_7_days ///
	cum_cases confirmed probable cum_cases_per_100k ///
	persons_negative_pcr county_pop_2018
compress

save "built/case_count_panel_`startdate'_`enddate'.dta", replace

/* Merge in deaths data */

merge 1:1 date county county_n county_pop_2018 using ///
	"built/deaths_panel_`startdate'_`enddate'.dta", nogen

sort county date
compress

save "built/full_panel_`startdate'_`enddate'.dta", replace

timer off 1
timer list
timer clear

log close



