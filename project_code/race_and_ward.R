# Import Raw Data Sets
library(readxl)

stop_pre2017 <- read_excel("C:/Users/cpaulson/Downloads/near_act/raw_data/Stop_Data_pre2017.xlsx")
stop_2017 <- read_excel("C:/Users/cpaulson/Downloads/near_act/raw_data/Stop_Data_CY2017.xlsx")

# Check shared colnames 
colnames(stop_pre2017)
colnames(stop_2017)

# Turn Data into Tibbles 
library(tibble)
stop_pre2017 <- as_tibble(stop_pre2017)
stop_2017 <- as_tibble(stop_2017)

# Merge Data into One Combined Tibble 
stop_total <- rbind(stop_pre2017, stop_2017)

# Check that All Rows Were Added
nrow(stop_total)

nrow(stop_pre2017) + nrow(stop_2017) 

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


# Begin Sorting Data ------------------------------------------------------
head(stop_total)
colnames(stop_total)

# Find unique breakdowns by variables 
unique(stop_total$year)
unique(stop_total$race)
unique(stop_total$sex)
unique(stop_total$location_district)
unique(stop_total$location_psa)
unique(stop_total$age)

# subset by year
stop_2010 <- subset(stop_total, year == 2010)
stop_2011 <- subset(stop_total, year == 2011)
stop_2012 <- subset(stop_total, year == 2012)
stop_2013 <- subset(stop_total, year == 2013)
stop_2014 <- subset(stop_total, year == 2014)
stop_2015 <- subset(stop_total, year == 2015)
stop_2016 <- subset(stop_total, year == 2016)
stop_2017 <- subset(stop_total, year == 2017)

# find which year has the most stop and frisks 
stop_year_count <- data.frame(year = c(2010, 2011, 2012, 2013, 2014, 2015, 
                                    2016, 2017),
                              count = c(nrow(stop_2010), nrow(stop_2011), 
                                        nrow(stop_2012),
                                        nrow(stop_2013), nrow(stop_2014), 
                                        nrow(stop_2015),
                                        nrow(stop_2016), nrow(stop_2017)))
stop_year_count

# find the race breakdown by year 
stop_race_2010 <- data.frame(year = c(2010, 2010, 2010, 2010, 2010),
                             race = c("white", "black", "asian", "native american", "pacific islander"),
                             count = c(nrow(subset(stop_2010, race == "White")), 
                                       nrow(subset(stop_2010, race == "Black")), 
                                       nrow(subset(stop_2010, race == "Asian")), 
                                       nrow(subset(stop_2010, race == "American Indian Or Alaska Native" )), 
                                       nrow(subset(stop_2010, race == "Native Hawaiian Or Other Pacific Islander"))))                                                          

stop_race_2011 <- data.frame(year = c(2011, 2011, 2011, 2011, 2011),
                             race = c("white", "black", "asian", "native american", "pacific islander"),
                             count = c(nrow(subset(stop_2011, race == "White")), 
                                       nrow(subset(stop_2011, race == "Black")), 
                                       nrow(subset(stop_2011, race == "Asian")), 
                                       nrow(subset(stop_2011, race == "American Indian Or Alaska Native" )), 
                                       nrow(subset(stop_2011, race == "Native Hawaiian Or Other Pacific Islander"))))

stop_race_2012 <- data.frame(year = c(2012, 2012, 2012, 2012, 2012),
                             race = c("white", "black", "asian", "native american", "pacific islander"),
                             count = c(nrow(subset(stop_2012, race == "White")), 
                                       nrow(subset(stop_2012, race == "Black")), 
                                       nrow(subset(stop_2012, race == "Asian")), 
                                       nrow(subset(stop_2012, race == "American Indian Or Alaska Native" )), 
                                       nrow(subset(stop_2012, race == "Native Hawaiian Or Other Pacific Islander"))))

stop_race_2013 <- data.frame(year = c(2013, 2013, 2013, 2013, 2013),
                             race = c("white", "black", "asian", "native american", "pacific islander"),
                             count = c(nrow(subset(stop_2013, race == "White")), 
                                       nrow(subset(stop_2013, race == "Black")), 
                                       nrow(subset(stop_2013, race == "Asian")), 
                                       nrow(subset(stop_2013, race == "American Indian Or Alaska Native" )), 
                                       nrow(subset(stop_2013, race == "Native Hawaiian Or Other Pacific Islander"))))

stop_race_2014 <- data.frame(year = c(2014, 2014, 2014, 2014, 2014),
                             race = c("white", "black", "asian", "native american", "pacific islander"),
                             count = c(nrow(subset(stop_2014, race == "White")), 
                                       nrow(subset(stop_2014, race == "Black")), 
                                       nrow(subset(stop_2014, race == "Asian")), 
                                       nrow(subset(stop_2014, race == "American Indian Or Alaska Native" )), 
                                       nrow(subset(stop_2014, race == "Native Hawaiian Or Other Pacific Islander"))))

stop_race_2015 <- data.frame(year = c(2015, 2015, 2015, 2015, 2015),
                             race = c("white", "black", "asian", "native american", "pacific islander"),
                             count = c(nrow(subset(stop_2015, race == "White")), 
                                       nrow(subset(stop_2015, race == "Black")), 
                                       nrow(subset(stop_2015, race == "Asian")), 
                                       nrow(subset(stop_2015, race == "American Indian Or Alaska Native" )), 
                                       nrow(subset(stop_2015, race == "Native Hawaiian Or Other Pacific Islander"))))

stop_race_2016 <- data.frame(year = c(2016, 2016, 2016, 2016, 2016),
                             race = c("white", "black", "asian", "native american", "pacific islander"),
                             count = c(nrow(subset(stop_2016, race == "White")), 
                                       nrow(subset(stop_2016, race == "Black")), 
                                       nrow(subset(stop_2016, race == "Asian")), 
                                       nrow(subset(stop_2016, race == "American Indian Or Alaska Native" )), 
                                       nrow(subset(stop_2016, race == "Native Hawaiian Or Other Pacific Islander"))))

stop_race_2017 <- data.frame(year = c(2017, 2017, 2017, 2017, 2017),
                             race = c("white", "black", "asian", "native american", "pacific islander"),
                             count = c(nrow(subset(stop_2017, race == "White")), 
                                       nrow(subset(stop_2017, race == "Black")), 
                                       nrow(subset(stop_2017, race == "Asian")), 
                                       nrow(subset(stop_2017, race == "American Indian Or Alaska Native" )), 
                                       nrow(subset(stop_2017, race == "Native Hawaiian Or Other Pacific Islander"))))

