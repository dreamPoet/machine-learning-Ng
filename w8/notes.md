## unsupervised learning

K means

if no point are assign to a cluster, we usually remove that cluster (more useful); if K clusters is asked, then remove this cluster and initialize a new cluster.



Knowing cost func. can help for knowing the algorithm is working correctly and help to find the best clusters.


also called distortion function;

It is not possible for the cost function to sometimes increase. 


run 1- 50/1000 iterations initialization;

when k = 2-10 it will work good; but when there are lots of clusters, there will be not too much difference for different initialization


different performance on k= 5 than k =3 may just because bad initialization



## PCA


different measurements on same feature

inches/cm (not a straght line because numerical errors)

may find hard to find a physical meaning for new constructed features

we hope new feature dimension can be 2 or 3 as it can be visualized.

implimentation: find min projection error (do feature scaling first)


n dimension -> k dimension: what we're going to do is project the data onto the linear subspace spanned by this set of k vectors.


USV' = M; (svd decomp. form)
MM' = USV'(USV')' = USV'VS'U' = U(SS')U' (eigen decom form)

So, U is the eigenvector of MM'

so, USV = svd(XX'), then U is the eigenvector of X, which is the input features

and SS' is the corresponding eigen values.


the param. for svd decomposition is the convariance frankly;
cov = E((X-mu1)(X-mu2)) 


PCA parameters should be learned from training set only (but can be applied to val and test)


PCA throws info. only when you find original data do not work well, then apply PCA.



CODING:
each color need 8-bit (0-255 = 2^8), so image = 128*128*24;

press to 16 color and only 4 bit(16 labels = 2^4) needed to show which color the pixel is, so 16 * 24 + 128*128*4