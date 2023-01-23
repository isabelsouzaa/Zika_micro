import excel "C:\Users\keule\Downloads\zika\shape_zika\Nova pasta\dados_microc_teste.xlsx", sheet("Planilha1") firstrow
drop dummy13 dummy14 dummy15 dummy16 dummy17 e
gen dzikaG15 = .
replace dzikaG15 = 1 if zikaG15 > 0
replace dzikaG15 = 0 if zikaG15 == 0
tab dzikaG15, m
gen dmicro16 = .
replace dmicro16 = 1 if micro16 > 0
replace dmicro16 = 0 if micro16 ==0
tab dmicro16, m
tab dzikaG15 dmicro16, chi2
cs dmicro16 dzikaG15 if dzikaG15==0 | dzikaG15==1, tb or
logit dmicro16 dzikaG15, or
logit dmicro16 dzika15 pop, or
logit dmicro16 dzikaG15 txurb, or
logit dmicro16 dzikaG15 txurb pobre, or
logit dmicro16 dzikaG15 txurb pobre rendpc, or
logit dmicro16 dzikaG15 txurb pobre rendpc gini, or
logit dmicro16 dzikaG15 txurb pobre rendpc gini txanalf, or
logit dmicro16 dzikaG15 txurb pobre rendpc gini txanalf adeq, or
logit dmicro16 dzikaG15 txurb pobre rendpc gini adeq txanalf norte sudeste sul centro, or
estat class
estat gof
fitstat
lroc
