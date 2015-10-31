setwd("C:/Users/u1233095/Downloads")

dat <- read.table('exportPresentersWall.csv', header = TRUE, sep = ";", stringsAsFactors = FALSE)

library(ggplot2)

for (q in 12:29){
  dat[ ,q] = ifelse(grepl("0 - ", dat[ ,q]), 0, ifelse(
    grepl("1 - ", dat[ ,q]), 1, ifelse(
      grepl("2 - ", dat[ ,q]), 2, NA)))
}

dat$subscription <- dat$Norm.question.13 + 
  dat$Norm.question.14 + 
  dat$Norm.question.15 + 
  dat$Norm.question.16 + 
  dat$Norm.question.17 + 
  dat$Norm.question.18

dat$adherence <- dat$Norm.question.1 + 
  dat$Norm.question.3 + 
  dat$Norm.question.5 + 
  dat$Norm.question.7 + 
  dat$Norm.question.9 + 
  dat$Norm.question.11

dat$other_adherence <- dat$Norm.question.2 + 
  dat$Norm.question.4 + 
  dat$Norm.question.6 + 
  dat$Norm.question.8 + 
  dat$Norm.question.10 + 
  dat$Norm.question.12

pdf('normative dissonance.pdf', width = 16, height = 9)
ggplot(data = dat) + xlab("Norm sum score") + 
  geom_density(aes(x = subscription, fill = "Subscription", label = "test"), alpha = .5) +
  geom_density(aes(x = adherence, fill = "Adherence"), alpha = .5) +
  geom_density(aes(x = other_adherence, fill = "Other's adherence"), alpha = .5)

dev.off()
