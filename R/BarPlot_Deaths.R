mybarplotdeaths <- function(barplot2){
  ggplot(Europe_Covid, aes(x = Country.Region, y = Deaths)) +
    geom_bar(stat = "identity",fill = "#3C963C") +
    coord_flip() +
    theme_bw() +
    labs(x = "Country",
         y = "Deaths",
         title = "Deaths of Confirmed Cases in European Countries")
}