# combine into one table
stop_race <- rbind(stop_race_2010, stop_race_2011, stop_race_2012, 
            stop_race_2013, stop_race_2014, stop_race_2015,
            stop_race_2016, stop_race_2017)


# break into tables by race
unique(stop_race$race)

stop_black <- subset(stop_race, race == "black")
stop_white <- subset(stop_race, race = "white")
stop_asian <- subset(stop_race, race = "asian")
stop_native <- subset(stop_race, race = "native american")
stop_pacific <- subset(stop_race, race = "pacific islander")

# count NA in district data 
sum(is.na(stop_total$location_district))
unique(stop_total$location_district)

# break down data by district
stop_1 <- subset(stop_total, location_district == "1D")
stop_2 <- subset(stop_total, location_district == "2D")
stop_3 <- subset(stop_total, location_district == "3D")
stop_4 <- subset(stop_total, location_district == "4D")
stop_5 <- subset(stop_total, location_district == "5D")
stop_6 <- subset(stop_total, location_district == "6D")
stop_7 <- subset(stop_total, location_district == "7D")

# count which district is worse with stop and frisks
stop_district <- data.frame(district = c(1, 2, 3, 4, 5, 6, 7),
                            count = c(nrow(stop_1), nrow(stop_2), 
                                      nrow(stop_3), nrow(stop_4), 
                                      nrow(stop_5), nrow(stop_6), 
                                      nrow(stop_7)))

# break down by race and ward
colnames(stop_1)
stop_1 <- subset(stop_1, select = c(year, race, sex, location_district, age))

# subset district 1 by year
stop_1_2010 <- subset(stop_1, year == 2010)
stop_1_2011 <- subset(stop_1, year == 2011)
stop_1_2012 <- subset(stop_1, year == 2012)
stop_1_2013 <- subset(stop_1, year == 2013)
stop_1_2014 <- subset(stop_1, year == 2014)
stop_1_2015 <- subset(stop_1, year == 2015)
stop_1_2016 <- subset(stop_1, year == 2016)
stop_1_2017 <- subset(stop_1, year == 2017)


# Begin work on 2010 ------------------------------------------------------

# subset district 1, 2010 by race
unique(stop_1_2010$race)
stop_1_2010_white <- subset(stop_1_2010, race == "White")
stop_1_2010_black <- subset(stop_1_2010, race == "Black")
stop_1_2010_asian <- subset(stop_1_2010, race == "Asian")

# table counts for district 1, 2010 
stop_1_2010_count <- data.frame(district = c(1, 1, 1),
                                year = c(2010, 2010, 2010),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_1_2010_white),
                                               nrow(stop_1_2010_black),
                                                    nrow(stop_1_2010_asian)))

# district 2
stop_2 <- subset(stop_2, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_2_2010 <- subset(stop_2, year == 2010)

# subset district 2, 2010 by race
unique(stop_2_2010$race)
stop_2_2010_white <- subset(stop_2_2010, race == "White")
stop_2_2010_black <- subset(stop_2_2010, race == "Black")
stop_2_2010_asian <- subset(stop_2_2010, race == "Asian")

# table counts for district 2, 2010
stop_2_2010_count <- data.frame(district = c(2, 2, 2),
                                year = c(2010, 2010, 2010),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_2_2010_white),
                                          nrow(stop_2_2010_black),
                                          nrow(stop_2_2010_asian)))

# district 3
stop_3 <- subset(stop_3, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_3_2010 <- subset(stop_3, year == 2010)

# subset district 2, 2010 by race
unique(stop_3_2010$race)
stop_3_2010_white <- subset(stop_3_2010, race == "White")
stop_3_2010_black <- subset(stop_3_2010, race == "Black")
stop_3_2010_asian <- subset(stop_3_2010, race == "Asian")

# table counts for district 2, 2010
stop_3_2010_count <- data.frame(district = c(3, 3, 3),
                                year = c(2010, 2010, 2010),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_3_2010_white),
                                          nrow(stop_3_2010_black),
                                          nrow(stop_3_2010_asian)))

# district 4
stop_4 <- subset(stop_4, select = c(year, race, sex, location_district, age))

# subset district 4 by year
stop_4_2010 <- subset(stop_4, year == 2010)

# subset district 4, 2010 by race
unique(stop_4_2010$race)
stop_4_2010_white <- subset(stop_4_2010, race == "White")
stop_4_2010_black <- subset(stop_4_2010, race == "Black")
stop_4_2010_asian <- subset(stop_4_2010, race == "Asian")

# table counts for district 4, 2010
stop_4_2010_count <- data.frame(district = c(4, 4, 4),
                                year = c(2010, 2010, 2010),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_4_2010_white),
                                          nrow(stop_4_2010_black),
                                          nrow(stop_4_2010_asian)))

# district 5
stop_5 <- subset(stop_5, select = c(year, race, sex, location_district, age))

# subset district 5 by year
stop_5_2010 <- subset(stop_5, year == 2010)

# subset district 5, 2010 by race
unique(stop_5_2010$race)
stop_5_2010_white <- subset(stop_5_2010, race == "White")
stop_5_2010_black <- subset(stop_5_2010, race == "Black")
stop_5_2010_asian <- subset(stop_5_2010, race == "Asian")

# table counts for district 5, 2010
stop_5_2010_count <- data.frame(district = c(5, 5, 5),
                                year = c(2010, 2010, 2010),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_5_2010_white),
                                          nrow(stop_5_2010_black),
                                          nrow(stop_5_2010_asian)))

# district 6
stop_6 <- subset(stop_6, select = c(year, race, sex, location_district, age))

# subset district 6 by year
stop_6_2010 <- subset(stop_6, year == 2010)

# subset district 6, 2010 by race
unique(stop_6_2010$race)
stop_6_2010_white <- subset(stop_6_2010, race == "White")
stop_6_2010_black <- subset(stop_6_2010, race == "Black")
stop_6_2010_asian <- subset(stop_6_2010, race == "Asian")

# table counts for district 6, 2010
stop_6_2010_count <- data.frame(district = c(6, 6, 6),
                                year = c(2010, 2010, 2010),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_6_2010_white),
                                          nrow(stop_6_2010_black),
                                          nrow(stop_6_2010_asian)))

