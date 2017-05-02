## ----setup, include=FALSE------------------------------------------------
# knitr::opts_chunk$set(echo = TRUE)
knitr::opts_chunk$set(message=FALSE, warning=FALSE)

## ------------------------------------------------------------------------
library(ProtExp)
data(twin)
head(twin_dia)

## ------------------------------------------------------------------------
library(tidyverse)
twin_dia2 <- twin_dia %>%
  rename(heavy = intensity_h, light = intensity_l) %>% 
  gather(label, intensity, heavy, light)

exp1 <- ProtExp(protein=twin_dia2$protein,
                               feature=twin_dia2$feature,
                               run=twin_dia2$run,
                               intensity=twin_dia2$intensity,
                               label=twin_dia2$label)
head(exp1)

## ------------------------------------------------------------------------
exp1norm <- normalize(exp1, by="heavy")
head(summary(exp1norm)[,,"light"])
plot(exp1norm)

