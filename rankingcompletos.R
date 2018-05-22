rankingcompleto <- function(resultado, num = "mejor"){
    if (resultado == "ataque"){
        columna = 11
    }else if (resultado == "falla"){
        columa = 17
    }else if (resultado == "neumonia"){
        columna = 23
    }else{
        stop("Resultado inválido")
    }
   
    outcome <- read.csv("outcome-of-care-measures.csv", na.strings = "Not Available")
    tabla <- data.frame(Tasas = outcome[,11])
    nombre <- data.frame(Hospital = outcome[,2])
    x <- data.frame(nombre,tabla)
    x
    
}