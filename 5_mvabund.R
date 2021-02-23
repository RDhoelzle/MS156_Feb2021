### Beta Diversity::: mvabund

source("Functions.R")

#	Is the MB significantly different between all groups
otu.mvabund <- mvabund(otu.all[,which(apply(otu.all*19900,2,max)>=5)]*19900)
mod <- manyglm(otu.mvabund ~ env.all$Group, family='negative_binomial')
  plot(mod)
mod.out <- anova(mod, p.uni = "adjusted")
  write.csv(mod.out$table,"../mvabund_results/all.mvabund.table.csv")
  write.csv(mod.out$uni.test,"../mvabund_results/all.mvabund.uni.test.csv")
  write.csv(mod.out$uni.p,"../mvabund_results/all.mvabund.uni.p.csv")
