# Efficient and Scalable Clustering Algorithms for Optimizing the Average Silhouette Width

### Motivation

The Average Silhouette Width (ASW) is a popular internal clustering validation index used to measure clustering quality and determine an optimal number of clusters. There have been only a few proposals in the literature, such as the Optimum Silhouette (OSil) algoritm and the PAMSil algorithm, using the ASW as an objective function in cost-based clustering. OSil and PAMSil are computationally expensive with $\mathcal{O}(qkN^3)$ time complexity, where $q$ is the number of iterations needed for convergence, $k$ is the number of clusters, and $N$ is the dataset size. Moreover, for large datasets, $q$ can be really large. Consequently, both PAMSil and OSil are only suitable for clustering small datasets.

### Description

This R-package (EfficientOASW v.0.0.0.9000) implements the computationally expensive OSil algorithm and provides an $\mathcal{O}(N)$ faster implementation of the exact OSil algorithm (effOSil). 

### Future releases
A new scalable approximation algorithm of OSil (scalOSil) and PAMSil will be provided in the next releases.

### References

[Batool, F. and Hennig, C., 2021. Clustering with the average silhouette width. Computational Statistics & Data Analysis, 158, p.107190.](https://www.sciencedirect.com/science/article/abs/pii/S0167947321000244)

[Van der Laan, M., Pollard, K. and Bryan, J., 2003. A new partitioning around medoids algorithm. Journal of Statistical Computation and Simulation, 73(8), pp.575-584.](https://www.tandfonline.com/doi/abs/10.1080/0094965031000136012)



