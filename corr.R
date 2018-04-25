dir = "C:/Users/s-ha-/Desktop/Mis documentos/spectdata"
corr <- function(directorio,horizonte=0){
    
    for(z in 1:332){
        a <- formatC(x,width = 3,flag="0")
        b <- paste(a,"csv",sep="")
        t <- na.omit(read.csv(b))
        ren <- nrow(t) 
        if(ren > horizonte){
            col2 <- data.frame(t[,2])
            col3 <- data.frame(t[,3])
            correlacion <- cor(col2,col3)
            max <- c(max,correlacion)  
        }
        
    }
    max 
}

corr(directorio,0)