# district 7
stop_7 <- subset(stop_7, select = c(year, race, sex, location_district, age))

# subset district 7 by year
stop_7_2010 <- subset(stop_7, year == 2010)

# subset district 7, 2010 by race
unique(stop_7_2010$race)
stop_7_2010_white <- subset(stop_7_2010, race == "White")
stop_7_2010_black <- subset(stop_7_2010, race == "Black")
stop_7_2010_asian <- subset(stop_7_2010, race == "Asian")

# table counts for district 7, 2010
stop_7_2010_count <- data.frame(district = c(7, 7, 7),
                                year = c(2010, 2010, 2010),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_7_2010_white),
                                          nrow(stop_7_2010_black),
                                          nrow(stop_7_2010_asian)))

# combine all of the 2010 counts back into one table 
stop_2010_count <- rbind(stop_1_2010_count, stop_2_2010_count, stop_3_2010_count,
                         stop_4_2010_count, stop_5_2010_count, stop_6_2010_count,
                         stop_7_2010_count)


# Repeat for 2011 ---------------------------------------------------------

# subset district 1, 2010 by race
stop_1_2011 <- subset(stop_1, year == 2011)
unique(stop_1_2011$race)
stop_1_2011_white <- subset(stop_1_2011, race == "White")
stop_1_2011_black <- subset(stop_1_2011, race == "Black")
stop_1_2011_asian <- subset(stop_1_2011, race == "Asian")

# table counts for district 1, 2011 
stop_1_2011_count <- data.frame(district = c(1, 1, 1),
                                year = c(2011, 2011, 2011),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_1_2011_white),
                                          nrow(stop_1_2011_black),
                                          nrow(stop_1_2011_asian)))

# district 2
stop_2 <- subset(stop_2, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_2_2011 <- subset(stop_2, year == 2011)

# subset district 2, 2011 by race
unique(stop_2_2011$race)
stop_2_2011_white <- subset(stop_2_2011, race == "White")
stop_2_2011_black <- subset(stop_2_2011, race == "Black")
stop_2_2011_asian <- subset(stop_2_2011, race == "Asian")

# table counts for district 2, 2011
stop_2_2011_count <- data.frame(district = c(2, 2, 2),
                                year = c(2011, 2011, 2011),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_2_2011_white),
                                          nrow(stop_2_2011_black),
                                          nrow(stop_2_2011_asian)))

# district 3
stop_3 <- subset(stop_3, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_3_2011 <- subset(stop_3, year == 2011)

# subset district 2, 2011 by race
unique(stop_3_2011$race)
stop_3_2011_white <- subset(stop_3_2011, race == "White")
stop_3_2011_black <- subset(stop_3_2011, race == "Black")
stop_3_2011_asian <- subset(stop_3_2011, race == "Asian")

# table counts for district 2, 2011
stop_3_2011_count <- data.frame(district = c(3, 3, 3),
                                year = c(2011, 2011, 2011),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_3_2011_white),
                                          nrow(stop_3_2011_black),
                                          nrow(stop_3_2011_asian)))

# district 4
stop_4 <- subset(stop_4, select = c(year, race, sex, location_district, age))

# subset district 4 by year
stop_4_2011 <- subset(stop_4, year == 2011)

# subset district 4, 2011 by race
unique(stop_4_2011$race)
stop_4_2011_white <- subset(stop_4_2011, race == "White")
stop_4_2011_black <- subset(stop_4_2011, race == "Black")
stop_4_2011_asian <- subset(stop_4_2011, race == "Asian")

# table counts for district 4, 2011
stop_4_2011_count <- data.frame(district = c(4, 4, 4),
                                year = c(2011, 2011, 2011),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_4_2011_white),
                                          nrow(stop_4_2011_black),
                                          nrow(stop_4_2011_asian)))

# district 5
stop_5 <- subset(stop_5, select = c(year, race, sex, location_district, age))

# subset district 5 by year
stop_5_2011 <- subset(stop_5, year == 2011)

# subset district 5, 2011 by race
unique(stop_5_2011$race)
stop_5_2011_white <- subset(stop_5_2011, race == "White")
stop_5_2011_black <- subset(stop_5_2011, race == "Black")
stop_5_2011_asian <- subset(stop_5_2011, race == "Asian")

# table counts for district 5, 2011
stop_5_2011_count <- data.frame(district = c(5, 5, 5),
                                year = c(2011, 2011, 2011),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_5_2011_white),
                                          nrow(stop_5_2011_black),
                                          nrow(stop_5_2011_asian)))

# district 6
stop_6 <- subset(stop_6, select = c(year, race, sex, location_district, age))

# subset district 6 by year
stop_6_2011 <- subset(stop_6, year == 2011)

# subset district 6, 2011 by race
unique(stop_6_2011$race)
stop_6_2011_white <- subset(stop_6_2011, race == "White")
stop_6_2011_black <- subset(stop_6_2011, race == "Black")
stop_6_2011_asian <- subset(stop_6_2011, race == "Asian")

# table counts for district 6, 2011
stop_6_2011_count <- data.frame(district = c(6, 6, 6),
                                year = c(2011, 2011, 2011),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_6_2011_white),
                                          nrow(stop_6_2011_black),
                                          nrow(stop_6_2011_asian)))

# district 7
stop_7 <- subset(stop_7, select = c(year, race, sex, location_district, age))

# subset district 7 by year
stop_7_2011 <- subset(stop_7, year == 2011)

# subset district 7, 2011 by race
unique(stop_7_2011$race)
stop_7_2011_white <- subset(stop_7_2011, race == "White")
stop_7_2011_black <- subset(stop_7_2011, race == "Black")
stop_7_2011_asian <- subset(stop_7_2011, race == "Asian")

# table counts for district 7, 2011
stop_7_2011_count <- data.frame(district = c(7, 7, 7),
                                year = c(2011, 2011, 2011),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_7_2011_white),
                                          nrow(stop_7_2011_black),
                                          nrow(stop_7_2011_asian)))

# combine all of the 2011 counts back into one table 
stop_2011_count <- rbind(stop_1_2011_count, stop_2_2011_count, stop_3_2011_count,
                         stop_4_2011_count, stop_5_2011_count, stop_6_2011_count,
                         stop_7_2011_count)

