# install.packages("hexSticker")
# install.packages("ggimage")

library(hexSticker)
library(tibble)
library(ggplot2)
library(ggimage)

#pos <- tibble(x = c(0,1), y = c(1.1, 1-0.1), img = c("images/619px-R_logo.svg.png","images/open-science_white-1024x640-1530192772.png") )
pos <- tibble(x = c(0,1), y = c(0, 0), img = c("images/619px-R_logo.svg.png","images/600_468252451.png") )

p <- ggplot(pos, aes(x = x, y=y)) +
    geom_rect(aes(xmin = 0, xmax = 1, ymin = -1, ymax = 1), fill=NA, color=NA) +
    geom_image(aes(image=img), size=c(0.5,0.43), nudge_x=c(0.25, -0.19)) +
    scale_size_identity() +
    annotate("text", label="Avantgarde", x=0.52, y=-0.70, size=4, color ="black" )

p <- p + theme_void() + theme_transparent()
p

sticker(p, package="ROSA", p_size=10, s_x=1, s_y=.75, s_width=1.3, s_height=1,
        h_fill = "#f542e0",
        h_color = "#128977",
        filename="sticker.png")
