### Alpha Diversity

source("Functions.R")

# Is the MB significantly different between all groups
anova(lm(Sobs ~ factor(Group), data=env.all))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env.all)
anova(lm(Chao1 ~ factor(Group), data=env.all))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env.all)
anova(lm(Shan ~ factor(Group), data=env.all))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env.all)
anova(lm(PD ~ factor(Group), data=env.all))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env.all)

## Additional analyses

# All Groups in both time points


bargraph.CI(x.factor = Group, response = Sobs, group = Group, legend=TRUE, data=env.all)
bargraph.CI(x.factor = Group, response = Chao1, group = Group, legend=TRUE, data=env.all)
bargraph.CI(x.factor = Group, response = Shan, group = Group, legend=TRUE, data=env.all)
bargraph.CI(x.factor = Group, response = PD, group = Group, legend=TRUE, data=env.all)

for(i in colnames(env.all[,8:11])) {
  print(i)
  print(summary(aov(env.all[,i] ~ env.all$Group)))
}


for(i in colnames(env.all[,8:11])) {
  print(i)
  print(cld(lsmeans(aov(env.all[,i] ~ Group, data= env.all), 
                    ~ Group, 
                    Letters = letters, 
                    adjust = "tukey")))
}




