iter <- 10000

folder <- '2015_2016/20160529 aps/'

# variances ---------------------------------------------------------------

png(sprintf('%sfig1.png', folder), width = 900, height = 600)
plot(dnorm(x = seq(-4, 4, .01), 0, 1), type = 'l', 
     ylim = c(0, 2), bty = 'n',
     xaxt = 'n', yaxt = 'n',
     xlab = 'Density', ylab = '',
     main = 'What do (potentially) fabricated variances look like?', cex.main = 2.5)

png(sprintf('%sfig2.png', folder), width = 900, height = 600)
plot(dnorm(x = seq(-4, 4, .01), 0, 1), type = 'l', 
     ylim = c(0, 2), bty = 'n',
     xaxt = 'n', yaxt = 'n',
     xlab = 'Density', ylab = '',
     main = 'What do (potentially) fabricated variances look like?', cex.main = 2.5)
lines(dnorm(x = seq(-4, 4, .01), 0, .2), type = 'l', lty = 2)

png(sprintf('%sfig3.png', folder), width = 900, height = 600)
plot(dnorm(x = seq(-4, 4, .01), 0, 1), type = 'l', 
     ylim = c(0, 2), bty = 'n',
     xaxt = 'n', yaxt = 'n',
     xlab = 'Density', ylab = '',
     main = 'What do (potentially) fabricated variances look like?', cex.main = 2.5)
# lines(dnorm(x = seq(-4, 4, .01), 0, .2), type = 'l', lty = 2)
lines(dnorm(x = seq(-4, 4, .01), 0, .01), type = 'l', lty = 3)


# p-values ----------------------------------------------------------------

uniform <- runif(iter, 0, 1)
genuine <- rbeta(iter, .1, 1)
fabricated <- rbeta(iter, 1, .1)

png(sprintf('%sfig4.png', folder), width = 900, height = 600)
hist(uniform, breaks = 50, col = 'grey', ylim = c(0, 1000),
     xlab = 'P-values', main = 'What do (potentially) fabricated p-values look like?', cex.main = 2.5)

png(sprintf('%sfig5.png', folder), width = 900, height = 600)
hist(uniform, breaks = 50, col = 'grey', ylim = c(0, 1000),
     xlab = 'P-values', main = 'What do (potentially) fabricated p-values look like?', cex.main = 2.5)
hist(genuine, breaks = 50, col = 'green', add = TRUE)

png(sprintf('%sfig6.png', folder), width = 900, height = 600)
hist(uniform, breaks = 50, col = 'grey', ylim = c(0, 1000),
     xlab = 'P-values', main = 'What do (potentially) fabricated p-values look like?', cex.main = 2.5)
hist(genuine, breaks = 50, col = 'green', add = TRUE)
hist(fabricated, breaks = 50, col = 'red', add = TRUE)

dev.off()
dev.off()
dev.off()
dev.off()