# Repeat for 2012 ---------------------------------------------------------

# subset district 1, 2010 by race
stop_1_2012 <- subset(stop_1, year == 2012)
unique(stop_1_2012$race)
stop_1_2012_white <- subset(stop_1_2012, race == "White")
stop_1_2012_black <- subset(stop_1_2012, race == "Black")
stop_1_2012_asian <- subset(stop_1_2012, race == "Asian")

# table counts for district 1, 2012 
stop_1_2012_count <- data.frame(district = c(1, 1, 1),
                                year = c(2012, 2012, 2012),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_1_2012_white),
                                          nrow(stop_1_2012_black),
                                          nrow(stop_1_2012_asian)))

# district 2
stop_2 <- subset(stop_2, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_2_2012 <- subset(stop_2, year == 2012)

# subset district 2, 2012 by race
unique(stop_2_2012$race)
stop_2_2012_white <- subset(stop_2_2012, race == "White")
stop_2_2012_black <- subset(stop_2_2012, race == "Black")
stop_2_2012_asian <- subset(stop_2_2012, race == "Asian")

# table counts for district 2, 2012
stop_2_2012_count <- data.frame(district = c(2, 2, 2),
                                year = c(2012, 2012, 2012),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_2_2012_white),
                                          nrow(stop_2_2012_black),
                                          nrow(stop_2_2012_asian)))

# district 3
stop_3 <- subset(stop_3, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_3_2012 <- subset(stop_3, year == 2012)

# subset district 2, 2012 by race
unique(stop_3_2012$race)
stop_3_2012_white <- subset(stop_3_2012, race == "White")
stop_3_2012_black <- subset(stop_3_2012, race == "Black")
stop_3_2012_asian <- subset(stop_3_2012, race == "Asian")

# table counts for district 2, 2012
stop_3_2012_count <- data.frame(district = c(3, 3, 3),
                                year = c(2012, 2012, 2012),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_3_2012_white),
                                          nrow(stop_3_2012_black),
                                          nrow(stop_3_2012_asian)))

# district 4
stop_4 <- subset(stop_4, select = c(year, race, sex, location_district, age))

# subset district 4 by year
stop_4_2012 <- subset(stop_4, year == 2012)

# subset district 4, 2012 by race
unique(stop_4_2012$race)
stop_4_2012_white <- subset(stop_4_2012, race == "White")
stop_4_2012_black <- subset(stop_4_2012, race == "Black")
stop_4_2012_asian <- subset(stop_4_2012, race == "Asian")

# table counts for district 4, 2012
stop_4_2012_count <- data.frame(district = c(4, 4, 4),
                                year = c(2012, 2012, 2012),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_4_2012_white),
                                          nrow(stop_4_2012_black),
                                          nrow(stop_4_2012_asian)))

# district 5
stop_5 <- subset(stop_5, select = c(year, race, sex, location_district, age))

# subset district 5 by year
stop_5_2012 <- subset(stop_5, year == 2012)

# subset district 5, 2012 by race
unique(stop_5_2012$race)
stop_5_2012_white <- subset(stop_5_2012, race == "White")
stop_5_2012_black <- subset(stop_5_2012, race == "Black")
stop_5_2012_asian <- subset(stop_5_2012, race == "Asian")

# table counts for district 5, 2012
stop_5_2012_count <- data.frame(district = c(5, 5, 5),
                                year = c(2012, 2012, 2012),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_5_2012_white),
                                          nrow(stop_5_2012_black),
                                          nrow(stop_5_2012_asian)))

# district 6
stop_6 <- subset(stop_6, select = c(year, race, sex, location_district, age))

# subset district 6 by year
stop_6_2012 <- subset(stop_6, year == 2012)

# subset district 6, 2012 by race
unique(stop_6_2012$race)
stop_6_2012_white <- subset(stop_6_2012, race == "White")
stop_6_2012_black <- subset(stop_6_2012, race == "Black")
stop_6_2012_asian <- subset(stop_6_2012, race == "Asian")

# table counts for district 6, 2012
stop_6_2012_count <- data.frame(district = c(6, 6, 6),
                                year = c(2012, 2012, 2012),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_6_2012_white),
                                          nrow(stop_6_2012_black),
                                          nrow(stop_6_2012_asian)))

# district 7
stop_7 <- subset(stop_7, select = c(year, race, sex, location_district, age))

# subset district 7 by year
stop_7_2012 <- subset(stop_7, year == 2012)

# subset district 7, 2012 by race
unique(stop_7_2012$race)
stop_7_2012_white <- subset(stop_7_2012, race == "White")
stop_7_2012_black <- subset(stop_7_2012, race == "Black")
stop_7_2012_asian <- subset(stop_7_2012, race == "Asian")

# table counts for district 7, 2012
stop_7_2012_count <- data.frame(district = c(7, 7, 7),
                                year = c(2012, 2012, 2012),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_7_2012_white),
                                          nrow(stop_7_2012_black),
                                          nrow(stop_7_2012_asian)))

# combine all of the 2012 counts back into one table 
stop_2012_count <- rbind(stop_1_2012_count, stop_2_2012_count, stop_3_2012_count,
                         stop_4_2012_count, stop_5_2012_count, stop_6_2012_count,
                         stop_7_2012_count)

# Repeat for 2013 ---------------------------------------------------------

# subset district 1, 2010 by race
stop_1_2013 <- subset(stop_1, year == 2013)
unique(stop_1_2013$race)
stop_1_2013_white <- subset(stop_1_2013, race == "White")
stop_1_2013_black <- subset(stop_1_2013, race == "Black")
stop_1_2013_asian <- subset(stop_1_2013, race == "Asian")

# table counts for district 1, 2013 
stop_1_2013_count <- data.frame(district = c(1, 1, 1),
                                year = c(2013, 2013, 2013),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_1_2013_white),
                                          nrow(stop_1_2013_black),
                                          nrow(stop_1_2013_asian)))

# district 2
stop_2 <- subset(stop_2, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_2_2013 <- subset(stop_2, year == 2013)

# subset district 2, 2013 by race
unique(stop_2_2013$race)
stop_2_2013_white <- subset(stop_2_2013, race == "White")
stop_2_2013_black <- subset(stop_2_2013, race == "Black")
stop_2_2013_asian <- subset(stop_2_2013, race == "Asian")

# table counts for district 2, 2013
stop_2_2013_count <- data.frame(district = c(2, 2, 2),
                                year = c(2013, 2013, 2013),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_2_2013_white),
                                          nrow(stop_2_2013_black),
                                          nrow(stop_2_2013_asian)))

