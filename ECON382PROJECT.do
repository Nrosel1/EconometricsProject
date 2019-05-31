// Summary Statistics

**USA Annual GDP
sum GDP, detail

**Annual Average Inflation Rate
sum InfR, detail

**Annual Average Single Household Income
sum Inc, detail

**Annual Personal Expenditures
sum PerExp, detail


**Regression on unemployment rate change on time
reg UnEmplyC T, r

**Regression on unemployment rate change on Annual USA GDP
reg UnEmplyC GDP, r

**Regression on unemployment rate change on Annual Average Single Household Income
reg UnEmplyC Inc, r

reg UnEmplyC PerExp, r
**Regression on unemployement rate change on Annual personal expenditures

gen SigEvent = 1 if Year >=2008
replace SigEvent = 0 if Year < 2008

reg UnEmplyC GDP InfR Inc PerExp T SigEvent, r


//Summary Statistics Table

test T SigEvent


//Correlation Table
estpost correlate UnEmplyC GDP InfR Inc PerExp T SigEvent, matrix listwise
est store c1
esttab * using correlate.rtf, unstack not noobs compress

