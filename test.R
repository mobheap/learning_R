print("hello world")

show_msg <- function() {
  print("this message is shown by a function")
}

show_msg()

estMarocain <- TRUE
age <- 20
poids <- 83
Nom <- 'Jesus'
options <- c("OADA", "ODCB")
notes <- c(16, 18, 18, 17)
coeffs <- c(2, 4, 4, 4)
moyenne <- sum(notes * coeffs)/sum(coeffs)
absences <- c(0,0,2)
noms <- c('Hamid', 'Malik', 'Hajar')
assiduite <- 20 - absences
assidus <- noms[assiduite > 15]

a <- 1:10
b <- c(3, 5, 7, 9)
print(a > 5)
print(a %in% b)
print(a < 4)

ages <- c(25, 30, 22, 40, 35)
salaires <- c(30, 50, 25, 70, 60)
print(ages > 30)
print(salaires > 40)
expensive <- salaires > 45

depenses <- c(200, 300, 150, 400, 250)
revenus <- c(1000, 1500, 800, 2000, 1200)
solde <- revenus - depenses
pourcentage_depenses <- (depenses / revenus) * 100
totale_depenses <- sum(depenses)
