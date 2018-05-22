setwd("C:/Users/s-ha-/Desktop/Mis documentos/Calidad de Hospitales - data")
mejor <- function(estado,resultado){
    if (resultado == "ataque"){
        columna = 11
    }else if (resultado == "falla"){
        columa = 17
    }else if (resultado == "neumonia"){
        columna = 23
    }else{
        stop("Resultado inválido")
    }
    for (t in 50){
        if (estado==state.abb[c(t)]){
            u <- estado ==state.abb[c(t)]
            o <- c(o,m) 
        }else if (estado!=state.abb[c(t)]){
            w <- estado != state.abb[c(t)]
        }
        
    }
    o <- length(o)
    if (w==T & o ==0){
        stop("Estado inválido")
    }
    outcome <- read.csv("outcome-of-care-measures.csv", na.strings = "Not Available")
    outcome <- data.frame(Estados = outcome[,7],Tasas= outcome[,columna],Hospital=outcome[,2])
    newoutcome<-na.omit(outcome)
    head(newoutcome)
    v <- c()
    Estados <- as.vector(newoutcome[,1]) 
    
    for (i in 1:4707){
        if (estados == Estados[c(i)]){
            v <- c(v,(Estados[c(i)]))
        }
    }   
    v
    length(v)
    for (x in length(v)){
         data.frame(Estado = estado,Tasas = outcome[,2],Hospital = outcome[,3])
    }
    y
}
mejor("TX","ataque")