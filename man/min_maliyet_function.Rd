\name{min_maliyet_function}
\alias{min_maliyet_function}
\title{
Kuzeybatý Kosesi Yontemi
}
\description{
Bu fonksiyon kuzeybatý kosesi yontemiyle minimum maliyeti verir.
}
\usage{
min_maliyet_function(maliyet, birim, arz, talep)
}
\arguments{
  \item{maliyet}{

  \item{birim}{

  \item{arz}{

  \item{talep}{
}
}
\details{
Ulaþtýrma problemleri için olurlu baþlangýç çözümü bulabilmek için atama maliyetleri gözönüne alýnmaksýzýn ulaþtýrma matrisinin sol-üst (kuzey-batý) köþesinden baþlayarak atama yapýlan ve olurlu çözüm bulunana deðin arz merkezlerinden talep merkezlerine doðru atama yapýlan yöntem.
\value{

\references{

}
\author{
Býlge KagaN Ozbay
}
\note{

}

\seealso{

}
\examples{
function (maliyet, birim, arz, talep) 
{
    x <- 1
    y <- 1
    min_maliyet <- 0
    while (x < 4 & y < 4) {
        if (talep[y] > arz[x]) {
            birim[x, y] <- arz[x]
            talep[y] <- talep[y] - birim[x, y]
            arz[x] <- arz[x] - birim[x, y]
            min_maliyet <- min_maliyet + birim[x, y] * maliyet[x, 
                y]
            x <- x + 1
        }
        else if (talep[y] < arz[x]) {
            birim[x, y] <- talep[y]
            talep[y] <- talep[y] - birim[x, y]
            arz[x] <- arz[x] - birim[x, y]
            min_maliyet <- min_maliyet + birim[x, y] * maliyet[x, 
                y]
            y <- y + 1
        }
        else if (talep[y] == arz[x]) {
            birim[x, y] <- talep[y]
            talep[y] <- talep[y] - birim[x, y]
            arz[x] <- arz[x] - birim[x, y]
            min_maliyet <- min_maliyet + birim[x, y] * maliyet[x, 
                y]
            y <- y + 1
            x <- x + 1
        }
    }
    return(list(min_maliyet, birim))
  }
}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }
