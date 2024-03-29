\name{min_maliyet_function}
\alias{min_maliyet_function}
\title{
Kuzeybat� Kosesi Yontemi
}
\description{
Bu fonksiyon kuzeybat� kosesi yontemiyle minimum maliyeti verir.
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
Ula�t�rma problemleri i�in olurlu ba�lang�� ��z�m� bulabilmek i�in atama maliyetleri g�z�n�ne al�nmaks�z�n ula�t�rma matrisinin sol-�st (kuzey-bat�) k��esinden ba�layarak atama yap�lan ve olurlu ��z�m bulunana de�in arz merkezlerinden talep merkezlerine do�ru atama yap�lan y�ntem.
\value{

\references{

}
\author{
B�lge KagaN Ozbay
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
