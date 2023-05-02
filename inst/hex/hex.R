# script to build an example hex sticker

library(string2path)
library(ggplot2)
library(hexSticker)

alpha_poly <- string2fill("α", font = "Arial", tolerance = 10 ^ -2)

p <- ggplot(alpha_poly) +
  geom_polygon(aes(x, y, group = triangle_id),
               fill = "#377041", 
               colour = "#ffffff", 
               linewidth = 0.1) +
  theme_void() +
  coord_equal()

# export as sticker
sticker(
  subplot = p,
  s_x = 1,
  s_y = 1.25,
  s_width = 0.8,
  s_height = 0.8,
  package = "alphahull",
  p_color = "#1e4526",
  p_y = 0.7,
  p_family = "mono",
  p_size = 6.5,
  # border
  h_fill = "#ffffff",
  h_color = "#1e4526",
  filename = "man/figures/logo.png",
  # url
  url = "beatrizpateiro/alphahull",
  u_family = "mono",
  u_color = "black"
)