/* Line graph with all NC region counties */

twoway ///
	(line incident_cases date if county == "BRADFORD") ///
	(line incident_cases date if county == "CENTRE") ///
	(line incident_cases date if county == "CLINTON") ///
	(line incident_cases date if county == "COLUMBIA") ///
	(line incident_cases date if county == "LYCOMING") ///
	(line incident_cases date if county == "MONTOUR") ///
	(line incident_cases date if county == "NORTHUMBERLAND") ///
	(line incident_cases date if county == "POTTER") ///
	(line incident_cases date if county == "SNYDER") ///
	(line incident_cases date if county == "SULLIVAN") ///
	(line incident_cases date if county == "TIOGA") ///
	(line incident_cases date if county == "UNION"), ///
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
	
twoway ///
	(line new_cases_per_100k date if county == "BRADFORD") ///
	(line new_cases_per_100k date if county == "CENTRE") ///
	(line new_cases_per_100k date if county == "CLINTON") ///
	(line new_cases_per_100k date if county == "COLUMBIA") ///
	(line new_cases_per_100k date if county == "LYCOMING") ///
	(line new_cases_per_100k date if county == "MONTOUR") ///
	(line new_cases_per_100k date if county == "NORTHUMBERLAND") ///
	(line new_cases_per_100k date if county == "POTTER") ///
	(line new_cases_per_100k date if county == "SNYDER") ///
	(line new_cases_per_100k date if county == "SULLIVAN") ///
	(line new_cases_per_100k date if county == "TIOGA") ///
	(line new_cases_per_100k date if county == "UNION"), ///
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
	
twoway ///
	(line avg_7_days date if county == "BRADFORD") ///
	(line avg_7_days date if county == "CENTRE") ///
	(line avg_7_days date if county == "CLINTON") ///
	(line avg_7_days date if county == "COLUMBIA") ///
	(line avg_7_days date if county == "LYCOMING") ///
	(line avg_7_days date if county == "MONTOUR") ///
	(line avg_7_days date if county == "NORTHUMBERLAND") ///
	(line avg_7_days date if county == "POTTER") ///
	(line avg_7_days date if county == "SNYDER") ///
	(line avg_7_days date if county == "SULLIVAN") ///
	(line avg_7_days date if county == "TIOGA") ///
	(line avg_7_days date if county == "UNION"), ///
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
	
twoway ///
	(line pct_positive_7_days date if county == "BRADFORD") ///
	(line pct_positive_7_days date if county == "CENTRE") ///
	(line pct_positive_7_days date if county == "CLINTON") ///
	(line pct_positive_7_days date if county == "COLUMBIA") ///
	(line pct_positive_7_days date if county == "LYCOMING") ///
	(line pct_positive_7_days date if county == "MONTOUR") ///
	(line pct_positive_7_days date if county == "NORTHUMBERLAND") ///
	(line pct_positive_7_days date if county == "POTTER") ///
	(line pct_positive_7_days date if county == "SNYDER") ///
	(line pct_positive_7_days date if county == "SULLIVAN") ///
	(line pct_positive_7_days date if county == "TIOGA") ///
	(line pct_positive_7_days date if county == "UNION"), ///
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
	
twoway ///
	(line cum_cases_per_100k date if county == "BRADFORD") ///
	(line cum_cases_per_100k date if county == "CENTRE") ///
	(line cum_cases_per_100k date if county == "CLINTON") ///
	(line cum_cases_per_100k date if county == "COLUMBIA") ///
	(line cum_cases_per_100k date if county == "LYCOMING") ///
	(line cum_cases_per_100k date if county == "MONTOUR") ///
	(line cum_cases_per_100k date if county == "NORTHUMBERLAND") ///
	(line cum_cases_per_100k date if county == "POTTER") ///
	(line cum_cases_per_100k date if county == "SNYDER") ///
	(line cum_cases_per_100k date if county == "SULLIVAN") ///
	(line cum_cases_per_100k date if county == "TIOGA") ///
	(line cum_cases_per_100k date if county == "UNION"), ///
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
	
twoway ///
	(line new_deaths date if county == "BRADFORD") ///
	(line new_deaths date if county == "CENTRE") ///
	(line new_deaths date if county == "CLINTON") ///
	(line new_deaths date if county == "COLUMBIA") ///
	(line new_deaths date if county == "LYCOMING") ///
	(line new_deaths date if county == "MONTOUR") ///
	(line new_deaths date if county == "NORTHUMBERLAND") ///
	(line new_deaths date if county == "POTTER") ///
	(line new_deaths date if county == "SNYDER") ///
	(line new_deaths date if county == "SULLIVAN") ///
	(line new_deaths date if county == "TIOGA") ///
	(line new_deaths date if county == "UNION"), ///
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
	
