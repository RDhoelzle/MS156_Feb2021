### Beta Diversity

source("Functions.R")


# Q1: Is the MB sig dif amung smoker groups
adonis(sqrt(otu1) ~ Group, data=env1, method='euc')
  #pcoa <- pcoa(otu.all)
    #custom.plot.pcoa(pcoa,group = factor(env1$Group), plottype = "n", title = "all")
  rda1 <- rda(sqrt(otu1) ~ env1$Group)
    custom.plot.rda(ord = rda1, group = factor(env1$Group), 
                    title = "Q2", plottype = "n", sd.val = 10, scaling.val = 3)

# Q2: Does smoking cause sig dif MB at 12W
adonis(sqrt(otu2) ~ Group, data=env2, method='euc')
  pcoa2 <- pcoa(otu2)
    custom.plot.pcoa(pcoa2,group = factor(env2$Group), plottype = "n", title = "Q2")
  #rda1 <- rda(sqrt(otu1) ~ env1$Group)
    #custom.plot.rda(ord = rda1, group = factor(env1$Group), 
                    #title = "", plottype = "n", sd.val = 10, scaling.val = 3)
    
# Q3: Does smoking and DP2 cause sig dif MB at 14W
adonis(sqrt(otu3) ~ Group, data=env3, method='euc')
  #pcoa2 <- pcoa(otu2)
    #custom.plot.pcoa(pcoa2,group = factor(env2$Group), plottype = "n", title = "Q2")
  rda3 <- rda(sqrt(otu3) ~ env3$Group)
    custom.plot.rda(ord = rda3, group = factor(env3$Group), 
                    title = "Q3", plottype = "n", sd.val = 10, scaling.val = 3)
    
# Q4: Is the MB sig dif amung non-smoker groups
adonis(sqrt(otu4) ~ Group, data=env4, method='euc')
  #pcoa2 <- pcoa(otu2)
    #custom.plot.pcoa(pcoa2,group = factor(env2$Group), plottype = "n", title = "Q2")
  rda4 <- rda(sqrt(otu4) ~ env4$Group)
    custom.plot.rda(ord = rda4, group = factor(env4$Group), 
                    title = "Q4", plottype = "n", sd.val = 10, scaling.val = 3)
    
# Q5: How does MB develop w/ smoke exposure (b-diversity and heatmap)
adonis(sqrt(otu5) ~ Group, data=env5, method='euc')
  #pcoa2 <- pcoa(otu2)
    #custom.plot.pcoa(pcoa2,group = factor(env2$Group), plottype = "n", title = "Q2")
  rda5 <- rda(sqrt(otu5) ~ env5$Group)
    custom.plot.rda(ord = rda5, group = factor(env5$Group), 
                    title = "Q5", plottype = "n", sd.val = 10, scaling.val = 3)
    
# Q6: How does MB develop w/ smoke and DP2 exposure (b-diversity and heatmap)
adonis(sqrt(otu6) ~ Group, data=env6, method='euc')
  #pcoa2 <- pcoa(otu2)
    #custom.plot.pcoa(pcoa2,group = factor(env2$Group), plottype = "n", title = "Q2")
  rda6 <- rda(sqrt(otu6) ~ env6$Group)
    custom.plot.rda(ord = rda6, group = factor(env6$Group), 
                    title = "Q6", plottype = "n", sd.val = 10, scaling.val = 3)
    