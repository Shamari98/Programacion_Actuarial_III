dir = "C:/Users/s-ha-/Desktop/Mis documentos/spectdata"
mediacontaminante <- function(directorio, contaminante, id=1:332){
    if (contaminante == "sulfate")
        colu=2
    else if (contaminante == "nitrate")
        colu=3
    
    for (x in id){
        x0 <- formatC(x,width = 3,flag="0")
        x1<-paste(x0,"csv",sep="")
        m <- read.csv(x1) 
        if is.na(colu)
            na.omit(m[,colu])   
        else
        v <- length(m[,colu])+ v
        add <- sum(m[,colu],na.rm=TRUE)+ add
        media <- mean(m[,colu],na.rm=TRUE)
        v <- v+media
    }
        o <- add/v
        o
}

mediacontaminante(dir,"sulfate")
