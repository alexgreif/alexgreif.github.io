# Portfolio preview based on the original simulated project data.
# Run from this directory: Rscript survival-thumbnail.R
# Data source: Projekte/Überlebenszeitanalyse/simulierte_daten_a20.xlsx
# in the neighbouring Bewerbungsunterlagen repository; values copied unchanged.
# Bands show pointwise 80% log-log confidence intervals, chosen for this thumbnail.
# This illustrative preview omits labels; use the report for the full result figure.
library(survival)
df <- read.csv('survival-thumbnail-data.csv', check.names = FALSE)
stopifnot(nrow(df) == 30, all(table(df$Gruppe) == 15))
fit <- survfit(Surv(Zeit, status == 'tot') ~ Gruppe, data = df,
               conf.int = 0.80, conf.type = 'log-log')
colours <- c('#147bb5', '#e57245')
png('../thumbs/survival-analysis-colour.png', width = 1200, height = 760,
    res = 150, type = 'cairo', bg = '#f5f8fb')
par(mar = c(2.2, 3.3, 0.8, 1.2), mgp = c(2, 0.6, 0),
    family = 'sans', col.axis = '#506275', fg = '#899baa', cex = 1.15)
plot.new()
plot.window(xlim = c(0, 14), ylim = c(0, 1), xaxs = 'i', yaxs = 'i')
abline(h = seq(0, 1, 0.25), v = seq(0, 14, 3.5), col = '#e2e9ef', lwd = 1)
# Expand each confidence boundary into the same steps as the KM curve.
step_points <- function(time, value) {
    list(x = rep(time, each = 2)[-1],
         y = rep(value, each = 2)[-length(rep(value, each = 2))])
}
for (i in seq_along(fit$strata)) {
    group <- fit[i]
    valid <- is.finite(group$lower) & is.finite(group$upper)
    time <- c(0, group$time[valid])
    lower <- c(1, group$lower[valid])
    upper <- c(1, group$upper[valid])
    low <- step_points(time, lower)
    high <- step_points(time, upper)
    polygon(c(low$x, rev(high$x)), c(low$y, rev(high$y)),
            col = adjustcolor(colours[i], alpha.f = 0.18), border = NA)
}
lines(fit, col = colours, lwd = 7, lty = c(1, 2), conf.int = FALSE,
      mark.time = TRUE, pch = 3, cex = 0.75)
# Sparse numeric scales; no axis titles or legend.
axis(1, at = c(0, 7, 14), labels = c('0', '7', '14'),
     tck = -0.015, col = '#899baa', lwd = 2, lwd.ticks = 1)
axis(2, at = c(0, 0.5, 1), labels = c('0%', '50%', '100%'), las = 1,
     tck = -0.015, col = '#899baa', lwd = 2, lwd.ticks = 1)
dev.off()
cat('30 observations; confidence level:', fit$conf.int,
    '; group order:', names(fit$strata), '\n')
