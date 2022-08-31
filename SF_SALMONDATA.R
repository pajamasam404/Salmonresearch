

##BB_red_salmon_data <- read.excel("~/Desktop/R/RStudio/SENIOR_SYNTH_PROJECT/forSamFroines copy.xlsx")


View(BB_red_salmon_data)


BB_red_salmon_data
BB_red_salmon_data$Year

plot(BB_red_salmon_data$Year, BB_red_salmon_data$`Total Spawning Sockeye`,
     main = "Bristol Bay Salmon Returning Population by Year",
     xlab = "Year", ylab = "Salmon population Returning to Bristol Bay",
     col = "mediumpurple",
     type = "h",
     labels()
     )


BB_2015_data <- subset(BB_red_salmon_data, Year == "2015")

#BB_2015_data$Site <- as.factor(BB_red_salmon_data$Site)
#BB_2015_data$Year <- as.factor(BB_red_salmon_data$Year)


plot(BB_2015_data$year, BB_2015_data$`Total Spawning Sockeye`)

hist(BB_2015_data$`Total Spawning Sockeye`, BB_2015_data$Site, 
     breaks = 100)

# 2015 data by each site
plot(BB_2015_data$Site, BB_2015_data$`Total Spawning Sockeye`,
     type = "h",
     main = "2015 Bristol Bay Salmon Returning Population by  Location Site",
     xlab = "Location site", ylab = "Salmon population Returning to Bristol Bay",
     col = "coral")

plot(BB_2015_data$Year, BB_2015_data$`Total Spawning Sockeye`,
     min(BB_2015_data,  year == "2015"),
     max(x, year == "2019"))
    
# Salmon count vs year
plot(BB_red_salmon_data$Year, BB_red_salmon_data$`Total Spawning Sockeye`)


# Salmon count by site location
##BB_red_salmon_data$Site <- as.factor(BB_red_salmon_data$Site)
# plot(BB_red_salmon_data$`Total Spawning Sockeye`, BB_red_salmon_data$site)

# plot(BB_red_salmon_data$Year, BB_red_salmon_data$`Total Spawning Sockeye`)




# plot(BB_red_salmon_data$Year, BB_red_salmon_data$`Total Spawning Sockeye`, col = "mediumpurple")

# BB_red_salmon_data$Year <- as.factor(BB_red_salmon_data$Year)
# hist(BB_red_salmon_data$`Total Spawning Sockeye`, BB_red_salmon_data$Site)

par(mfrow=c(1,4))

plot(Townet_reds_BB$Year, Townet_reds_BB$Catch,
     main = "Red Salmon Townet Catch in Bristol Bay by Year",
     xlab = "Year", ylab = "Red salmon Catch",
     col = "red",
     type = "p")

plot(Townet_reds_BB$Year, Townet_reds_BB$`Length (adjusted to Sept 1)`,
     main = "Red Salmon Townet average size in Bristol Bay by Year",
     xlab = "Year", ylab = "Red Salmon length (adjusted to Sept 1)",
     col = "coral",
     type = "p")

m6_surface_temps<-subset(Surfacetemp_Limnology_lakeAleknagik, month == "6")
m7_surface_temps<-subset(Surfacetemp_Limnology_lakeAleknagik, month == "7")
m8_surface_temps<-subset(Surfacetemp_Limnology_lakeAleknagik, month == "8")
m9_surface_temps<-subset(Surfacetemp_Limnology_lakeAleknagik, month == "9")

plot(m6_surface_temps$Year, m6_surface_temps$WaterTemperatureCelcius,
     main = "Month of June",
     xlab = "Year", ylab = "Surface Water Tempature (Celsius)",
     col = "red")
plot(m7_surface_temps$Year, m7_surface_temps$WaterTemperatureCelcius,
     main = "Month of July",
     xlab = "Year", ylab = "Surface Water Tempature (Celsius)",
     col = "coral")
plot(m8_surface_temps$Year, m8_surface_temps$WaterTemperatureCelcius,
     main = "Month of August",
     xlab = "Year", ylab = "Surface Water Tempature (Celsius)",
     col = "orange")
plot(m9_surface_temps$Year, m9_surface_temps$WaterTemperatureCelcius,
     main = "Month of September",
     xlab = "Year", ylab = "Surface Water Tempature (Celsius)",
     col = "yellow")

plot(Surfacetemp_Limnology_lakeAleknagik$Year, Surfacetemp_Limnology_lakeAleknagik$WaterTemperatureCelcius)