twoway ///
	(line new_deaths_per_100k date if county == "BRADFORD") ///
	(line new_deaths_per_100k date if county == "CENTRE") ///
	(line new_deaths_per_100k date if county == "CLINTON") ///
	(line new_deaths_per_100k date if county == "COLUMBIA") ///
	(line new_deaths_per_100k date if county == "LYCOMING") ///
	(line new_deaths_per_100k date if county == "MONTOUR") ///
	(line new_deaths_per_100k date if county == "NORTHUMBERLAND") ///
	(line new_deaths_per_100k date if county == "POTTER") ///
	(line new_deaths_per_100k date if county == "SNYDER") ///
	(line new_deaths_per_100k date if county == "SULLIVAN") ///
	(line new_deaths_per_100k date if county == "TIOGA") ///
	(line new_deaths_per_100k date if county == "UNION"), ///
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
	
twoway ///
	(line deaths_cum date if county == "BRADFORD") ///
	(line deaths_cum date if county == "CENTRE") ///
	(line deaths_cum date if county == "CLINTON") ///
	(line deaths_cum date if county == "COLUMBIA") ///
	(line deaths_cum date if county == "LYCOMING") ///
	(line deaths_cum date if county == "MONTOUR") ///
	(line deaths_cum date if county == "NORTHUMBERLAND") ///
	(line deaths_cum date if county == "POTTER") ///
	(line deaths_cum date if county == "SNYDER") ///
	(line deaths_cum date if county == "SULLIVAN") ///
	(line deaths_cum date if county == "TIOGA") ///
	(line deaths_cum date if county == "UNION"), ///
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
	
twoway ///
	(line rate date if county == "BRADFORD") ///
	(line rate date if county == "CENTRE") ///
	(line rate date if county == "CLINTON") ///
	(line rate date if county == "COLUMBIA") ///
	(line rate date if county == "LYCOMING") ///
	(line rate date if county == "MONTOUR") ///
	(line rate date if county == "NORTHUMBERLAND") ///
	(line rate date if county == "POTTER") ///
	(line rate date if county == "SNYDER") ///
	(line rate date if county == "SULLIVAN") ///
	(line rate date if county == "TIOGA") ///
	(line rate date if county == "UNION"), ///
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
	
twoway ///
	(line new_deaths_7_days date if county == "BRADFORD") ///
	(line new_deaths_7_days date if county == "CENTRE") ///
	(line new_deaths_7_days date if county == "CLINTON") ///
	(line new_deaths_7_days date if county == "COLUMBIA") ///
	(line new_deaths_7_days date if county == "LYCOMING") ///
	(line new_deaths_7_days date if county == "MONTOUR") ///
	(line new_deaths_7_days date if county == "NORTHUMBERLAND") ///
	(line new_deaths_7_days date if county == "POTTER") ///
	(line new_deaths_7_days date if county == "SNYDER") ///
	(line new_deaths_7_days date if county == "SULLIVAN") ///
	(line new_deaths_7_days date if county == "TIOGA") ///
	(line new_deaths_7_days date if county == "UNION"), ///
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

* Cases

twoway line incident_cases date, by(county)
twoway line new_cases_per_100k date, by(county)
twoway line avg_7_days date, by(county)
twoway line pct_positive_7_days date, by(county)
twoway line cum_cases_per_100k date, by(county)


* Deaths

twoway bar new_deaths date, by(county) ylab(0(2)10)
twoway bar new_deaths_per_100k date, by(county)
twoway line rate date, by(county)
twoway line new_deaths_7_days date, by(county) 

/* Line graphs - Centre only */

twoway line cum_cases date if county == "CENTRE", ///
	ylab(0(300)2250, angle(0)) ///
	xlab(22147(7)22183, angle(45)) ///
	title("Centre County" "Cumulative Cases, 8/21-Present")
graph export "graphs/centre_cum_cases.jpg", as(jpg) name("Graph") replace
	
twoway (bar new_cases_per_100k date) (line avg_7_days date) ///
	if county == "CENTRE", ///
	ylab(, angle(0)) ///
	xlab(22147(7)22183, angle(45)) ///
	legend(lab(1 "Incident cases per 100,000 pop") lab(2 "7-Day Avg.")) ///
	title("Centre County, 8/21-Present")
	
twoway line avg_7_days date if county == "CENTRE", ///
	ylab(, angle(0)) ///
	xlab(22147(7)22183, angle(45)) ///
	title("Centre County" "7-day average, daily cases per 100,000 pop")
	
twoway line pct_positive_7_days date if county == "CENTRE", ///
	ylab(, angle(0)) ///
	xlab(22147(7)22183, angle(45)) ///
	title("Centre County" "% of tests positive, last 7 days")
	