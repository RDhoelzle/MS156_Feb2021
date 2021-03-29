### Heatmap 

source("Functions.R")

# How does MB develop in non-smokers (Q4)
  # Transpose otu table, set columns to label, rows to taxonomy, and order by taxonomy
  otu4.heatmap <- otu4
  row.names(otu4.heatmap) <- env4$Label
  otu4.heatmap <- as.data.frame(t(otu4.heatmap))
  row.names(otu4.heatmap) == row.names(taxonomy)
  row.names(otu4.heatmap) <- taxonomy$OTU.tax
  otu4.heatmap$tax <- taxonomy$taxonomy
  otu4.heatmap <- otu4.heatmap[order(otu4.heatmap$tax),]
  otu4.heatmap <- subset(otu4.heatmap, select = -tax)

  # Remove low count otus
  nrow(otu4.heatmap)
  otu4.heatmap <- otu4.heatmap[which(apply(otu4.heatmap,1,max)>=0.05),]
  nrow(otu4.heatmap)

  # Plot otu heatmap
  heatmap.otu4 <- pheatmap(sqrt(otu4.heatmap), color = pal, border_color = "black",
                    cluster_rows = F, cluster_cols = F, fontsize = 10,
                    gaps_col = c(5,10),
                    gaps_row = c(1,13))

# Q5: How does MB develop w/ smoke exposure (b-diversity and heatmap)
  # Transpose otu table, set columns to label, rows to taxonomy, and order by taxonomy
  otu5.heatmap <- otu5
  row.names(otu5.heatmap) <- env5$Label
  otu5.heatmap <- as.data.frame(t(otu5.heatmap))
  row.names(otu5.heatmap) == row.names(taxonomy)
  row.names(otu5.heatmap) <- taxonomy$OTU.tax
  otu5.heatmap$tax <- taxonomy$taxonomy
  otu5.heatmap <- otu5.heatmap[order(otu5.heatmap$tax),]
  otu5.heatmap <- subset(otu5.heatmap, select = -tax)
  
  # Remove low count otus
  nrow(otu5.heatmap)
  otu5.heatmap.f <- otu5.heatmap[which(apply(otu5.heatmap,1,max)>=0.05),]
  nrow(otu5.heatmap.f)
  
  # Plot otu heatmap
  heatmap.otu5 <- pheatmap(sqrt(otu5.heatmap.f), color = pal, border_color = "black",
                           cluster_rows = F, cluster_cols = F, fontsize = 10,
                           gaps_col = c(13,22),
                           gaps_row = c(1,15))
  

# Q6: How does MB develop w/ smoke and DP2 exposure (b-diversity and heatmap)
  # Transpose otu table, set columns to label, rows to taxonomy, and order by taxonomy
  otu6.heatmap <- otu6
  row.names(otu6.heatmap) <- env6$Label
  otu6.heatmap <- as.data.frame(t(otu6.heatmap))
  row.names(otu6.heatmap) == row.names(taxonomy)
  row.names(otu6.heatmap) <- taxonomy$OTU.tax
  otu6.heatmap$tax <- taxonomy$taxonomy
  otu6.heatmap <- otu6.heatmap[order(otu6.heatmap$tax),]
  otu6.heatmap <- subset(otu6.heatmap, select = -tax)
  
  # Remove low count otus
  nrow(otu6.heatmap)
  otu6.heatmap.f <- otu6.heatmap[which(apply(otu6.heatmap,1,max)>=0.05),]
  nrow(otu6.heatmap.f)
  
  # Plot otu heatmap
  heatmap.otu6 <- pheatmap(sqrt(otu6.heatmap.f), color = pal, border_color = "black",
                           cluster_rows = F, cluster_cols = F, fontsize = 10,
                           gaps_col = c(13,22),
                           gaps_row = c(1,15))

# Q7: How does MB compare after 14W smoke and/or DP2 exposure (b-diversity and heatmap)  
  otu7.heatmap <- otu7
  row.names(otu7.heatmap) <- env7$Label
  otu7.heatmap <- as.data.frame(t(otu7.heatmap))
  row.names(otu7.heatmap) == row.names(taxonomy)
  row.names(otu7.heatmap) <- taxonomy$OTU.tax
  otu7.heatmap$tax <- taxonomy$taxonomy
  otu7.heatmap <- otu7.heatmap[order(otu7.heatmap$tax),]
  otu7.heatmap <- subset(otu7.heatmap, select = -tax)
  
  # Remove low count otus
  nrow(otu7.heatmap)
  otu7.heatmap.f <- otu7.heatmap[which(apply(otu7.heatmap,1,max)>=0.05),]
  nrow(otu7.heatmap.f)
  
  # Plot otu heatmap
  heatmap.otu7 <- pheatmap(sqrt(otu7.heatmap.f), color = pal, border_color = "black",
                           cluster_rows = F, cluster_cols = F, fontsize = 10,
                           gaps_col = c(13,22,30),
                           gaps_row = c(1,15))
  