# district 3
stop_3 <- subset(stop_3, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_3_2013 <- subset(stop_3, year == 2013)

# subset district 2, 2013 by race
unique(stop_3_2013$race)
stop_3_2013_white <- subset(stop_3_2013, race == "White")
stop_3_2013_black <- subset(stop_3_2013, race == "Black")
stop_3_2013_asian <- subset(stop_3_2013, race == "Asian")

# table counts for district 2, 2013
stop_3_2013_count <- data.frame(district = c(3, 3, 3),
                                year = c(2013, 2013, 2013),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_3_2013_white),
                                          nrow(stop_3_2013_black),
                                          nrow(stop_3_2013_asian)))

# district 4
stop_4 <- subset(stop_4, select = c(year, race, sex, location_district, age))

# subset district 4 by year
stop_4_2013 <- subset(stop_4, year == 2013)

# subset district 4, 2013 by race
unique(stop_4_2013$race)
stop_4_2013_white <- subset(stop_4_2013, race == "White")
stop_4_2013_black <- subset(stop_4_2013, race == "Black")
stop_4_2013_asian <- subset(stop_4_2013, race == "Asian")

# table counts for district 4, 2013
stop_4_2013_count <- data.frame(district = c(4, 4, 4),
                                year = c(2013, 2013, 2013),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_4_2013_white),
                                          nrow(stop_4_2013_black),
                                          nrow(stop_4_2013_asian)))

# district 5
stop_5 <- subset(stop_5, select = c(year, race, sex, location_district, age))

# subset district 5 by year
stop_5_2013 <- subset(stop_5, year == 2013)

# subset district 5, 2013 by race
unique(stop_5_2013$race)
stop_5_2013_white <- subset(stop_5_2013, race == "White")
stop_5_2013_black <- subset(stop_5_2013, race == "Black")
stop_5_2013_asian <- subset(stop_5_2013, race == "Asian")

# table counts for district 5, 2013
stop_5_2013_count <- data.frame(district = c(5, 5, 5),
                                year = c(2013, 2013, 2013),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_5_2013_white),
                                          nrow(stop_5_2013_black),
                                          nrow(stop_5_2013_asian)))

# district 6
stop_6 <- subset(stop_6, select = c(year, race, sex, location_district, age))

# subset district 6 by year
stop_6_2013 <- subset(stop_6, year == 2013)

# subset district 6, 2013 by race
unique(stop_6_2013$race)
stop_6_2013_white <- subset(stop_6_2013, race == "White")
stop_6_2013_black <- subset(stop_6_2013, race == "Black")
stop_6_2013_asian <- subset(stop_6_2013, race == "Asian")

# table counts for district 6, 2013
stop_6_2013_count <- data.frame(district = c(6, 6, 6),
                                year = c(2013, 2013, 2013),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_6_2013_white),
                                          nrow(stop_6_2013_black),
                                          nrow(stop_6_2013_asian)))

# district 7
stop_7 <- subset(stop_7, select = c(year, race, sex, location_district, age))

# subset district 7 by year
stop_7_2013 <- subset(stop_7, year == 2013)

# subset district 7, 2013 by race
unique(stop_7_2013$race)
stop_7_2013_white <- subset(stop_7_2013, race == "White")
stop_7_2013_black <- subset(stop_7_2013, race == "Black")
stop_7_2013_asian <- subset(stop_7_2013, race == "Asian")

# table counts for district 7, 2013
stop_7_2013_count <- data.frame(district = c(7, 7, 7),
                                year = c(2013, 2013, 2013),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_7_2013_white),
                                          nrow(stop_7_2013_black),
                                          nrow(stop_7_2013_asian)))

# combine all of the 2013 counts back into one table 
stop_2013_count <- rbind(stop_1_2013_count, stop_2_2013_count, stop_3_2013_count,
                         stop_4_2013_count, stop_5_2013_count, stop_6_2013_count,
                         stop_7_2013_count)

# Repeat for 2014 ---------------------------------------------------------

# subset district 1, 2010 by race
stop_1_2014 <- subset(stop_1, year == 2014)
unique(stop_1_2014$race)
stop_1_2014_white <- subset(stop_1_2014, race == "White")
stop_1_2014_black <- subset(stop_1_2014, race == "Black")
stop_1_2014_asian <- subset(stop_1_2014, race == "Asian")

# table counts for district 1, 2014 
stop_1_2014_count <- data.frame(district = c(1, 1, 1),
                                year = c(2014, 2014, 2014),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_1_2014_white),
                                          nrow(stop_1_2014_black),
                                          nrow(stop_1_2014_asian)))

# district 2
stop_2 <- subset(stop_2, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_2_2014 <- subset(stop_2, year == 2014)

# subset district 2, 2014 by race
unique(stop_2_2014$race)
stop_2_2014_white <- subset(stop_2_2014, race == "White")
stop_2_2014_black <- subset(stop_2_2014, race == "Black")
stop_2_2014_asian <- subset(stop_2_2014, race == "Asian")

# table counts for district 2, 2014
stop_2_2014_count <- data.frame(district = c(2, 2, 2),
                                year = c(2014, 2014, 2014),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_2_2014_white),
                                          nrow(stop_2_2014_black),
                                          nrow(stop_2_2014_asian)))

# district 3
stop_3 <- subset(stop_3, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_3_2014 <- subset(stop_3, year == 2014)

# subset district 2, 2014 by race
unique(stop_3_2014$race)
stop_3_2014_white <- subset(stop_3_2014, race == "White")
stop_3_2014_black <- subset(stop_3_2014, race == "Black")
stop_3_2014_asian <- subset(stop_3_2014, race == "Asian")

# table counts for district 2, 2014
stop_3_2014_count <- data.frame(district = c(3, 3, 3),
                                year = c(2014, 2014, 2014),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_3_2014_white),
                                          nrow(stop_3_2014_black),
                                          nrow(stop_3_2014_asian)))

# district 4
stop_4 <- subset(stop_4, select = c(year, race, sex, location_district, age))

# subset district 4 by year
stop_4_2014 <- subset(stop_4, year == 2014)

