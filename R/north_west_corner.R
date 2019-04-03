min_maliyet_function <- function(maliyet, birim, arz, talep){
    x <- 1
     y <- 1
      min_maliyet <- 0
        while( x < 4 & y < 4){
          if( talep[y] > arz[x]){
             birim[x, y] <- arz[x]
               talep[y] <- talep[y] - birim[x, y]
                 arz[x] <- arz[x] - birim[x, y]
                   min_maliyet <- min_maliyet + birim[x, y] * maliyet[x, y]
                      x <- x + 1
           }else if (talep[y] < arz[x]){
                      birim[x, y] <- talep[y]
                        talep[y] <- talep[y] - birim[x, y]
                          arz[x] <- arz[x] - birim[x , y]
                             min_maliyet <- min_maliyet + birim[x, y] * maliyet[x, y]
                              y <- y + 1
          }else if (talep[y]  ==  arz [x]){
              birim[x, y] <- talep[y]
                 talep[y] <- talep[y] - birim[x, y]
                    arz[x] <- arz[x] - birim[x, y]
                      min_maliyet <- min_maliyet + birim [x, y] * maliyet[x, y]
                         y <- y + 1 
                           x <- x + 1
    }
  }
  return(list(
    min_maliyet, 
    birim
  ))
}
