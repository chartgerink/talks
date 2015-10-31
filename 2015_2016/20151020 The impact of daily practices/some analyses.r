if(!require(ggplot2)){install.packages('ggplot2')}
library(ggplot2)

dat2014 <- read.table('jcr_recs_2014.txt', header = TRUE, dec = '.', sep = ';')
dat2013 <- read.table('jcr_recs_2013.txt', header = TRUE, dec = '.', sep = ';')
dat2012 <- read.table('jcr_recs_2012.txt', header = TRUE, dec = '.', sep = ';')
dat2011 <- read.table('jcr_recs_2011.txt', header = TRUE, dec = '.', sep = ';')
dat2010 <- read.table('jcr_recs_2010.txt', header = TRUE, dec = '.', sep = ';')

dat <- data.frame(Impact.Factor = c(dat2014$Impact.Factor,
                                    # dat2012$Impact.Factor,
                                    # dat2012$Impact.Factor,
                                    # dat2011$Impact.Factor,
                                    dat2010$Impact.Factor),
                  Year = as.factor(c(rep(2014, dim(dat2014)[1]),
                           # rep(2013, dim(dat2013)[1]),
                           # rep(2012, dim(dat2012)[1]),
                           # rep(2011, dim(dat2011)[1]),
                           rep(2010, dim(dat2010)[1]))))

pdf('impact.pdf', width = 16, height = 9)
ggplot(dat, aes(x = Impact.Factor)) +
  geom_density(aes(group = Year, col = Year, fill = Year), alpha = .5) +
  theme(axis.text=element_text(size=15),
        axis.title=element_text(size=14,face="bold"))
dev.off()