# subset district 4, 2014 by race
unique(stop_4_2014$race)
stop_4_2014_white <- subset(stop_4_2014, race == "White")
stop_4_2014_black <- subset(stop_4_2014, race == "Black")
stop_4_2014_asian <- subset(stop_4_2014, race == "Asian")

# table counts for district 4, 2014
stop_4_2014_count <- data.frame(district = c(4, 4, 4),
                                year = c(2014, 2014, 2014),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_4_2014_white),
                                          nrow(stop_4_2014_black),
                                          nrow(stop_4_2014_asian)))

# district 5
stop_5 <- subset(stop_5, select = c(year, race, sex, location_district, age))

# subset district 5 by year
stop_5_2014 <- subset(stop_5, year == 2014)

# subset district 5, 2014 by race
unique(stop_5_2014$race)
stop_5_2014_white <- subset(stop_5_2014, race == "White")
stop_5_2014_black <- subset(stop_5_2014, race == "Black")
stop_5_2014_asian <- subset(stop_5_2014, race == "Asian")

# table counts for district 5, 2014
stop_5_2014_count <- data.frame(district = c(5, 5, 5),
                                year = c(2014, 2014, 2014),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_5_2014_white),
                                          nrow(stop_5_2014_black),
                                          nrow(stop_5_2014_asian)))

# district 6
stop_6 <- subset(stop_6, select = c(year, race, sex, location_district, age))

# subset district 6 by year
stop_6_2014 <- subset(stop_6, year == 2014)

# subset district 6, 2014 by race
unique(stop_6_2014$race)
stop_6_2014_white <- subset(stop_6_2014, race == "White")
stop_6_2014_black <- subset(stop_6_2014, race == "Black")
stop_6_2014_asian <- subset(stop_6_2014, race == "Asian")

# table counts for district 6, 2014
stop_6_2014_count <- data.frame(district = c(6, 6, 6),
                                year = c(2014, 2014, 2014),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_6_2014_white),
                                          nrow(stop_6_2014_black),
                                          nrow(stop_6_2014_asian)))

# district 7
stop_7 <- subset(stop_7, select = c(year, race, sex, location_district, age))

# subset district 7 by year
stop_7_2014 <- subset(stop_7, year == 2014)

# subset district 7, 2014 by race
unique(stop_7_2014$race)
stop_7_2014_white <- subset(stop_7_2014, race == "White")
stop_7_2014_black <- subset(stop_7_2014, race == "Black")
stop_7_2014_asian <- subset(stop_7_2014, race == "Asian")

# table counts for district 7, 2014
stop_7_2014_count <- data.frame(district = c(7, 7, 7),
                                year = c(2014, 2014, 2014),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_7_2014_white),
                                          nrow(stop_7_2014_black),
                                          nrow(stop_7_2014_asian)))

# combine all of the 2014 counts back into one table 
stop_2014_count <- rbind(stop_1_2014_count, stop_2_2014_count, stop_3_2014_count,
                         stop_4_2014_count, stop_5_2014_count, stop_6_2014_count,
                         stop_7_2014_count)

# Repeat for 2015 ---------------------------------------------------------

# subset district 1, 2010 by race
stop_1_2015 <- subset(stop_1, year == 2015)
unique(stop_1_2015$race)
stop_1_2015_white <- subset(stop_1_2015, race == "White")
stop_1_2015_black <- subset(stop_1_2015, race == "Black")
stop_1_2015_asian <- subset(stop_1_2015, race == "Asian")

# table counts for district 1, 2015 
stop_1_2015_count <- data.frame(district = c(1, 1, 1),
                                year = c(2015, 2015, 2015),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_1_2015_white),
                                          nrow(stop_1_2015_black),
                                          nrow(stop_1_2015_asian)))

# district 2
stop_2 <- subset(stop_2, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_2_2015 <- subset(stop_2, year == 2015)

# subset district 2, 2015 by race
unique(stop_2_2015$race)
stop_2_2015_white <- subset(stop_2_2015, race == "White")
stop_2_2015_black <- subset(stop_2_2015, race == "Black")
stop_2_2015_asian <- subset(stop_2_2015, race == "Asian")

# table counts for district 2, 2015
stop_2_2015_count <- data.frame(district = c(2, 2, 2),
                                year = c(2015, 2015, 2015),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_2_2015_white),
                                          nrow(stop_2_2015_black),
                                          nrow(stop_2_2015_asian)))

# district 3
stop_3 <- subset(stop_3, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_3_2015 <- subset(stop_3, year == 2015)

# subset district 2, 2015 by race
unique(stop_3_2015$race)
stop_3_2015_white <- subset(stop_3_2015, race == "White")
stop_3_2015_black <- subset(stop_3_2015, race == "Black")
stop_3_2015_asian <- subset(stop_3_2015, race == "Asian")

# table counts for district 2, 2015
stop_3_2015_count <- data.frame(district = c(3, 3, 3),
                                year = c(2015, 2015, 2015),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_3_2015_white),
                                          nrow(stop_3_2015_black),
                                          nrow(stop_3_2015_asian)))

# district 4
stop_4 <- subset(stop_4, select = c(year, race, sex, location_district, age))

# subset district 4 by year
stop_4_2015 <- subset(stop_4, year == 2015)

# subset district 4, 2015 by race
unique(stop_4_2015$race)
stop_4_2015_white <- subset(stop_4_2015, race == "White")
stop_4_2015_black <- subset(stop_4_2015, race == "Black")
stop_4_2015_asian <- subset(stop_4_2015, race == "Asian")

# table counts for district 4, 2015
stop_4_2015_count <- data.frame(district = c(4, 4, 4),
                                year = c(2015, 2015, 2015),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_4_2015_white),
                                          nrow(stop_4_2015_black),
                                          nrow(stop_4_2015_asian)))

# district 5
stop_5 <- subset(stop_5, select = c(year, race, sex, location_district, age))

# subset district 5 by year
stop_5_2015 <- subset(stop_5, year == 2015)

# subset district 5, 2015 by race
unique(stop_5_2015$race)
stop_5_2015_white <- subset(stop_5_2015, race == "White")
stop_5_2015_black <- subset(stop_5_2015, race == "Black")
stop_5_2015_asian <- subset(stop_5_2015, race == "Asian")

# table counts for district 5, 2015
stop_5_2015_count <- data.frame(district = c(5, 5, 5),
                                year = c(2015, 2015, 2015),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_5_2015_white),
                                          nrow(stop_5_2015_black),
                                          nrow(stop_5_2015_asian)))

