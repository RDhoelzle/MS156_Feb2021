### Heatmap 

source("Functions.R")

# Transpose otu table, set columns to label, rows to taxonomy, and order by taxonomy
otu.heatmap <- otu.all
row.names(otu.heatmap) <- env.all$Label
otu.heatmap <- as.data.frame(t(otu.heatmap))
row.names(otu.heatmap) == row.names(taxonomy)
row.names(otu.heatmap) <- taxonomy$OTU.tax
otu.heatmap$tax <- taxonomy$taxonomy
otu.heatmap <- otu.heatmap[order(otu.heatmap$tax),]
otu.heatmap <- subset(otu.heatmap, select = -tax)

# Remove low count otus
nrow(otu.heatmap)
otu.heatmap <- otu.heatmap[which(apply(otu.heatmap,1,max)>=0.05),]
nrow(otu.heatmap)

pal <- colorRampPalette(c("white","black"))(100)

# Plot otu heatmap
heatmap.otu <- pheatmap(sqrt(otu.heatmap), color = pal, border_color = "black",
                    cluster_rows = F, cluster_cols = F, fontsize = 10,
                    gaps_col = c(5,10,23,32,40),
                    gaps_row = c(1,15))
