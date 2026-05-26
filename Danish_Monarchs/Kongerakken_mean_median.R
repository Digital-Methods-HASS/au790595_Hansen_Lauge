# indlæser csv fil
kongerakken <- read.csv2("data/Kongerakken_DAM_6.csv",)

#Checks if it works
kongerakken
class(kongerakken$regeringstid)

# Calculate mean and median
mean(kongerakken$regeringstid,na.rm=TRUE)
median(kongerakken$regeringstid,na.rm=TRUE)
