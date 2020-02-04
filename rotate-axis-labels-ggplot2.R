td <- expand.grid(
    hjust=c(0, 0.5, 1),
    vjust=c(0, 0.5, 1),
    angle=c(0, 45, 90),
    text="text"
)
ggplot(td, aes(x=hjust, y=vjust)) + 
    geom_point(colour = "red",
             size = 5) +
    geom_text(aes(label=text, angle=angle, hjust=hjust, vjust=vjust)) + 
    facet_grid(~angle) +
    scale_x_continuous(breaks=c(0, 0.5, 1), expand=c(0, 0.2)) +
    scale_y_continuous(breaks=c(0, 0.5, 1), expand=c(0, 0.2))

#From: https://gist.github.com/benmarwick/8b95b8fb226986bd86a47ad92e0017f2
