source("MorphoTools.r")
data<-read.morphodata("clipboard", popul = F)
summary(data)
str(data)        
rownames(data)
colnames(data)

cent.orig<-read.morphodata("clipboard", popul = F)
results1<-descr.all(data)
boxplot(Cmcgl~Taxon,data=cent.orig,cex.axis=1,cex.lab=1,range=1.5,col="grey", 
        xlab="Taxon",ylab="ML: length of appendages (mm)", 
        pars=list(whisklty=1,boxwex=0.7)) 
cent.pop_orig<-popul.means(cent.orig)
export.res(cent.pop_orig)
populations<-popul.otu(cent.pop_orig)

charhist(cent.orig)
individuals<-cent.orig
correlations.p<-cormat(individuals)
correlations.s<-cormat(individuals,method="spearman")


results<-clust(data)  # UPGMA (default) 
results<-clust(data,method="average")  # the same, "UPGMA" can also be used 
results<-clust(data,method="ward")    # Ward’s method 
results<-clust(data,method="complete")  # complete linkage 

par(mar=c(2,4.5,1,1))
plot(results,cex=0.6,cex.axis=0.8,cex.lab=0.8,frame.plot=T,hang=-0.1, 
     main="",sub="",xlab="",ylab="distance") 
rect.hclust(results,h=7,which=c(1,2),border=c("red","green"))
rect.hclust(popul.ward,h=10,which=1,border="blue")