% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scalOSil.R
\name{scalOSil}
\alias{scalOSil}
\title{The Scalable Optimum Silhouette Algorithm}
\usage{
scalOSil(dx, K, n, ns, rep, initMethod, variant)
}
\arguments{
\item{dx}{A dist object, which can be computed using the stats::dist() function.}

\item{K}{An integer vector specifying the number of clusters. By default, K = 2:12.}

\item{n}{An integer specifying the sample size. If not specified, n = 0.1*N where
N is the number of observations.}

\item{ns}{An integer specifying the number of random samples in each instance. By default, ns = 10.}

\item{rep}{An integer specifying the number of scalOSil instances. By default, rep = 1.}

\item{initMethod}{A character vector specifying initialisation methods. By default,
initMethod = "average"; however, to achieve the best initialisation in terms of the ASW,
various initialisation methods should be used (e.g., initMethod = c("single", "average", "complete", "pam")).
See ?Init for more details.}

\item{variant}{An algorithmic variant. Options include "scalable" and "original". By default, variant = "scalable", indicating that scalOSil is used.
If variant = "original", the original, computationally expensive FOSil algorithm is used.}
}
\value{
\describe{
\item{best_clustering}{The clustering achieving the highest ASW value.}
\item{best_asw}{The highest ASW value.}
\item{k}{The estimated number of clusters.}
\item{clusterings}{The scalOSil clusterings for all k in K.}
\item{asw}{The ASW values associated with the clusterings.}
}
}
\description{
This function implements the Scalable Optimum Silhouette (scalOSil) algorithm.
}
\details{
This function implements the Scalable Optimum Silhouette (scalOSil) algorithm, an O(n) runtime improvement of
the original, computationally expensive Fast OSil (FOSil) algorithm proposed by Batool & Hennig (2021) where n is
the sub-sample size. This function also implements the FOSil algorithm for comparision purporses.
}
\examples{
x = scale(faithful)
dx = dist(x)
scalOSil_clustering = scalOSil(dx = dx, K = 2:12, n = ceiling(0.25*nrow(x)), ns = 10, rep = 1)
set.seed(59)
par(mfrow = c(1,2))
plot(faithful, col = scalOSil_clustering$best_clustering, pch = scalOSil_clustering$best_clustering)
plot(2:12, scalOSil_clustering$asw, type = "l", xlab = "k", ylab = "ASW")
par(mfrow = c(1,1))

}
\references{
Batool, F. and Hennig, C., 2021. Clustering with the average silhouette width. Computational Statistics & Data Analysis, 158, p.107190.
}
\author{
Minh Long Nguyen \email{edelweiss611428@gmail.com}
}
