### Weighted UniFrac

#	Is the MB significantly different between all groups both PND
adonis((w_unifrac.all) ~ Group, data=env.all, method='euc')
pcoa.uf <- pcoa(w_unifrac.all)
custom.plot.II.pcoa(ord = pcoa.uf, 
                    colours = factor(env.all$Group), 
                    size = 1.4, 
                    ellipses = env.all$Group, 
                    plottype = "n", 
                    title = "", legend.position = "bottomright")