# district 6
stop_6 <- subset(stop_6, select = c(year, race, sex, location_district, age))

# subset district 6 by year
stop_6_2015 <- subset(stop_6, year == 2015)

# subset district 6, 2015 by race
unique(stop_6_2015$race)
stop_6_2015_white <- subset(stop_6_2015, race == "White")
stop_6_2015_black <- subset(stop_6_2015, race == "Black")
stop_6_2015_asian <- subset(stop_6_2015, race == "Asian")

# table counts for district 6, 2015
stop_6_2015_count <- data.frame(district = c(6, 6, 6),
                                year = c(2015, 2015, 2015),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_6_2015_white),
                                          nrow(stop_6_2015_black),
                                          nrow(stop_6_2015_asian)))

# district 7
stop_7 <- subset(stop_7, select = c(year, race, sex, location_district, age))

# subset district 7 by year
stop_7_2015 <- subset(stop_7, year == 2015)

# subset district 7, 2015 by race
unique(stop_7_2015$race)
stop_7_2015_white <- subset(stop_7_2015, race == "White")
stop_7_2015_black <- subset(stop_7_2015, race == "Black")
stop_7_2015_asian <- subset(stop_7_2015, race == "Asian")

# table counts for district 7, 2015
stop_7_2015_count <- data.frame(district = c(7, 7, 7),
                                year = c(2015, 2015, 2015),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_7_2015_white),
                                          nrow(stop_7_2015_black),
                                          nrow(stop_7_2015_asian)))

# combine all of the 2015 counts back into one table 
stop_2015_count <- rbind(stop_1_2015_count, stop_2_2015_count, stop_3_2015_count,
                         stop_4_2015_count, stop_5_2015_count, stop_6_2015_count,
                         stop_7_2015_count)

# Repeat for 2016 ---------------------------------------------------------

# subset district 1, 2010 by race
stop_1_2016 <- subset(stop_1, year == 2016)
unique(stop_1_2016$race)
stop_1_2016_white <- subset(stop_1_2016, race == "White")
stop_1_2016_black <- subset(stop_1_2016, race == "Black")
stop_1_2016_asian <- subset(stop_1_2016, race == "Asian")

# table counts for district 1, 2016 
stop_1_2016_count <- data.frame(district = c(1, 1, 1),
                                year = c(2016, 2016, 2016),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_1_2016_white),
                                          nrow(stop_1_2016_black),
                                          nrow(stop_1_2016_asian)))

# district 2
stop_2 <- subset(stop_2, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_2_2016 <- subset(stop_2, year == 2016)

# subset district 2, 2016 by race
unique(stop_2_2016$race)
stop_2_2016_white <- subset(stop_2_2016, race == "White")
stop_2_2016_black <- subset(stop_2_2016, race == "Black")
stop_2_2016_asian <- subset(stop_2_2016, race == "Asian")

# table counts for district 2, 2016
stop_2_2016_count <- data.frame(district = c(2, 2, 2),
                                year = c(2016, 2016, 2016),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_2_2016_white),
                                          nrow(stop_2_2016_black),
                                          nrow(stop_2_2016_asian)))

# district 3
stop_3 <- subset(stop_3, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_3_2016 <- subset(stop_3, year == 2016)

# subset district 2, 2016 by race
unique(stop_3_2016$race)
stop_3_2016_white <- subset(stop_3_2016, race == "White")
stop_3_2016_black <- subset(stop_3_2016, race == "Black")
stop_3_2016_asian <- subset(stop_3_2016, race == "Asian")

# table counts for district 2, 2016
stop_3_2016_count <- data.frame(district = c(3, 3, 3),
                                year = c(2016, 2016, 2016),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_3_2016_white),
                                          nrow(stop_3_2016_black),
                                          nrow(stop_3_2016_asian)))

# district 4
stop_4 <- subset(stop_4, select = c(year, race, sex, location_district, age))

# subset district 4 by year
stop_4_2016 <- subset(stop_4, year == 2016)

# subset district 4, 2016 by race
unique(stop_4_2016$race)
stop_4_2016_white <- subset(stop_4_2016, race == "White")
stop_4_2016_black <- subset(stop_4_2016, race == "Black")
stop_4_2016_asian <- subset(stop_4_2016, race == "Asian")

# table counts for district 4, 2016
stop_4_2016_count <- data.frame(district = c(4, 4, 4),
                                year = c(2016, 2016, 2016),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_4_2016_white),
                                          nrow(stop_4_2016_black),
                                          nrow(stop_4_2016_asian)))

# district 5
stop_5 <- subset(stop_5, select = c(year, race, sex, location_district, age))

# subset district 5 by year
stop_5_2016 <- subset(stop_5, year == 2016)

# subset district 5, 2016 by race
unique(stop_5_2016$race)
stop_5_2016_white <- subset(stop_5_2016, race == "White")
stop_5_2016_black <- subset(stop_5_2016, race == "Black")
stop_5_2016_asian <- subset(stop_5_2016, race == "Asian")

# table counts for district 5, 2016
stop_5_2016_count <- data.frame(district = c(5, 5, 5),
                                year = c(2016, 2016, 2016),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_5_2016_white),
                                          nrow(stop_5_2016_black),
                                          nrow(stop_5_2016_asian)))

# district 6
stop_6 <- subset(stop_6, select = c(year, race, sex, location_district, age))

# subset district 6 by year
stop_6_2016 <- subset(stop_6, year == 2016)

# subset district 6, 2016 by race
unique(stop_6_2016$race)
stop_6_2016_white <- subset(stop_6_2016, race == "White")
stop_6_2016_black <- subset(stop_6_2016, race == "Black")
stop_6_2016_asian <- subset(stop_6_2016, race == "Asian")

# table counts for district 6, 2016
stop_6_2016_count <- data.frame(district = c(6, 6, 6),
                                year = c(2016, 2016, 2016),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_6_2016_white),
                                          nrow(stop_6_2016_black),
                                          nrow(stop_6_2016_asian)))

# district 7
stop_7 <- subset(stop_7, select = c(year, race, sex, location_district, age))

# subset district 7 by year
stop_7_2016 <- subset(stop_7, year == 2016)

