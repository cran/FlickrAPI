## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
# pak::pkg_install("koki25ando/FlickrAPI")
library(FlickrAPI)

## ---- eval = FALSE------------------------------------------------------------
#  # Set the API key for a single session
#  setFlickrAPIKey(api_key = "YOUR_API_KEY_HERE")
#  
#  # Install the API key for future sessions
#  setFlickrAPIKey(api_key = "YOUR_API_KEY_HERE", install = TRUE)
#  
#  # Overwrite an existing API key
#  setFlickrAPIKey(api_key = "YOUR_API_KEY_HERE", overwrite = TRUE)

## ---- eval = FALSE------------------------------------------------------------
#  # Search for photos uploaded by Koki Ando
#  getPhotos(user_id = "141696738@N08")

## ---- eval = FALSE------------------------------------------------------------
#  getPhotoSearch(tags = c("cats","dogs"))

## ---- eval = FALSE------------------------------------------------------------
#  # Search for photos of cats and dogs in North Carolina
#  nc <- sf::st_read(system.file("shape/nc.shp", package = "sf"))
#  nc_bbox <- sf::st_bbox(nc)
#  
#  getPhotoSearch(tags = c("cats","dogs"), bbox = nc_bbox)

## ---- eval = FALSE------------------------------------------------------------
#  # Search for photos tagged "panda" in the area of Ueno Zoo, Tokyo, Japan
#  getPhotoSearch(
#    tags = "panda",
#    bbox = c(139.7682226529, 35.712627977, 139.7724605432, 35.7181464141),
#    sort = "interestingness-desc",
#    extras = c("geo", "tags")
#  )

## ---- eval = FALSE------------------------------------------------------------
#  getPhotoInfo(photo_id="51899696261",
#               output = "url")

## ---- eval = FALSE------------------------------------------------------------
#  getExif(photo_id="51872765082")

