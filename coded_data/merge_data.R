# Import Raw Data Sets
library(readxl)

stop_pre2017 <- read_excel("~/Downloads/near_act/raw_data/Stop_Data_pre2017.xlsx")
stop_2017 <- read_excel("~/Downloads/near_act/raw_data/Stop_Data_CY2017.xlsx")

# Check shared colnames 

colnames(stop_pre2017)
colnames(stop_2017)

# Turn Data into Tibbles 
library(tibble)
stop_pre2017 <- as.tibble(stop_pre2017)
stop_2017 <- as.tibble(stop_2017)

# Merge Data into One Combined Tibble 
stop_total <- rbind(stop_pre2017, stop_2017)

# rename columns 
library(dplyr)
colnames(stop_total)

stop_total <- stop_total %>% 
  rename(incident_type = Incident_Type, 
         date = Report_taken_date_EST, 
         year = Year, 
         data_type = `Data Type`, 
         race = Subject_Race, 
         sex = Subject_Sex, 
         ethnicity = Subject_Ethnicity,
         address = `Block Address`,
         location_district = `Incident Location District`, 
         location_psa = `Incident Location PSA`, 
         age = Age)

colnames(stop_total)
