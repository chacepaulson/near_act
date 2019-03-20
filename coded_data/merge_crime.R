# Input and Edit Data -----------------------------------------------------

# Load Crime Incident Data
library(readr)
crime19 <- read_csv("C:/Users/cpaulson/Downloads/near_act/raw_data/Crime_Incidents_in_2019.csv")
crime18 <- read_csv("C:/Users/cpaulson/Downloads/near_act/raw_data/Crime_Incidents_in_2018.csv")
crime17 <- read_csv("C:/Users/cpaulson/Downloads/near_act/raw_data/Crime_Incidents_in_2017.csv")
crime16 <- read_csv("C:/Users/cpaulson/Downloads/near_act/raw_data/Crime_Incidents_in_2016.csv")
crime15 <- read_csv("C:/Users/cpaulson/Downloads/near_act/raw_data/Crime_Incidents_in_2015.csv")
crime14 <- read_csv("C:/Users/cpaulson/Downloads/near_act/raw_data/Crime_Incidents_in_2014.csv")
crime13 <- read_csv("C:/Users/cpaulson/Downloads/near_act/raw_data/Crime_Incidents_in_2013.csv")
crime12 <- read_csv("C:/Users/cpaulson/Downloads/near_act/raw_data/Crime_Incidents_in_2012.csv")
crime11 <- read_csv("C:/Users/cpaulson/Downloads/near_act/raw_data/Crime_Incidents_in_2011.csv")
crime10 <- read_csv("C:/Users/cpaulson/Downloads/near_act/raw_data/Crime_Incidents_in_2010.csv")
crime09 <- read_csv("C:/Users/cpaulson/Downloads/near_act/raw_data/Crime_Incidents_in_2009.csv")
crime08 <- read_csv("C:/Users/cpaulson/Downloads/near_act/raw_data/Crime_Incidents_in_2008.csv")

# Rename columns
colnames(crime19)

library(dplyr)
crime19 <- crime19 %>% 
  rename(x = X, 
         y = Y,
         ccn = CCN,
         report_date = REPORT_DAT,
         shift = SHIFT, 
         method = METHOD, 
         offense = OFFENSE, 
         block = BLOCK,
         xblock = XBLOCK, 
         yblock = YBLOCK,
         ward = WARD, 
         anc = ANC,
         district = DISTRICT,
         psa = PSA, 
         neigh_cluster = NEIGHBORHOOD_CLUSTER,
         block_group = BLOCK_GROUP,
         census_tract = CENSUS_TRACT,
         voting_precinct = VOTING_PRECINCT,
         lat = LATITUDE,
         lon = LONGITUDE,
         bid = BID,
         start_date = START_DATE,
         end_date = END_DATE,
         objectid = OBJECTID,
         octo_record_id = OCTO_RECORD_ID)

crime18 <- crime18 %>% 
  rename(x = X, 
         y = Y,
         ccn = CCN,
         report_date = REPORT_DAT,
         shift = SHIFT, 
         method = METHOD, 
         offense = OFFENSE, 
         block = BLOCK,
         xblock = XBLOCK, 
         yblock = YBLOCK,
         ward = WARD, 
         anc = ANC,
         district = DISTRICT,
         psa = PSA, 
         neigh_cluster = NEIGHBORHOOD_CLUSTER,
         block_group = BLOCK_GROUP,
         census_tract = CENSUS_TRACT,
         voting_precinct = VOTING_PRECINCT,
         lat = LATITUDE,
         lon = LONGITUDE,
         bid = BID,
         start_date = START_DATE,
         end_date = END_DATE,
         objectid = OBJECTID,
         octo_record_id = OCTO_RECORD_ID)

crime17 <- crime17 %>% 
  rename(x = X, 
         y = Y,
         ccn = CCN,
         report_date = REPORT_DAT,
         shift = SHIFT, 
         method = METHOD, 
         offense = OFFENSE, 
         block = BLOCK,
         xblock = XBLOCK, 
         yblock = YBLOCK,
         ward = WARD, 
         anc = ANC,
         district = DISTRICT,
         psa = PSA, 
         neigh_cluster = NEIGHBORHOOD_CLUSTER,
         block_group = BLOCK_GROUP,
         census_tract = CENSUS_TRACT,
         voting_precinct = VOTING_PRECINCT,
         lat = LATITUDE,
         lon = LONGITUDE,
         bid = BID,
         start_date = START_DATE,
         end_date = END_DATE,
         objectid = OBJECTID,
         octo_record_id = OCTO_RECORD_ID)

