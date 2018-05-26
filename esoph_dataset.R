#Find out the column names
colnames(esoph)
#Find out general information of data in esoph
summary(esoph)
#SHow the first 10 lines
head(esoph, 10)
#Show only the last lines
tail(esoph)
#Find out the dimension/lenght and data structure
str(esoph)
#Find out the average number of cases, in smokers "45-54" group
mean (subset(esoph$ncases, esoph$tobgp == "20-29"))
#All data concerning alkohol group "80-119"
alkgrp_data <- esoph[which(esoph[,"alcgp"] == "80-119"),]
#Select all data from alkgrp
alkgp_cases <- alkgrp_data[which(alkgrp_data[, "ncases"] > 0 ),]
sum (alkgp_cases$ncases) # sum all cases of cancer