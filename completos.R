dir = "C:/Users/s-ha-/Desktop/Mis documentos/spectdata"
completos <- function(directorio, id=1:332){
    for(x in id){
        a <- formatC(x,width = 3,flag="0")
        b <- paste(a,"csv",sep="")
        t <- na.omit(read.csv(b))
        u <- t
        y <- nrow(t)
    }
    data.frame(r=id,y)
}
completos(dir,220)
