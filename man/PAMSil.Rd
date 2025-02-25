% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PAMSil.R
\name{PAMSil}
\alias{PAMSil}
\title{The PAMSil algorithm}
\usage{
PAMSil(dx, K)
}
\arguments{
\item{dx}{A dist object, which can be computed using the stats::dist() function.}

\item{K}{An integer vector specifying the number of clusters. By default, K = 2:12.}
}
\value{
\describe{
\item{best_clustering}{The clustering achieving the highest ASW value.}
\item{best_asw}{The highest ASW value.}
\item{best_medoids}{The medoids associated with the clustering maximizing the ASW.}
\item{k}{The estimated number of clusters.}
\item{clusterings}{The PAMSil clusterings for all k in K.}
\item{asw}{The ASW values associated with the clusterings.}
\item{medoids}{The medoids associated with the clustering solutions.}
\item{nIter}{The numbers of iterations needed for convergence.}
}
}
\description{
This function implements the PAMSil algorithm.
}
\details{
This function implements the PAMSil algorithm proposed by Van der Laan & Pollard (2003),
a k-medoid clustering algorithm whose objective function is the ASW.
}
\examples{
library("cluster")
x = scale(faithful)
dx = dist(x)
PAMSil_clustering = PAMSil(dx = dx, K = 2:12)
par(mfrow = c(1,2))
plot(faithful, col = PAMSil_clustering$best_clustering, pch = PAMSil_clustering$best_clustering)
plot(2:12, PAMSil_clustering$asw, type = "l", xlab = "k", ylab = "ASW")
par(mfrow = c(1,1))

}
\references{
Van der Laan, M., Pollard, K. and Bryan, J., 2003. A new partitioning around medoids algorithm. Journal of Statistical Computation and Simulation, 73(8), pp.575-584.
}
\author{
Minh Long Nguyen \email{edelweiss611428@gmail.com}
}
