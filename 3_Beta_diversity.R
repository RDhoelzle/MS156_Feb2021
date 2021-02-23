### Beta Diversity

source("Functions.R")


#Is the MB significantly different between all groups both PND
adonis(sqrt(otu.all) ~ Group, data=env.all, method='euc')
  #pcoa <- pcoa(otu.all)
    #custom.plot.pcoa(pcoa,group = factor(env1$Group), plottype = "n", title = "all")
  otu.rda <- rda(sqrt(otu.all) ~ env.all$Group)
    custom.plot.rda(ord = otu.rda, group = factor(env.all$Group), 
                    title = "", plottype = "n", sd.val = 10, scaling.val = 3)

