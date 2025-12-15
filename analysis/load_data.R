# ==========================================================
# Script: load_data.R
# Purpose: Import and verify raw ITN zone data (NMIS 2021)
# Project: project_01_malaria_CEA
# ==========================================================
#----PACKAGES----
# install and load packages
install.packages("readxl")
library(readxl)
install.packages("dplyr")
library(dplyr)

#-----DATA IMPORT----
# import data
data_path <- "data_raw/zone_itn_data.xlsx"
zone_itn <- read_excel(data_path, sheet = "itn_zone_data_2021")
# preview first few rows
head(zone_itn)

#----SANITY CHECK----
# structure check
str(zone_itn)
summary(zone_itn)

#----USAGE GAP COMPUTATION----
# finds difference between how many households own ITN vs how many actually use
zone_itn <- zone_itn %>% 
  mutate(
    usage_gap_pct = as.numeric(itn_ownership_households_pct) - as.numeric(u5_itn_usage_pct)
  )
print(zone_itn)
View(zone_itn)

#----VISUALISATION----
# bar plot 1: ITN usage by zone for children <5
# color for each zone 
zone_colors <- c(
  "steelblue", "skyblue", "darkseagreen3",
  "tan1", "coral2", "plum3"
)
# saving outputs
jpeg("outputs/plot_itn_usage_by_zone.jpeg", width = 900, height = 600)
# increase bottom and left margins
par(mar = c(7,5,4,2))
# create plot and store midpoints
bar_midpoints <- barplot (zone_itn$u5_itn_usage_pct,
                          names.arg = zone_itn$zone,
                          las = 2, # rotate zone labels
                          col = zone_colors, # color by zone
                          ylim = c(0,max(zone_itn$u5_itn_usage_pct) + 10), # y-axis limit
                          main = "ITN Usage by Zone (Children < 5)", # plot title
                          ylab = "Usage (%)", # y-axis title
                          border = NA # no bar borders
                          )
# data labels
text(x = bar_midpoints,
     y=zone_itn$u5_itn_usage_pct + 3, 
     labels = round(zone_itn$u5_itn_usage_pct, 1),
     cex = 0.8,
     col = "black")
dev.off()

#bar plot 2: ownership-usage gap
#saving outputs
jpeg("outputs/plot_itn_gap_zone.jpeg", width = 900, height = 600)
# increase bottom and left margins
par(mar = c(7,5,4,2))
# create plot and store midpoints
bar_midpoints2 <- barplot(zone_itn$usage_gap_pct,
                          names.arg = zone_itn$zone,
                          las = 2,
                          col = zone_colors,
                          ylim = c(0, max(zone_itn$usage_gap_pct) + 10),
                          main = "Ownership–Usage Gap by Zone",
                          ylab = "Gap (%)",
                          border = NA)
# data labels
text(x = bar_midpoints2,
     y = zone_itn$usage_gap_pct + 3,
     labels = round(zone_itn$usage_gap_pct, 1),
     cex = 0.8,
     col = "black")
dev.off()

#----SAVE & DOCUMENT----
# save cleaned dataset
saveRDS(zone_itn, file = "data_clean/zone_itn_verified.rds")
# export as CSV
write.csv(zone_itn, "data_clean/zone_itn_verified.csv", row.names=FALSE)
# log message
cat("data verified and saved successfully")