# Define the vector
rooms <- c(1, 5, 2, 3, 1, NA, 3, 1, 3, 2, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA, 4, 3 ,1 ,7 ,2 ,1 ,NA ,1, 1, 3)

# Remove NA
no_na_rooms <- na.omit(rooms)

# Remove values below 3
no_na_rooms_2 <- no_na_rooms[ no_na_rooms > 2]

# Find the number of values above 2
length(no_na_rooms_2)

# Check whether the answer 13 is correct
no_na_rooms_2

# Find the datatype of vector "rooms"
class(rooms)

# See if the median function does what I think it does
median(rooms)
# Why does it give NA? 
# Is it because it just grabs the value that just 
# happens to be positioned in the middle?

length(rooms)
rooms[17:18]
# value nr17 out of 35 is NA, so that is a possibility

# Let me check what the "median" function actually does
?median

# Ah, I just have to tell it to ignore NA
median(rooms,na.rm=TRUE)

# There are a lot of 1's in the data, so it makes sense that 2 is the median


# Downloading SAFI_clean.csv
download.file("https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  "data/SAFI_clean.csv", mode = "wb")

# Assigning csv file as digital object "interviews"

interviews <- read.csv("data/SAFI_clean.csv")

# Printing "interviews" to check if it looks right
interviews

# It does, hurray!