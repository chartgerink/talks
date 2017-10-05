dat <- read.table('exportPresentersWall.csv', header = TRUE, sep = ";", stringsAsFactors = FALSE)

library(ggplot2)

for (q in 12:29){
  dat[ ,q] = ifelse(grepl("0 - ", dat[ ,q]), 0, ifelse(
    grepl("1 - ", dat[ ,q]), 1, ifelse(
      grepl("2 - ", dat[ ,q]), 2, NA)))
}

dat$subscription <- ifelse(is.na(dat$Norm.question.13), 0, dat$Norm.question.13) + 
  ifelse(is.na(dat$Norm.question.14), 0, dat$Norm.question.14) + 
  ifelse(is.na(dat$Norm.question.15), 0, dat$Norm.question.15) + 
  ifelse(is.na(dat$Norm.question.16), 0, dat$Norm.question.16) + 
  ifelse(is.na(dat$Norm.question.17), 0, dat$Norm.question.17) + 
  ifelse(is.na(dat$Norm.question.18), 0, dat$Norm.question.18)

dat$adherence <- ifelse(is.na(dat$Norm.question.1), 0, dat$Norm.question.1) + 
  ifelse(is.na(dat$Norm.question.3), 0, dat$Norm.question.3) + 
  ifelse(is.na(dat$Norm.question.5), 0, dat$Norm.question.5) + 
  ifelse(is.na(dat$Norm.question.7), 0, dat$Norm.question.7) + 
  ifelse(is.na(dat$Norm.question.9), 0, dat$Norm.question.9) + 
  ifelse(is.na(dat$Norm.question.11), 0, dat$Norm.question.11)

dat$other_adherence <- ifelse(is.na(dat$Norm.question.2), 0, dat$Norm.question.2) + 
  ifelse(is.na(dat$Norm.question.4), 0, dat$Norm.question.4) + 
  ifelse(is.na(dat$Norm.question.6), 0, dat$Norm.question.6) + 
  ifelse(is.na(dat$Norm.question.8), 0, dat$Norm.question.8) + 
  ifelse(is.na(dat$Norm.question.10), 0, dat$Norm.question.10) + 
  ifelse(is.na(dat$Norm.question.12), 0, dat$Norm.question.12)

pdf('normative dissonance.pdf', width = 16, height = 9)
ggplot(data = dat) + xlab("Norm sum score") + 
  geom_density(aes(x = subscription, fill = "Subscription", label = "test"), alpha = .5) +
  geom_density(aes(x = adherence, fill = "Adherence"), alpha = .5) +
  geom_density(aes(x = other_adherence, fill = "Other's adherence"), alpha = .5)

dev.off()
