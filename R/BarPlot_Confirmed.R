mybarplotconfirmed <- function(barplot){
  ggplot(Europe_Covid, aes(x = Country.Region, y = Confirmed)) +
    geom_bar(stat = "identity",fill = "#3C963C") +
    coord_flip() +
    theme_bw() +
    labs(x = "Country",
         y = "Confirmed",
         title = "Confirmed Cases in European Countries")
}
