# Combining the Arrest Data -----------------------------------------------

# Input Data Sets
library(readxl)
arrest2013 <- read_excel("C:/Users/cpaulson/Downloads/near_act/raw_data/Arrests 2013 Public.xlsx")
arrest2014 <- read_excel("C:/Users/cpaulson/Downloads/near_act/raw_data/Arrests 2014 Public.xlsx")
arrest2015 <- read_excel("C:/Users/cpaulson/Downloads/near_act/raw_data/Arrests 2015 Public.xlsx")
arrest2016 <- read_excel("C:/Users/cpaulson/Downloads/near_act/raw_data/Arrests 2016 Public.xlsx")
arrest2017 <- read_excel("C:/Users/cpaulson/Downloads/near_act/raw_data/Arrests 2017 Public.xlsx")

# Convert to Tibbles
library(tibble)
arrest2013 <- as_tibble(arrest2013)
arrest2014 <- as_tibble(arrest2014)
arrest2015 <- as_tibble(arrest2015)
arrest2016 <- as_tibble(arrest2016)
arrest2017 <- as_tibble(arrest2017)

# Merge Data into One Combined Tibble 
arrest_total <- 
  rbind(arrest2013, arrest2014, arrest2015,
        arrest2016, arrest2017)

# Check that All Rows Were Added
nrow(arrest_total)

nrow(arrest2013) + nrow(arrest2014) + 
  nrow(arrest2015) + nrow(arrest2016) + 
  nrow(arrest2017)

# Rename Columns 
colnames(arrest_total)

library(dplyr)
arrest_total <- arrest_total %>% 
  rename(arrestee_type = `Arrestee Type`,
         year = `Arrest Year`,
         date = `Arrest Date`,
         hour = `Arrest Hour`,
         arrest_num = `Arrest Number#`,
         age = Age,
         def_PSA = `Defendant PSA`,
         def_district = `Defendant District`,
         def_race = `Defendant Race`,
         def_ethnicity = `Defendant Ethnicity`,
         def_sex = `Defendant Sex`,
         arrest_category = `Arrest Category`,
         charge_descrip = `Charge Description`,
         arrest_loc_PSA = `Arrest Location PSA`, 
         arrest_loc_district = `Arrest Location District`,
         arrest_loc_block_geox = `Arrest Location Block GeoX`, 
         arrest_loc_block_geoy = `Arrest Location Block GeoY`, 
         offense_geoy = `Offense GEOY`,
         offense_geox = `Offense GEOX`,
         offense_psa = `Offense PSA`, 
         offense_district = `Offense District`,
         arrest_lat = `Arrest Latitude`,
         arrest_long = `Arrest Longitude`,
         offense_lat = `Offense Latitude`,
         offense_lon = `Offense Longitude`
         )

olnames(arrest_total)

