clear all
capture log close
set more off

log using "$git/programs/import_pop_data.log", replace

timer clear
timer on 1

cd "$git"

local raw "raw pop data"
	
import delimited "`raw'/raw_pop_data_2018.csv", ///
	varnames(1) clear

replace county_pop_2018 = subinstr(county_pop_2018,",","",.)
destring county_pop_2018, replace

compress

save "built/county_population.dta", replace

timer off 1
timer list
timer clear

log close



