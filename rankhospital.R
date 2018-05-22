rankhospital <- function(estado, resultado, num = "best"){
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
    head(outcome)
    
    v <- c()
    Estados <- as.vector(outcome[,1]) 
    Estados
    
    for (i in 1:4707){
        if (estado == Estados[c(i)]){
        v <- c(v,(Estados[c(i)]))
        }
    }   
    v
    length(v)
    
arrange(ddply(Estados,.(estados),summarize, min = min(Tasas),posicion=which.min(Tasas),hospital=outcome[posicion,2]))
    
   
}

