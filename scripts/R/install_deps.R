# pkgs <-  c("RPostgreSQL", "DBI","dplyr","tidyverse","lubridate","stringr", ## manipulation de donn�es
#            "shiny", "shinythemes","kableExtra",       ## gestion application shiny
#            "leaflet","rgdal", "sf", "viridisLite")

pkgs <-  c("RPostgreSQL", "DBI","dotenv")


if (length(setdiff(pkgs, rownames(installed.packages()))) > 0) {
  # installation des packages 
  install.packages(setdiff(pkgs, rownames(installed.packages())), )  
} 

lapply(pkgs, library, character.only = TRUE)
rm(pkgs)