df<- read_excel("Model_RMA.xlsx")
df<- read.csv2("WGS84.csv")
colnames(df)

dff <- df[!duplicated(df[, c("Latitude", "Longitude")]), ]

newmap <- getMap(resolution = "high")

p1<- plot(newmap,col="white",
     bg="lightblue",border="grey60",
     xlim = c(8, 10),
     ylim = c(45, 56),
     asp = 1
)
p1
points(dff$Longitude,dff$Latitude, col="black", pch=21, cex=0.5,bg="red")
map.scale(cex=0.7, metric=T, relwidth=0.2, location="bottomleft")

points(df$E,df$N, col="black", pch=21, cex=0.5,bg="red")

sp <- occ_data(scientificName ="Acheta domesticus", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe",
               limit = 30000)
data1 <- sp[["data"]]

colnames(data1)
ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70)
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain")


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                    fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map + scale_fill_gradientn(colours=rev(brewer.pal(7, "Spectral")))
 
p1<- coords.map <- coords.map + theme_bw()                                                  
                                    
                                                  

library(rgbif)
library(ggplot2)
library(ggmap)
sp <- occ_data(scientificName ="Acheta domesticus", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe", #Note I limited to Europe
               limit = 30000) # Here we dowload the data from GBIF
data1 <- sp[["data"]] # Convert as dataframe

colnames(data1) #colnames
ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) #basic ggplot heatmap 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70) #set the limits of the map
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain") # Here you can choose different map styles
# map styles: https://www.nceas.ucsb.edu/sites/default/files/2020-04/ggmapCheatsheet.pdf


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                                              fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map + scale_fill_gradientn(colours=rev(brewer.pal(7, "Spectral"))) #color palette

p1<- coords.map <- coords.map + theme_bw()     
p1



sp <- occ_data(scientificName ="Acheta domesticus", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe",
               limit = 30000)
data1 <- sp[["data"]]

colnames(data1)
ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70)
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain")


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                                              fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map + scale_fill_gradientn(colours=rev(brewer.pal(7, "Spectral")))

p1<- coords.map <- coords.map + theme_bw()     




sp <- occ_data(scientificName ="Acheta domesticus", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe",
               limit = 30000)
data1 <- sp[["data"]]

colnames(data1)
   
 ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70)
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain")


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                                              fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map + scale_fill_gradient(low = "yellow", high = "red", na.value = NA,
                                               limits = c(0.001, 0.15))

p1<- coords.map <- coords.map + theme_bw()





sp <- occ_data(scientificName ="Anacridium aegyptium", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe",
               limit = 30000)
data1 <- sp[["data"]]

colnames(data1)
ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70)
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain")


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                                              fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map + scale_fill_gradient(low = "yellow", high = "red", na.value = NA,
                                               limits = c(0.005, 0.05))

p2<- coords.map <- coords.map + theme_bw()     
p2




sp <- occ_data(scientificName ="Calliptamus italicus", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe",
               limit = 30000)
data1 <- sp[["data"]]

colnames(data1)
ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70)
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain")


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                                              fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map + scale_fill_gradient(low = "yellow", high = "red", na.value = NA,
                                               limits = c(0.01, 0.12))

p3<- coords.map <- coords.map + theme_bw()     





sp <- occ_data(scientificName ="Dociostaurus maroccanus", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe",
               limit = 30000)
data1 <- sp[["data"]]

colnames(data1)
ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70)
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain")


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                                              fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map + scale_fill_gradient(low = "yellow", high = "red", na.value = NA,
                                               limits = c(0.001, 0.035))

p4<- coords.map <- coords.map + theme_bw()     





sp <- occ_data(scientificName ="Locusta migratoria", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe",
               limit = 30000)
data1 <- sp[["data"]]

colnames(data1)
ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70)
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain")


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                                              fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map + scale_fill_gradient(low = "yellow", high = "red", na.value = NA,
                                               limits = c(0.01, 0.1))

p5<- coords.map <- coords.map + theme_bw()     





sp <- occ_data(scientificName ="Meconema meridionale", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe",
               limit = 30000)
data1 <- sp[["data"]]

colnames(data1)
ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70)
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain")


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                                              fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map + scale_fill_gradient(low = "yellow", high = "red", na.value = NA)

p6<- coords.map <- coords.map + theme_bw()     





sp <- occ_data(scientificName ="Metrioptera roeselii", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe",
               limit = 30000)
data1 <- sp[["data"]]

colnames(data1)
ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70)
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain")


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                                              fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map + scale_fill_gradient(low = "yellow", high = "red", na.value = NA,
                                              limits = c(0.05, 0.55))

p7<- coords.map <- coords.map + theme_bw()     





sp <- occ_data(scientificName ="Phaneroptera falcata", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe",
               limit = 30000)
data1 <- sp[["data"]]

colnames(data1)
ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70)
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain")


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                                              fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map +  scale_fill_gradient(low = "yellow", high = "red", na.value = NA,
                                                limits = c(0.01, 0.13))

p8<- coords.map <- coords.map + theme_bw()     




sp <- occ_data(scientificName ="Schistocerca gregaria", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe",
               limit = 30000)
data1 <- sp[["data"]]

colnames(data1)
ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70)
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain")


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                                              fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map +  scale_fill_gradient(low = "yellow", high = "red", na.value = NA,
                                                limits = c(0.001, 0.0055))

p9<- coords.map <- coords.map + theme_bw()   





sp <- occ_data(scientificName ="Tessellana tessellata", hasCoordinate = TRUE,
               occurrenceStatus = "PRESENT", continent="europe",
               limit = 30000)
data1 <- sp[["data"]]

colnames(data1)
ggplot() +
  stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude, fill = ..density..),
                 geom = 'tile', contour = F) 



map_bounds <- c(left = -11, bottom = 34, right = 35, top = 70)
coords.map1 <- get_stamenmap(map_bounds, zoom = 7, maptype = "terrain")


coords.map <- ggmap(coords.map1, extent="device", legend="none")

coords.map <- coords.map +   stat_density2d(data = data1, aes(x = decimalLongitude, y = decimalLatitude,
                                                              fill = ..density..), geom = 'tile', contour = F, alpha = .5) 


coords.map <- coords.map +  scale_fill_gradient(low = "yellow", high = "red", na.value = NA,
                                                limits = c(0.001, 0.08))

p10<- coords.map <- coords.map + theme_bw() 




p1 + labs(title = "Acheta domesticus")

p2+ labs(title = "Anacridium aegyptium")
p3+ labs(title = "Calliptamus italicus")
p4+ labs(title = "Dociostaurus maroccanus")
p5+ labs(title = "Locusta migratoria")
p6+ labs(title = "Meconema meridionale")
p7+ labs(title = "Metrioptera roeselii")
p8+ labs(title = "Phaneroptera falcata")
p9+ labs(title = "Schistocerca gregaria")
p10+ labs(title = "Tessellana tesselata")

plot_grid(p1,p2,p3,p4,p5,
  labels = "AUTO", ncol = 2)