crime16 <- crime16 %>% 
  rename(x = X, 
         y = Y,
         ccn = CCN,
         report_date = REPORT_DAT,
         shift = SHIFT, 
         method = METHOD, 
         offense = OFFENSE, 
         block = BLOCK,
         xblock = XBLOCK, 
         yblock = YBLOCK,
         ward = WARD, 
         anc = ANC,
         district = DISTRICT,
         psa = PSA, 
         neigh_cluster = NEIGHBORHOOD_CLUSTER,
         block_group = BLOCK_GROUP,
         census_tract = CENSUS_TRACT,
         voting_precinct = VOTING_PRECINCT,
         lat = LATITUDE,
         lon = LONGITUDE,
         bid = BID,
         start_date = START_DATE,
         end_date = END_DATE,
         objectid = OBJECTID,
         octo_record_id = OCTO_RECORD_ID)

crime15 <- crime15 %>% 
  rename(x = X, 
         y = Y,
         ccn = CCN,
         report_date = REPORT_DAT,
         shift = SHIFT, 
         method = METHOD, 
         offense = OFFENSE, 
         block = BLOCK,
         xblock = XBLOCK, 
         yblock = YBLOCK,
         ward = WARD, 
         anc = ANC,
         district = DISTRICT,
         psa = PSA, 
         neigh_cluster = NEIGHBORHOOD_CLUSTER,
         block_group = BLOCK_GROUP,
         census_tract = CENSUS_TRACT,
         voting_precinct = VOTING_PRECINCT,
         lat = LATITUDE,
         lon = LONGITUDE,
         bid = BID,
         start_date = START_DATE,
         end_date = END_DATE,
         objectid = OBJECTID,
         octo_record_id = OCTO_RECORD_ID)

crime14 <- crime14 %>% 
  rename(x = X, 
         y = Y,
         ccn = CCN,
         report_date = REPORT_DAT,
         shift = SHIFT, 
         method = METHOD, 
         offense = OFFENSE, 
         block = BLOCK,
         xblock = XBLOCK, 
         yblock = YBLOCK,
         ward = WARD, 
         anc = ANC,
         district = DISTRICT,
         psa = PSA, 
         neigh_cluster = NEIGHBORHOOD_CLUSTER,
         block_group = BLOCK_GROUP,
         census_tract = CENSUS_TRACT,
         voting_precinct = VOTING_PRECINCT,
         lat = LATITUDE,
         lon = LONGITUDE,
         bid = BID,
         start_date = START_DATE,
         end_date = END_DATE,
         objectid = OBJECTID,
         octo_record_id = OCTO_RECORD_ID)

crime13 <- crime13 %>% 
  rename(x = X, 
         y = Y,
         ccn = CCN,
         report_date = REPORT_DAT,
         shift = SHIFT, 
         method = METHOD, 
         offense = OFFENSE, 
         block = BLOCK,
         xblock = XBLOCK, 
         yblock = YBLOCK,
         ward = WARD, 
         anc = ANC,
         district = DISTRICT,
         psa = PSA, 
         neigh_cluster = NEIGHBORHOOD_CLUSTER,
         block_group = BLOCK_GROUP,
         census_tract = CENSUS_TRACT,
         voting_precinct = VOTING_PRECINCT,
         lat = LATITUDE,
         lon = LONGITUDE,
         bid = BID,
         start_date = START_DATE,
         end_date = END_DATE,
         objectid = OBJECTID,
         octo_record_id = OCTO_RECORD_ID)

crime12 <- crime12 %>% 
  rename(x = X, 
         y = Y,
         ccn = CCN,
         report_date = REPORT_DAT,
         shift = SHIFT, 
         method = METHOD, 
         offense = OFFENSE, 
         block = BLOCK,
         xblock = XBLOCK, 
         yblock = YBLOCK,
         ward = WARD, 
         anc = ANC,
         district = DISTRICT,
         psa = PSA, 
         neigh_cluster = NEIGHBORHOOD_CLUSTER,
         block_group = BLOCK_GROUP,
         census_tract = CENSUS_TRACT,
         voting_precinct = VOTING_PRECINCT,
         lat = LATITUDE,
         lon = LONGITUDE,
         bid = BID,
         start_date = START_DATE,
         end_date = END_DATE,
         objectid = OBJECTID,
         octo_record_id = OCTO_RECORD_ID)

