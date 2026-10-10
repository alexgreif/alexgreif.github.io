# Run from images/source: Rscript survival-variants.R
# Original project times have no documented unit; additional simulation uses days.
# Simulation: 200 subjects/group, seed 4214242. Pointwise log-log bands: 80% for project data, 95% for the larger simulation.
library(survival)
original <- read.csv('survival-thumbnail-data.csv',check.names=FALSE)
set.seed(4214242)
group <- rep(c('Interventionsgruppe','Kontrollgruppe'),each=200)
event <- rexp(400,rate=ifelse(group=='Interventionsgruppe',0.085,0.14))
censor <- pmin(runif(400,7,20),14)
simulated <- data.frame(Zeit=pmin(event,censor),status=ifelse(event<=censor,'tot','lebt'),Gruppe=group)
write.csv(simulated,'survival-illustrative-data.csv',row.names=FALSE)
colours <- c('#147bb5','#e57245')
step_points <- function(t,v) list(x=rep(t,each=2)[-1],y=rep(v,each=2)[-length(rep(v,each=2))])
dir.create('../previews',showWarnings=FALSE)
for(dataset in c('original','simulated')) {
 d <- if(dataset=='original') original else simulated
 confidence <- if(dataset=='simulated') 0.95 else 0.80
 fit <- survfit(Surv(Zeit,status=='tot')~Gruppe,data=d,conf.int=confidence,conf.type='log-log')
 for(level in c('minimal','numbers','titles','legend','full')) {
  numbers <- level %in% c('numbers','titles','full')
  titles <- level %in% c('titles','full')
  leg <- level %in% c('legend','full')
  png(paste0('../previews/survival-',dataset,'-',level,'.png'),width=1200,height=760,res=150,type='cairo',bg='#f5f8fb')
  margins <- if(titles) c(3.5,4.4,0.8,1.2) else if(numbers) c(2.2,3.3,0.8,1.2) else c(0.8,0.8,0.8,0.8)
  par(mar=margins,mgp=c(2.2,0.6,0),family='sans',col.axis='#506275',col.lab='#506275',fg='#899baa',cex=1.15)
  plot.new();plot.window(xlim=c(0,14),ylim=c(0,1),xaxs='i',yaxs='i')
  abline(h=seq(0,1,0.25),v=seq(0,14,3.5),col='#e2e9ef',lwd=1)
  for(i in seq_along(fit$strata)) {
   f <- fit[i];valid <- is.finite(f$lower)&is.finite(f$upper)
   lo <- step_points(c(0,f$time[valid]),c(1,f$lower[valid]))
   hi <- step_points(c(0,f$time[valid]),c(1,f$upper[valid]))
   polygon(c(lo$x,rev(hi$x)),c(lo$y,rev(hi$y)),col=adjustcolor(colours[i],alpha.f=0.18),border=NA)
  }
  lines(fit,col=colours,lwd=7,lty=1,conf.int=FALSE,mark.time=TRUE,pch=3,cex=0.75)
  if(numbers) {
   axis(1,at=c(0,7,14),tck=-0.015,lwd=2,lwd.ticks=1)
   axis(2,at=c(0,0.5,1),labels=c('0%','50%','100%'),las=1,tck=-0.015,lwd=2,lwd.ticks=1)
  }
  if(titles) {
   mtext(if(dataset=='simulated') 'Days' else 'Time (unspecified unit)',side=1,line=2.2)
   mtext('Survival probability',side=2,line=3.1)
  }
  if(leg) legend('topright',inset=c(0.025,0.04),legend=c('Treatment','Control'),col=colours,lty=1,lwd=5,bty='n',text.col='#506275',cex=0.9)
  dev.off()
 }
 cat(dataset,':',nrow(d),'observations; 5 variants\n')
}
