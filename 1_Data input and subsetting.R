### Mahfuz MS165 16S analyses 

# Paul Dennis and Rob Hoelzle Feb 2021

# Data input and subsetting

# Get data

# Get environmental metadata

env.all <- read.table('../Data/env.csv', header=TRUE, sep=',', row.names=1)
env.all <- env.all[ order(row.names(env.all)), ] # make sure env.all is in correct order

# Get OTU table

otu.tmp <- read.table('../Data/otu_with_tax_19900.csv', header=TRUE, sep=',', row.names=1)
otu.all <- as.data.frame(t(otu.tmp[,-49]/19900)) # transpose and divide by 19900 to get relative abundances
otu.all <- otu.all[ order(row.names(otu.all)), ] # make sure otu.all is in correct order

# Get Taxonomy

taxonomy <- otu.tmp[,49] # Make a list of OTUs with the respective taxonomy
taxonomy <- as.data.frame(taxonomy)
row.names(taxonomy) <- row.names(otu.tmp)
taxonomy$OTU = row.names(taxonomy)
taxonomy$OTU.tax = paste(taxonomy$OTU,taxonomy$taxonomy,sep='.')

# Get weighted unifrac

w_unifrac.all <- read.table('../Data/weighted_unifrac.csv', header=TRUE, sep=',', row.names=1)
w_unifrac.all <- w_unifrac.all[ order(row.names(w_unifrac.all)), ] # make sure w_unifrac.all is in correct order

# Check the samples are in the same order etc...

row.names(otu.all) == row.names(env.all)
row.names(otu.all) == row.names(w_unifrac.all)
rm(otu.tmp) # tidy up

#Subset to questions

env1 <- env.all[env.all$Q1 == 1,]
env2 <- env.all[env.all$Q2 == 1,]
env3 <- env.all[env.all$Q3 == 1,]
env4 <- env.all[env.all$Q4 == 1,]
env5 <- env.all[env.all$Q5 == 1,]
env6 <- env.all[env.all$Q6 == 1,]
env7 <- env.all[env.all$Q7 == 1,]
env8 <- env.all[env.all$Q8 == 1,]

otu1 <- otu.all[env.all$Q1 == 1,]
otu2 <- otu.all[env.all$Q2 == 1,]
otu3 <- otu.all[env.all$Q3 == 1,]
otu4 <- otu.all[env.all$Q4 == 1,]
otu5 <- otu.all[env.all$Q5 == 1,]
otu6 <- otu.all[env.all$Q6 == 1,]
otu7 <- otu.all[env.all$Q7 == 1,]
otu8 <- otu.all[env.all$Q8 == 1,]

w_unifrac1 <- w_unifrac.all[env.all$Q1 == 1,env.all$Q1 == 1]
w_unifrac2 <- w_unifrac.all[env.all$Q2 == 1,env.all$Q2 == 1]
w_unifrac3 <- w_unifrac.all[env.all$Q3 == 1,env.all$Q3 == 1]
w_unifrac4 <- w_unifrac.all[env.all$Q4 == 1,env.all$Q4 == 1]
w_unifrac5 <- w_unifrac.all[env.all$Q5 == 1,env.all$Q5 == 1]
w_unifrac6 <- w_unifrac.all[env.all$Q6 == 1,env.all$Q6 == 1]
w_unifrac7 <- w_unifrac.all[env.all$Q7 == 1,env.all$Q7 == 1]
w_unifrac8 <- w_unifrac.all[env.all$Q8 == 1,env.all$Q8 == 1]

