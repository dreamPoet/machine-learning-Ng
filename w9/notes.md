## anomaly detection

mainly used in unsupervised learning prob.


(mu - 3sigma, mu + 3sigma) = 0.9974


to evaluating an anomaly algorithm, we need labeled data.

not recommend to use same val and test set.


Looks like a skewed supervised learning classification. <- so use F1 or  P R will be a better method instead of misclassification error. <- we can decide epsilon depend on the F1 score (on val set).

Compared with supervised learning, anomaly learning tend to detect behaviours that cannot be predicted via existed data or exsited positive data are not enough.



use multivariate gaussian when data set m is much larger than feature number n; (make sure no redundent feature -> linear dependent, which make it non-invertible)


## collaborative filtering

== **low rank matrix factorization**

-In linear algebra, the rank of a matrix A is the dimension of the vector space generated (or spanned) by its columns.


every user is collaborate to get better features

learning features , do not need to add theta_0 (1); as if it need a feature as 1, it can choose 1 for theta_1 directly instead of fixing 1 by us.

Random initialization serves as symmetry breaking (similar to the random initialization of a neural network’s parameters) and ensures the algorithm learns features $x^{(1)}, \dots, x^{(n_m)}$  that are different from each other.


**mean normalization** - if a user does not mark for any movie, we assume its grading as the avg. pre-processing.

If  there is no marking for a movie, we can try to do mean normalization along column instead of row(a user does not marking any movies); but this is trivial as if a movie does not marking by anyone, you should not recommend it to anyone.