crime11 <- crime11 %>% 
  rename(x = X, 
         y = Y,
         ccn = CCN,
         report_date = REPORT_DAT,
         shift = SHIFT, 
         method = METHOD, 
         offense = OFFENSE, 
         block = BLOCK,
         xblock = XBLOCK, 
         yblock = YBLOCK,
         ward = WARD, 
         anc = ANC,
         district = DISTRICT,
         psa = PSA, 
         neigh_cluster = NEIGHBORHOOD_CLUSTER,
         block_group = BLOCK_GROUP,
         census_tract = CENSUS_TRACT,
         voting_precinct = VOTING_PRECINCT,
         lat = LATITUDE,
         lon = LONGITUDE,
         bid = BID,
         start_date = START_DATE,
         end_date = END_DATE,
         objectid = OBJECTID,
         octo_record_id = OCTO_RECORD_ID)

crime10 <- crime10 %>% 
  rename(x = X, 
         y = Y,
         ccn = CCN,
         report_date = REPORT_DAT,
         shift = SHIFT, 
         method = METHOD, 
         offense = OFFENSE, 
         block = BLOCK,
         xblock = XBLOCK, 
         yblock = YBLOCK,
         ward = WARD, 
         anc = ANC,
         district = DISTRICT,
         psa = PSA, 
         neigh_cluster = NEIGHBORHOOD_CLUSTER,
         block_group = BLOCK_GROUP,
         census_tract = CENSUS_TRACT,
         voting_precinct = VOTING_PRECINCT,
         lat = LATITUDE,
         lon = LONGITUDE,
         bid = BID,
         start_date = START_DATE,
         end_date = END_DATE,
         objectid = OBJECTID,
         octo_record_id = OCTO_RECORD_ID)

crime09 <- crime09 %>% 
  rename(x = X, 
         y = Y,
         ccn = CCN,
         report_date = REPORT_DAT,
         shift = SHIFT, 
         method = METHOD, 
         offense = OFFENSE, 
         block = BLOCK,
         xblock = XBLOCK, 
         yblock = YBLOCK,
         ward = WARD, 
         anc = ANC,
         district = DISTRICT,
         psa = PSA, 
         neigh_cluster = NEIGHBORHOOD_CLUSTER,
         block_group = BLOCK_GROUP,
         census_tract = CENSUS_TRACT,
         voting_precinct = VOTING_PRECINCT,
         lat = LATITUDE,
         lon = LONGITUDE,
         bid = BID,
         start_date = START_DATE,
         end_date = END_DATE,
         objectid = OBJECTID,
         octo_record_id = OCTO_RECORD_ID)

crime08 <- crime08 %>% 
  rename(x = X, 
         y = Y,
         ccn = CCN,
         report_date = REPORT_DAT,
         shift = SHIFT, 
         method = METHOD, 
         offense = OFFENSE, 
         block = BLOCK,
         xblock = XBLOCK, 
         yblock = YBLOCK,
         ward = WARD, 
         anc = ANC,
         district = DISTRICT,
         psa = PSA, 
         neigh_cluster = NEIGHBORHOOD_CLUSTER,
         block_group = BLOCK_GROUP,
         census_tract = CENSUS_TRACT,
         voting_precinct = VOTING_PRECINCT,
         lat = LATITUDE,
         lon = LONGITUDE,
         bid = BID,
         start_date = START_DATE,
         end_date = END_DATE,
         objectid = OBJECTID,
         octo_record_id = OCTO_RECORD_ID)

colnames(crime19)
colnames(crime18)
colnames(crime17)
colnames(crime16)
colnames(crime15)
colnames(crime14)
colnames(crime13)
colnames(crime12)
colnames(crime11)
colnames(crime10)
colnames(crime09)
colnames(crime08)


# Check Types of Assualts Reported ----------------------------------------

# Combine years into one data set
crime <- rbind(crime19, crime18, crime17, crime16, crime15, crime14, 
               crime13, crime12, crime11, crime10, crime09, crime09)

# Find unique offense types 
unique(crime$offense)
