/* Line graph with all NC region counties */

twoway ///
	(line cum_cases date if county == "BRADFORD") ///
	(line cum_cases date if county == "CENTRE") ///
	(line cum_cases date if county == "CLINTON") ///
	(line cum_cases date if county == "COLUMBIA") ///
	(line cum_cases date if county == "LYCOMING") ///
	(line cum_cases date if county == "MONTOUR") ///
	(line cum_cases date if county == "NORTHUMBERLAND") ///
	(line cum_cases date if county == "POTTER") ///
	(line cum_cases date if county == "SNYDER") ///
	(line cum_cases date if county == "SULLIVAN") ///
	(line cum_cases date if county == "TIOGA") ///
	(line cum_cases date if county == "UNION"), ///
	legend(lab(1 "BRADFORD") ///
	lab(2 "CENTRE") ///
	lab(3 "CLINTON") ///
	lab(4 "COLUMBIA") ///
	lab(5 "LYCOMING") ///
	lab(6 "MONTOUR") ///
	lab(7 "NORTHUMBERLAND") ///
	lab(8 "POTTER") ///
	lab(9 "SNYDER") ///
	lab(10 "SULLIVAN") ///
	lab(11 "TIOGA") ///
	lab(12 "UNION"))
	
/* Line graphs with all counties (not pretty) */

twoway line new_cases_per_100k date, by(county)

twoway line cum_cases_per_100k date, by(county)

twoway line pct_positive_7_days date, by(county)