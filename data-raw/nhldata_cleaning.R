################################
# Clean Data for nhldata Package
################################
library(tidyverse)
library(stringr)

# Source: corsica.hockey
goalies <- read_csv("data-raw/goalies_raw.csv")
skaters <- read_csv("data-raw/skaters_raw.csv")
teams <- read_csv("data-raw/teams_raw.csv")

# Source: naturalstattrick.com
#games <- 

# Clean Goalie Data
names(goalies) <- tolower(names(goalies))
names(goalies) <- gsub("%","_pct",names(goalies))
goalies$player <- gsub("[.]"," ",goalies$player)
goalies$team <- gsub("[.]","",goalies$team)
goalies <- goalies %>%
  separate(team, into=c("team","team2","team3"),sep="/")

# Clean Skater Data
names(skaters) <- tolower(names(skaters))
names(skaters) <- gsub("%","_pct",names(skaters))
names(skaters) <- gsub("[+]/-","_plumin",names(skaters))
names(skaters) <- gsub("/","_",names(skaters))
names(skaters) <- gsub(" ","_",names(skaters))
skaters$player <- gsub("[.]"," ",skaters$player)
skaters$team <- gsub("[.]","",skaters$team)
skaters$player[skaters$player=="5EBASTIAN AHO"] <- "SEBASTIAN AHO"
skaters <- skaters %>%
  separate(team, into=c("team","team2","team3"),sep="/") %>%
  separate(position, into=c("position","position2","position3")) 

# Clean Team Data
names(teams) <- tolower(names(teams))
teams$team <- gsub("[.]","",teams$team)
names(teams) <- gsub("%","_pct",names(teams))
names(teams) <- gsub("[+]/-","_plumin",names(teams))
names(teams) <- gsub("/","_",names(teams))

save(goalies, file="data/goalies.rda", compress="xz")
save(skaters, file="data/skaters.rda", compress="xz")
save(teams, file="data/teams.rda", compress="xz")


