# Combining the Shot Spotter Data -----------------------------------------

# Input Data Sets
library(readxl)
ShotSpotter1 <- read_excel("~/Downloads/near_act/raw_data/ShotSpotter Data 14-17 180213_0.xlsx")
ShotSpotter2 <- read_excel("~/Downloads/near_act/raw_data/ShotSpotter Public Data Q1-Q2 2018.xlsx")
ShotSpotter3 <- read_excel("~/Downloads/near_act/raw_data/Shotspotter Public Data Q3_12042018.xlsx")

# Convert to Tibbles
library(tibble)
ShotSpotter1 <- as_tibble(ShotSpotter1)
ShotSpotter2 <- as_tibble(ShotSpotter2)
ShotSpotter3 <- as_tibble(ShotSpotter3)

# Check Columns 
colnames(ShotSpotter1)
colnames(ShotSpotter2)
colnames(ShotSpotter3)

# Rename Columns in ShotSpotter1 Before Combining 
library(dplyr)
ShotSpotter1 <- ShotSpotter1 %>% 
  rename(Latitude = `Lat (100)`, 
         Longitude = `Lon (100)`)

colnames(ShotSpotter1)

# Merge Data into One Combined Tibble 
shot_spotter <- 
  rbind(ShotSpotter1, ShotSpotter2, ShotSpotter3)

# Check that All Rows Were Added
nrow(shot_spotter)

nrow(ShotSpotter1) + nrow(ShotSpotter2) +
  nrow(ShotSpotter3)

# Rename Columns 
colnames(shot_spotter)

shot_spotter <- shot_spotter %>% 
  rename(id = ID, 
         type = Type, 
         date = Date,
         time = Time, 
         source = Source, 
         lat = Latitude, 
         lon = Longitude)

colnames(shot_spotter)
