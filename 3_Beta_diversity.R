### Beta Diversity

source("Functions.R")


# Q1: Is the MB sig dif among smoker groups
adonis(sqrt(otu1) ~ Group, data=env1, method='euc')
  #pcoa <- pcoa(otu.all)
    #custom.plot.pcoa(pcoa,group = factor(env1$Group), plottype = "n", title = "all")
  rda1 <- rda(sqrt(otu1) ~ env1$Group)
    custom.plot.rda(ord = rda1, group = factor(env1$Group), 
                    title = "Q1", plottype = "n", sd.val = 10, scaling.val = 3)

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
    
# Q4: Is the MB sig dif among non-smoker groups
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
    
# Q7: How does MB compare after 14W smoke and/or DP2 exposure (b-diversity and heatmap)
adonis(sqrt(otu7) ~ Group, data=env7, method='euc')
  #pcoa2 <- pcoa(otu2)
    #custom.plot.pcoa(pcoa2,group = factor(env2$Group), plottype = "n", title = "Q2")
  rda7 <- rda(sqrt(otu7) ~ env7$Group)
    custom.plot.rda(ord = rda7, group = factor(env7$Group), 
                    title = "Q7", plottype = "n", sd.val = 10, scaling.val = 3)
    
# Q8: Are the 14W smoke and 14W smoke + DP2 MBs significantly different?
adonis(sqrt(otu8) ~ Group, data=env8, method='euc')
  pcoa8 <- pcoa(otu8)
    custom.plot.pcoa(pcoa8,group = factor(env8$Group), plottype = "n", title = "Q8")
#  rda8 <- rda(sqrt(otu8) ~ env8$Group)
#    custom.plot.rda(ord = rda8, group = factor(env8$Group), 
#                    title = "Q8", plottype = "n", sd.val = 10, scaling.val = 3)

# Indicator analysis
otu.indicators <- indval(otu.all, env.all$Group)

levels(factor(env.all$Group))
summary(otu.indicators, p=0.05, type="short")

#Non.smoker.12W
bargraph.CI(env.all$Group, otu.all[,'Otu37']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu31']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu27']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu232']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu269']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu332']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu73']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu409']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu345']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu126']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu241']*100)

#Non.smoker.14W
bargraph.CI(env.all$Group, otu.all[,'Otu205']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu228']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu302']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu221']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu390']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu145']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu59']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu283']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu188']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu115']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu239']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu244']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu265']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu268']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu312']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu267']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu3']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu36']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu231']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu110']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu303']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu214']*100)

#Non.smoker.6W
bargraph.CI(env.all$Group, otu.all[,'Otu6']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu453']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu51']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu289']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu17']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu383']*100)

#Smoker.12W
bargraph.CI(env.all$Group, otu.all[,'Otu382']*100)

#Smoker.14W
bargraph.CI(env.all$Group, otu.all[,'Otu22']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu234']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu351']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu8']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu317']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu169']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu352']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu410']*100)

#Smoker.14W.DP2
bargraph.CI(env.all$Group, otu.all[,'Otu87']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu139']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu425']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu206']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu123']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu147']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu319']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu104']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu55']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu227']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu292']*100)
bargraph.CI(env.all$Group, otu.all[,'Otu137']*100)

