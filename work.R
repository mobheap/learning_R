sin()
tan()
log()
round()
cos()








prenom <- readline('enter your name: ')
cat('Bienvenue', prenom)
notes <- scan(nmax = 4, quiet = TRUE)
somme <- sum(notes)
moyenne <- somme / 4
cat(paste('la moyenne est de', moyenne))






quantite <- readline('quantite demande: ')
if(quantite < 10){
  print('petite commande')
}else if(quantite <= 50){
  print('moyenne commande')
}else{
  print('grande commande')
}
...








ventes <- numeric(6)
c <- 1
repeat{
  cat('Entrez les ventes du mois', c)
  vente <- scan(n=1)
  if (vente < 0){
    cat('ERREUR: le nombre doit etre positif.')
  }else{
    ventes[c] <- vente
    c <- c + 1
    if(c > 6){
      break
    }
  }
}

for (i in 1:6) {
  vente <- ventes[i]
  if(vente>3000){
    print(vente,'dh de vente pendant le mois',i)
  }
}

counter <- 1
totale_ventes <- 0
while(counter < 7){
  totale_ventes <- totale_ventes + ventes[counter]
}
if(totale_ventes < 20000){
  nouv_totale <- 20000 - ventes[6]
}
x <- ventes[6]
while(nouv_totale < 20000){
  print('ajoutons 10%')
  x <- x + (0.1 * x)
  nouv_totale <- nouv_totale + x
}







bienv <- function(){
  print('Bienvenue!')
}
somme2_func <- function(x,y){
  return(sum(x,y))
}
somme3_func <- function(x=0, y=0, z=0){
  return(sum(x,y,z))
}
moyenne_func <- function(x){
  return (sum(x) / length(x))
}
bienv()
somme2_func(5,4)
somme3_func(5,4,5)
x <- c(7,6,5)
moyenne_func(x)







L1 <- c('Tamesna', 'Marrakesh', 'Tanger', 'Casablanca')
L2 <- c('Paris', 'Nantes', 'Lyon', 'Marseille')
cat('longeur de L1',length(L1))
cat('longeur de L2',length(L2))
L1[1] <- 'Rabat'
VillesRegiona1 <- c(L1[2:4])
L1 <- sort(L1)
L1 <- rev(L1)
L3 <- seq(10, 10000, by=10)
L4 <- rep(c(0,1,2), each=6)
print(L4)
print(max(L3))
print(min(L3))
print(sum(L3))
print(median(L3))
print(sd(L3))







x <- 'cite'
y <- 'des'
z <- 'metiers'
t <- 'competences'
substr(x,1,3)
paste(x,y)
toupper(z)
sum(unlist(strsplit(t, "")) == "R")







A <- "Bonjour" 
nchar(A)

B <- "Exemple"
substr(B, 1, 4)

nom <- "iMAD"
age <- 25
paste(nom, age)

C <- "bonjour"
toupper(C)

D <- "Bonjour"
tolower(D)

nom <- "Imad"
age <- 30
paste0(nom, age)

E <- "Bonjour à tous"
strsplit(E, " ")

f <- "excellent"
gsub("e", "E", f)

chaine <- c("chat", "chien", "oiseau")
grep("ch", chaine)

G <- "excellent"
sub("e", "E", G)

nom <- "Alice"
age <- 25
sprintf("Nom: %s, Age: %d", nom, age)








notes <- matrix(c(15, 18, 13, 17,14,19,12,16,15,16,18,14), nrow = 3, ncol = 4)
colnames(notes) <- c("EGTSA206", "M201", "M203", "M204")
rownames(notes) <- c("Stagiaire1", "Stagiaire2", "Stagiaire3")
print(colnames(notes))
print(rownames(notes))
print(notes)
print(dim(notes))
print(length(notes))
print(colMeans(notes))
print(rowMeans(notes))
apply(notes, 1, summary)
apply(notes,2, summary)







liste_notes <- list(
  Stagiaire1 = c(EGTSA206 = 15, M201 = 17, M203 = 12),
  Stagiaire2 = c(EGTSA206 = 18, M201 = 14, M203 = 16),
  Stagiaire3 = c(EGTSA206 = 13, M201 = 19, M203 = 15)
)
print(length(liste_notes))
cat("Structure de la liste : ")
str(liste_notes)
Stagiaire4 <- c(EGTSA206 = 16, M201 = 15, M203 = 14)
liste_notes <- c(liste_notes, list(Stagiaire4))
names(liste_notes) <- c("Stagiaire1","Stagiaire2","Stagiaire3","Stagiaire4")
unlisted_notes <- unlist(liste_notes)
print(unlisted_notes)
moyenne_par_stagiaire <- sapply(liste_notes, mean)
print(moyenne_par_stagiaire)
arrondies_notes <- lapply(liste_notes, round)
print(arrondies_notes)
resume_statistique <- lapply(liste_notes, summary)
print(resume_statistique)
View(liste_notes)









df <- data.frame(
  EGTSA206 = c(15, 18, 13),
  M201 = c(17, 14, 19),
  M203 = c(12, 16, 15),
  M204 = c(16, 18, 14),
  row.names = c("Stagiaire1", "Stagiaire2", "Stagiaire3")
)
print(df)

str(df)
ncol(df)
dim(df)
colnames(df)
rownames(df)
moy <- apply(df, 1, mean)
print(moy)
moy <- apply(df, 2, mean)
print(moy)
print(colMeans(df))
print(rowMeans(df))
print(summary(df))
