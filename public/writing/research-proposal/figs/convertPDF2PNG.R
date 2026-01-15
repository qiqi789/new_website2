# batch converting pdf drawings to png images

# getwd()
# setwd("test_images")
# 
# library(magick)
# 
# f1 <- image_read_pdf("graph_naiveBayes.pdf")
# img1 <- image_convert(f1, "png")
# image_browse(img1)
# image_write(img1, path = "img1.png")

library(magick)
library(tools)

#setwd("C:\\Users\\qiqi7\\OneDrive\\Grant_Proposal\\Hainan's\\figs")

#setwd("C:\\Users\\willi\\Documents\\Writing_NSF\\figs")

setwd("C:\\Users\\willi\\OneDrive\\Writing\\Grant_Proposal\\2024\\figs")

imgconvert <- function(filepath) {
  
  f1 <- image_read_pdf(filepath)
  img1 <- image_convert(f1, "png")
  
  filename = file_path_sans_ext(filepath)
  newname = paste(filename, ".png", sep="")
  image_write(img1, path = newname)
}


fs <- list.files(path=".",pattern="*.pdf")

lapply(fs, imgconvert)



