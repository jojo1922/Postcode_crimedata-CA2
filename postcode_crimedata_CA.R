getwd()
setwd(dir = "D:/datascience project/postcode_crimedata_CA2")
ni_postcode_data <-read.csv("NIPostcodes.csv") # Read the dataset called NIPostcodes.csv
View(ni_postcode_data)
nrow(ni_postcode_data)# find total number of rows
#nip_postcode
str(ni_postcode_data)# structure of dataset before cleaning
head(ni_postcode_data)
dim(ni_postcode_data)
names(ni_postcode_data) 
names(ni_postcode_data) <-c("Organisation Name","Sub-building Name","Building Name","Number","Primary Thorfare","Alt Thorfare","Secondary Thorfare","Locality",
                            "Townland","Town","County","Postcode","x-coordinates","y-coordinates","Primary Key (identifier)")
names(ni_postcode_data)
nrow(ni_postcode_data)
head(ni_postcode_data,10)# first 10 rows of the dataframe
dim(ni_postcode_data)# dimension including total number of rows and column
missing_data <- complete.cases(ni_postcode_data)
missing_data
sum(missing_data)
ni_post_missing <- ni_postcode_data[complete.cases(ni_postcode_data),]
ni_post_missingmissing_1 <- md.pattern(ni_postcode_data)
ni_post_missingmissing_1
dim(ni_post_missing)