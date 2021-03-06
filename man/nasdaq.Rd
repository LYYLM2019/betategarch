\name{nasdaq}
\alias{nasdaq}
\docType{data}
\title{ Daily Apple stock returns }
\description{The dataset contains two variables, day and nasdaqret. Day is the date of the return and nasdaqret is the daily (closing value) log-return in percent of the Apple stock over the period 10 September 1985 - 10 May 2011 (a total of 6835 observations).}
\usage{data(nasdaq)}
\format{
  A data frame with 3215 observations:
  \describe{
    \item{\code{day}}{a factor}
    \item{\code{nasdaqret}}{a numeric vector}
  }
}
\details{The data is studied in more detail in Harvey and Sucarrat (2014), and in Sucarrat (2013).}
\source{The source of the original raw data is http://yahoo.finance.com/.}
\references{
Harvey and Sucarrat (2014),	'EGARCH models with fat tails, skewness and leverage'. Computational Statistics and Data Analysis 76, pp. 320-338.\cr
Sucarrat (2013), 'betategarch: Simulation, Estimation and Forecasting of First-Order Beta-Skew-t-EGARCH models'. The R Journal (Volume 5/2), pp. 137-147.\cr
}
\examples{
data(nasdaq) #load data into workspace
mymod <- tegarch(nasdaq[,"nasdaqret"]) #estimate volatility model of Apple returns
print(mymod)
}
\keyword{datasets}
