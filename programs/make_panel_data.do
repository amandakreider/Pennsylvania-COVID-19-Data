clear all
set more off

timer clear
timer on 1

cd "$git"

local startdate 21aug2020	/* specify start date */
local enddate 14sept2020	/* specify end date */

global raw "$git/raw csv data"

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
	
	import delimited "$raw/tabula-County Case Counts_`date'.csv", varnames(1) clear
	
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

/* Save as panel */

sort county date

save "built/case_count_panel_`startdate'_`enddate'.dta", replace

timer off 1
timer list
timer clear






