### Nestle 16S analyses 

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

#env1 <- env[env$Q1 == 1,]

#otu1 <- otu[env$Q1 == 1,]

#w_unifrac1 <- w_unifrac[env$Q1 == 1,env$Q1 == 1]

