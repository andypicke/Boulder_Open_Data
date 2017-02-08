
# Try using leaflet to make an interactive map of tree types and locations

rm(list=ls())


rm(list=ls())
setwd("~/Boulder_Open_Data/")

# url to the shapefile
url <- "http://www-static.bouldercolorado.gov/docs/opendata/Landuse.zip"

# download file
download.file(url,"Landuse.zip")

# unzip file
unzip("Landuse.zip")