# subset district 7, 2016 by race
unique(stop_7_2016$race)
stop_7_2016_white <- subset(stop_7_2016, race == "White")
stop_7_2016_black <- subset(stop_7_2016, race == "Black")
stop_7_2016_asian <- subset(stop_7_2016, race == "Asian")

# table counts for district 7, 2016
stop_7_2016_count <- data.frame(district = c(7, 7, 7),
                                year = c(2016, 2016, 2016),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_7_2016_white),
                                          nrow(stop_7_2016_black),
                                          nrow(stop_7_2016_asian)))

# combine all of the 2016 counts back into one table 
stop_2016_count <- rbind(stop_1_2016_count, stop_2_2016_count, stop_3_2016_count,
                         stop_4_2016_count, stop_5_2016_count, stop_6_2016_count,
                         stop_7_2016_count)

# Repeat for 2017 ---------------------------------------------------------

# subset district 1, 2010 by race
stop_1_2017 <- subset(stop_1, year == 2017)
unique(stop_1_2017$race)
stop_1_2017_white <- subset(stop_1_2017, race == "White")
stop_1_2017_black <- subset(stop_1_2017, race == "Black")
stop_1_2017_asian <- subset(stop_1_2017, race == "Asian")

# table counts for district 1, 2017 
stop_1_2017_count <- data.frame(district = c(1, 1, 1),
                                year = c(2017, 2017, 2017),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_1_2017_white),
                                          nrow(stop_1_2017_black),
                                          nrow(stop_1_2017_asian)))

# district 2
stop_2 <- subset(stop_2, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_2_2017 <- subset(stop_2, year == 2017)

# subset district 2, 2017 by race
unique(stop_2_2017$race)
stop_2_2017_white <- subset(stop_2_2017, race == "White")
stop_2_2017_black <- subset(stop_2_2017, race == "Black")
stop_2_2017_asian <- subset(stop_2_2017, race == "Asian")

# table counts for district 2, 2017
stop_2_2017_count <- data.frame(district = c(2, 2, 2),
                                year = c(2017, 2017, 2017),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_2_2017_white),
                                          nrow(stop_2_2017_black),
                                          nrow(stop_2_2017_asian)))

# district 3
stop_3 <- subset(stop_3, select = c(year, race, sex, location_district, age))

# subset district 2 by year
stop_3_2017 <- subset(stop_3, year == 2017)

# subset district 2, 2017 by race
unique(stop_3_2017$race)
stop_3_2017_white <- subset(stop_3_2017, race == "White")
stop_3_2017_black <- subset(stop_3_2017, race == "Black")
stop_3_2017_asian <- subset(stop_3_2017, race == "Asian")

# table counts for district 2, 2017
stop_3_2017_count <- data.frame(district = c(3, 3, 3),
                                year = c(2017, 2017, 2017),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_3_2017_white),
                                          nrow(stop_3_2017_black),
                                          nrow(stop_3_2017_asian)))

# district 4
stop_4 <- subset(stop_4, select = c(year, race, sex, location_district, age))

# subset district 4 by year
stop_4_2017 <- subset(stop_4, year == 2017)

# subset district 4, 2017 by race
unique(stop_4_2017$race)
stop_4_2017_white <- subset(stop_4_2017, race == "White")
stop_4_2017_black <- subset(stop_4_2017, race == "Black")
stop_4_2017_asian <- subset(stop_4_2017, race == "Asian")

# table counts for district 4, 2017
stop_4_2017_count <- data.frame(district = c(4, 4, 4),
                                year = c(2017, 2017, 2017),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_4_2017_white),
                                          nrow(stop_4_2017_black),
                                          nrow(stop_4_2017_asian)))

# district 5
stop_5 <- subset(stop_5, select = c(year, race, sex, location_district, age))

# subset district 5 by year
stop_5_2017 <- subset(stop_5, year == 2017)

# subset district 5, 2017 by race
unique(stop_5_2017$race)
stop_5_2017_white <- subset(stop_5_2017, race == "White")
stop_5_2017_black <- subset(stop_5_2017, race == "Black")
stop_5_2017_asian <- subset(stop_5_2017, race == "Asian")

# table counts for district 5, 2017
stop_5_2017_count <- data.frame(district = c(5, 5, 5),
                                year = c(2017, 2017, 2017),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_5_2017_white),
                                          nrow(stop_5_2017_black),
                                          nrow(stop_5_2017_asian)))

# district 6
stop_6 <- subset(stop_6, select = c(year, race, sex, location_district, age))

# subset district 6 by year
stop_6_2017 <- subset(stop_6, year == 2017)

# subset district 6, 2017 by race
unique(stop_6_2017$race)
stop_6_2017_white <- subset(stop_6_2017, race == "White")
stop_6_2017_black <- subset(stop_6_2017, race == "Black")
stop_6_2017_asian <- subset(stop_6_2017, race == "Asian")

# table counts for district 6, 2017
stop_6_2017_count <- data.frame(district = c(6, 6, 6),
                                year = c(2017, 2017, 2017),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_6_2017_white),
                                          nrow(stop_6_2017_black),
                                          nrow(stop_6_2017_asian)))

# district 7
stop_7 <- subset(stop_7, select = c(year, race, sex, location_district, age))

# subset district 7 by year
stop_7_2017 <- subset(stop_7, year == 2017)

# subset district 7, 2017 by race
unique(stop_7_2017$race)
stop_7_2017_white <- subset(stop_7_2017, race == "White")
stop_7_2017_black <- subset(stop_7_2017, race == "Black")
stop_7_2017_asian <- subset(stop_7_2017, race == "Asian")

# table counts for district 7, 2017
stop_7_2017_count <- data.frame(district = c(7, 7, 7),
                                year = c(2017, 2017, 2017),
                                race = c("white", "black", "asian"),
                                count = c(nrow(stop_7_2017_white),
                                          nrow(stop_7_2017_black),
                                          nrow(stop_7_2017_asian)))

# combine all of the 2017 counts back into one table 
stop_2017_count <- rbind(stop_1_2017_count, stop_2_2017_count, stop_3_2017_count,
                         stop_4_2017_count, stop_5_2017_count, stop_6_2017_count,
                         stop_7_2017_count)


# Make into one data frame ------------------------------------------------
stop_district_count <- rbind(stop_2010_count, stop_2011_count, stop_2012_count, 
                             stop_2013_count, stop_2014_count, stop_2015_count,
                             stop_2016_count, stop_2017_count)
