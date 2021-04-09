### Alpha Diversity

source("Functions.R")

# Q1: Is the MB sig dif among smoker groups
anova(lm(Sobs ~ factor(Group), data=env1))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env1)
anova(lm(Chao1 ~ factor(Group), data=env1))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env1)
anova(lm(Shan ~ factor(Group), data=env1))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env1)
anova(lm(PD ~ factor(Group), data=env1))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env1)
## Additional analyses
summary(aov(env1$Shan ~ env1$Group))
cld(lsmeans(aov(env1$Shan ~ Group, data= env1), ~ Group, Letters = letters, adjust = "tukey"))

# Q2: Does smoking cause sig dif MB at 12W
anova(lm(Sobs ~ factor(Group), data=env2))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env2)
anova(lm(Chao1 ~ factor(Group), data=env2))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env2)
anova(lm(Shan ~ factor(Group), data=env2))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env2)
anova(lm(PD ~ factor(Group), data=env2))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env2)
## Additional analyses
summary(aov(env2$Shan ~ env2$Group))
cld(lsmeans(aov(env2$Shan ~ Group, data= env2), ~ Group, Letters = letters, adjust = "tukey"))

# Q3: Does smoking and DP2 cause sig dif MB at 14W
anova(lm(Sobs ~ factor(Group), data=env3))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env3)
anova(lm(Chao1 ~ factor(Group), data=env3))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env3)
anova(lm(Shan ~ factor(Group), data=env3))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env3)
anova(lm(PD ~ factor(Group), data=env3))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env3)
## Additional analyses
summary(aov(env3$Shan ~ env3$Group))
cld(lsmeans(aov(env3$Shan ~ Group, data= env3), ~ Group, Letters = letters, adjust = "tukey"))

# Q4: Is the MB sig dif among non-smoker groups
anova(lm(Sobs ~ factor(Group), data=env4))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env4)
anova(lm(Chao1 ~ factor(Group), data=env4))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env4)
anova(lm(Shan ~ factor(Group), data=env4))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env4)
anova(lm(PD ~ factor(Group), data=env4))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env4)
## Additional analyses
summary(aov(env4$Shan ~ env4$Group))
cld(lsmeans(aov(env4$Shan ~ Group, data= env4), ~ Group, Letters = letters, adjust = "tukey"))

# Q5: How does MB develop w/ smoke exposure (b-diversity and heatmap)

# Q6: How does MB develop w/ smoke and DP2 exposure (b-diversity and heatmap)

# Q7: How does MB compare after 14W smoke and/or DP2 exposure (b-diversity and heatmap)

# Q8: Are the 14W smoke and 14W smoke + DP2 MBs significantly different?
anova(lm(Sobs ~ factor(Group), data=env8))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env8)
anova(lm(Chao1 ~ factor(Group), data=env8))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env8)
anova(lm(Shan ~ factor(Group), data=env8))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env8)
anova(lm(PD ~ factor(Group), data=env8))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env8)
## Additional analyses
summary(aov(env8$Shan ~ env8$Group))
cld(lsmeans(aov(env8$Shan ~ Group, data= env8), ~ Group, Letters = letters, adjust = "tukey"))

## Additional analyses

# All Groups in both time points


bargraph.CI(x.factor = Group, response = Sobs, group = Group, legend=TRUE, data=env.all)
bargraph.CI(x.factor = Group, response = Chao1, group = Group, legend=TRUE, data=env.all)
bargraph.CI(x.factor = Group, response = Shan, group = Group, legend=TRUE, data=env.all)
bargraph.CI(x.factor = Group, response = PD, group = Group, legend=TRUE, data=env.all)

for(i in colnames(env.all[,9:12])) {
  print(i)
  print(summary(aov(env.all[,i] ~ env.all$Group)))
}


for(i in colnames(env.all[,9:12])) {
  print(i)
  print(cld(lsmeans(aov(env.all[,i] ~ Group, data= env.all), 
                    ~ Group, 
                    Letters = letters, 
                    adjust = "tukey")))
}

##ANOVA on all OTUs through all groups
otu.taxa <- otu.all
otu.taxa$Group <- env.all$Group


tukey_log <- file('../Log/otus_by_group_tukey.log')
sink(tukey_log, append = TRUE)
sink(tukey_log, append = TRUE, type = "message")

for(i in colnames(otu.taxa[,1:461])) {
  print(i)
  print(taxonomy[i,]$taxonomy)
  print(summary(aov(otu.taxa[,i] ~ otu.taxa$Group)))
}

print('tukey')

for(i in colnames(otu.taxa[,1:461])) {
  print(i)
  print(taxonomy[i,]$taxonomy)
  print(cld(lsmeans(aov(otu.taxa[,i] ~ Group, data= otu.taxa), 
                    ~ Group, 
                    Letters = letters, 
                    adjust = "tukey")))
}

sink()
sink(type = "message")

otu.bargraph <- as.data.frame(otu.all[,c('Otu188', 'Otu22', 'Otu319')])
otu.bargraph$Group <- env.all$Group
otu.bargraph <- otu.bargraph %>% pivot_longer(cols = starts_with('Otu'), names_to = "Otu", values_to = 'value')

bargraph.CI(otu.bargraph$Group, otu.bargraph$value*100, otu.bargraph$Otu, xlab = "Group", ylab = "RA (%)", legend = T)


