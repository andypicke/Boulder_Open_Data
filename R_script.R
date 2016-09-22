
### Loading and visualizing shapefile data from Boulder Open Data Catalog

rm(list=ls())
setwd("~/Boulder_Open_Data/")

# url to the shapefile
url <- "http://www-static.bouldercolorado.gov/docs/opendata/Landuse.zip"

# download file
download.file(url,"Landuse.zip")

# unzip file
unzip("Landuse.zip")

library(rgdal)
library(raster)
# read the shapefile (NOTE cannot use '~' in file path! see https://stat.ethz.ch/pipermail/r-sig-geo/2015-January/022279.html)
landuse <- readOGR(dsn="/Users/Andy/Boulder_Open_Data",layer="Landuse",encoding=)

class(landuse)

# get the coordinate reference system
crs(landuse)

# view the extent of the data
extent(landuse)

landuse


landuse@data

summary(landuse)

# make a simple plot
plot(landuse,color=landuse$LANDUSE)

levs <- levels(landuse$LANDUSE)
nlev=length(levs)

sub=landuse[landuse$LANDUSE=="MR",]
plot(landuse)
plot(sub,add=TRUE,col="red")
plot(sub,col="red")
