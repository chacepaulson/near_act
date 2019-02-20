# load packages
library(dplyr)
library(tidyr)

# recode district data 
colnames(shot_spotter)
unique(shot_spotter$source)
shot_spotter$source[shot_spotter$source == "WashingtonDC1D"] <- 1
shot_spotter$source[shot_spotter$source == "WashingtonDC2D"] <- 2
shot_spotter$source[shot_spotter$source == "WashingtonDC3D"] <- 3
shot_spotter$source[shot_spotter$source == "WashingtonDC4D"] <- 4
shot_spotter$source[shot_spotter$source == "WashingtonDC5D"] <- 5
shot_spotter$source[shot_spotter$source == "WashingtonDC6D"] <- 6
shot_spotter$source[shot_spotter$source == "WashingtonDC7D"] <- 7

# check that all are correct 
unique(shot_spotter$source)

# check column names and variables
head(shot_spotter)
colnames(shot_spotter)

# separate date variable along year, month, and day 
shot_spotter$date2 <- shot_spotter$date
shot_spotter <- shot_spotter %>% 
  separate(date2, 
           c("year", "month", "day"))

# find which years are represented 
unique(shot_spotter$year)

# subset data by year
shot2014 <- subset(shot_spotter, year == 2014)
shot2015 <- subset(shot_spotter, year == 2015)
shot2016 <- subset(shot_spotter, year == 2016)
shot2017 <- subset(shot_spotter, year == 2017)
shot2018 <- subset(shot_spotter, year == 2018)

# count by year 
shot_year_count <- data.frame(year = c(2014, 2015, 2016, 2017, 2018), 
                              count = c(nrow(shot2014),
                                        nrow(shot2015),
                                        nrow(shot2016),
                                        nrow(shot2017),
                                        nrow(shot2018)))

shot_year_count

# count by district 
shot1 <- subset(shot_spotter, source == 1)
shot2 <- subset(shot_spotter, source == 2)
shot3 <- subset(shot_spotter, source == 3)
shot4 <- subset(shot_spotter, source == 4)
shot5 <- subset(shot_spotter, source == 5)
shot6 <- subset(shot_spotter, source == 6)
shot7 <- subset(shot_spotter, source == 7)

# count by year 
shot_district_count <- data.frame(year = c(1, 2, 3, 4, 5, 6, 7), 
                              count = c(nrow(shot1),
                                        nrow(shot2),
                                        nrow(shot3),
                                        nrow(shot4),
                                        nrow(shot5), 
                                        nrow(shot6), 
                                        nrow(shot7)))

shot_district_count

# break down by district and year 
shot2014_1 <- subset(shot2014, source == 1)
shot2014_2 <- subset(shot2014, source == 2)
shot2014_3 <- subset(shot2014, source == 3)
shot2014_4 <- subset(shot2014, source == 4)
shot2014_5 <- subset(shot2014, source == 5)
shot2014_6 <- subset(shot2014, source == 6)
shot2014_7 <- subset(shot2014, source == 7)

shot2015_1 <- subset(shot2015, source == 1)
shot2015_2 <- subset(shot2015, source == 2)
shot2015_3 <- subset(shot2015, source == 3)
shot2015_4 <- subset(shot2015, source == 4)
shot2015_5 <- subset(shot2015, source == 5)
shot2015_6 <- subset(shot2015, source == 6)
shot2015_7 <- subset(shot2015, source == 7)

shot2016_1 <- subset(shot2016, source == 1)
shot2016_2 <- subset(shot2016, source == 2)
shot2016_3 <- subset(shot2016, source == 3)
shot2016_4 <- subset(shot2016, source == 4)
shot2016_5 <- subset(shot2016, source == 5)
shot2016_6 <- subset(shot2016, source == 6)
shot2016_7 <- subset(shot2016, source == 7)

shot2017_1 <- subset(shot2017, source == 1)
shot2017_2 <- subset(shot2017, source == 2)
shot2017_3 <- subset(shot2017, source == 3)
shot2017_4 <- subset(shot2017, source == 4)
shot2017_5 <- subset(shot2017, source == 5)
shot2017_6 <- subset(shot2017, source == 6)
shot2017_7 <- subset(shot2017, source == 7)

shot2018_1 <- subset(shot2018, source == 1)
shot2018_2 <- subset(shot2018, source == 2)
shot2018_3 <- subset(shot2018, source == 3)
shot2018_4 <- subset(shot2018, source == 4)
shot2018_5 <- subset(shot2018, source == 5)
shot2018_6 <- subset(shot2018, source == 6)
shot2018_7 <- subset(shot2018, source == 7)

# create data frames with counts 
shot2014_count <- data.frame(year = c(2014, 2014, 2014, 2014, 2014, 2014, 2014),
                             district = c(1, 2, 3, 4, 5, 6, 7), 
                             count = c(nrow(shot2014_1),
                                       nrow(shot2014_2),
                                       nrow(shot2014_3),
                                       nrow(shot2014_4),
                                       nrow(shot2014_5),
                                       nrow(shot2014_6),
                                       nrow(shot2014_7)))

shot2015_count <- data.frame(year = c(2015, 2015, 2015, 2015, 2015, 2015, 2015),
                             district = c(1, 2, 3, 4, 5, 6, 7), 
                             count = c(nrow(shot2015_1),
                                       nrow(shot2015_2),
                                       nrow(shot2015_3),
                                       nrow(shot2015_4),
                                       nrow(shot2015_5),
                                       nrow(shot2015_6),
                                       nrow(shot2015_7)))

shot2016_count <- data.frame(year = c(2016, 2016, 2016, 2016, 2016, 2016, 2016),
                             district = c(1, 2, 3, 4, 5, 6, 7), 
                             count = c(nrow(shot2016_1),
                                       nrow(shot2016_2),
                                       nrow(shot2016_3),
                                       nrow(shot2016_4),
                                       nrow(shot2016_5),
                                       nrow(shot2016_6),
                                       nrow(shot2016_7)))

shot2017_count <- data.frame(year = c(2017, 2017, 2017, 2017, 2017, 2017, 2017),
                             district = c(1, 2, 3, 4, 5, 6, 7), 
                             count = c(nrow(shot2017_1),
                                       nrow(shot2017_2),
                                       nrow(shot2017_3),
                                       nrow(shot2017_4),
                                       nrow(shot2017_5),
                                       nrow(shot2017_6),
                                       nrow(shot2017_7)))

shot2018_count <- data.frame(year = c(2018, 2018, 2018, 2018, 2018, 2018, 2018),
                             district = c(1, 2, 3, 4, 5, 6, 7), 
                             count = c(nrow(shot2018_1),
                                       nrow(shot2018_2),
                                       nrow(shot2018_3),
                                       nrow(shot2018_4),
                                       nrow(shot2018_5),
                                       nrow(shot2018_6),
                                       nrow(shot2018_7)))

# create one combined data frame 
shot_district_year_count <- 
  rbind(shot2014_count, shot2015_count, shot2016_count, 
        shot2017_count, shot2018_count)

# check data 
shot_district_count
shot_year_count
shot_district_year_count

colnames(shot_spotter)
unique(shot_spotter$type)
