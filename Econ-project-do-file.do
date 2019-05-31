reg UnEmply GDPC, r
dis e(r2_a)
outreg2 using myreg.xls
reg UnEmply GDPC InflRC, r
dis e(r2_a)
outreg2 using myreg.xls
reg UnEmply GDPC InflRC IncC, r
dis e(r2_a)
outreg2 using myreg.xls
reg UnEmply GDPC InflRC IncC PerExpC, r
dis e(r2_a)
outreg2 using myreg.xls
reg UnEmply GDPC IncC PerExpC, r
dis e (r2_a)
outreg2 using myreg1.xls
test IncC PerExpC
corr GDPCC IncC PerExpC
