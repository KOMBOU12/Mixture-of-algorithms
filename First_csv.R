#getwd( )
install.packages("FactoMineR") # Fonctions : PCA, dimdesc
library(FactoMineR)
install.packages("factoextra") # Fonctions: get_eigenvalue, fviz_var, fviz_ind
library(factoextra)
library(ggplot2)
install.packages("psych") # Fonctions : Cortest, barlett, KMO
library(psych)
# Extracting our dataframe
df = read.csv("Boston.csv", row.names = "X")
#Structure of the dataframe
str(df)

#Summary statistics of the dataframe
summary(df)
head(df)

#Correlation of the data frame
cor(df)

dim(df)
print(df)

#Extraction of the data # Extraction par nom de colonne

 crim <- df$crim
 zn <- df$zn
 indus <- df$indus
 chas <- df$chas
 nox <- df$nox
 rm <- df$rm
 age <- df$age
 dis <- df$dis
 
 # Creating the boxplot
 
 boxplot(crim, zn, indus, chas, nox, names=c("crim", "zn", "indus", "chas", "nox"))
 #Etape 1: Construction de la matrice de correlation
 pairs(df[,1:12])
 matrice.corr <- cor(df[,1:13])
 
 #Etape 2: Observons si c'est une matrice identitaire
 det(matrice.corr) #si H0: det(matrice.corr) =1 H1: det(matrice.corr)< ou>1
 cortest.bartlett(matrice.corr, n=506)
 
 #Etape 3: Indice de maximisation de la base s'il y'a une solution factorielle
 KMO(matrice.corr)
 
 #Etape 4: Faire l'ACP
 res.pca <- PCA(df, scale.unit= TRUE, ncp =5, graph = TRUE)
