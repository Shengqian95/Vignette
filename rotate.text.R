library(ggplot2)
library(reshape2)
library(egg)

# thanks to https://stackoverflow.com/questions/1330989/rotating-and-spacing-axis-labels-in-ggplot2/60650595#60650595

dat<-reshape2::melt(data.frame(groupA=rnorm(20),
                               groupB=rnorm(20),
                               groupC=rnorm(20)))

theme_set(theme_classic(base_size = 15))

plots <- lapply(c(0,22.5,45,90), function(angle){
  
  ggplot(dat,aes(variable,value)) + 
    geom_boxplot() + xlab(element_blank()) +
    guides(x = guide_axis(angle = angle)) ## this line is key
  
})

egg::ggarrange(plots[[1]],plots[[2]],
               plots[[3]],plots[[4]],
               ncol=2)
