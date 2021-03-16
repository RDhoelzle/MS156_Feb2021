### Heatmap 

source("Functions.R")

# Set color palette
pal <- colorRampPalette(c("white","black"))(100)

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
  otu5.heatmap <- otu5.heatmap[which(apply(otu5.heatmap,1,max)>=0.05),]
  nrow(otu5.heatmap)
  
  # Plot otu heatmap
  heatmap.otu5 <- pheatmap(sqrt(otu5.heatmap), color = pal, border_color = "black",
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
  otu6.heatmap <- otu6.heatmap[which(apply(otu6.heatmap,1,max)>=0.05),]
  nrow(otu6.heatmap)
  
  # Plot otu heatmap
  heatmap.otu6 <- pheatmap(sqrt(otu6.heatmap), color = pal, border_color = "black",
                           cluster_rows = F, cluster_cols = F, fontsize = 10,
                           gaps_col = c(13,22),
                           gaps_row = c(1,15))
  
  