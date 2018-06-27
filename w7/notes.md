it tries to separate the samples as large margin as possible

not too large C will ignore outliers



## SVM Decision boundary

[theta] is orthogonal to the boundary as boundary can be represented as [0 0] and [theta2 -theta1] (as theta1* x1 + theta2 * x2 = 0) so inner product between it and [theta] = 0;


the margin in fact is the projection of closest samples to the theta vector


for computational efficiency, we can use theta_transpose * Matrix * theta

instead of theta ^2 ( = theta_transpose * theta)

for big scale data.


a good SVM implementatioon cost func. is convex problem


QUIZ:

FOR small n and m dataset and underfit happened:


A neural network with many hidden units is a more complex (higher variance) model than logistic regression, so it is less likely to underfit the data.

By using a Gaussian kernel, your model will have greater complexity and can avoid underfitting the data




A linearly separable dataset can usually be separated by many different lines. Varying the parameter will cause the SVM's decision boundary to vary among these possibilities. For example, for a very large value of C, it might learn larger values of theta in order to **increase the margin on certain examples**


It is important to perform feature normalization before using the Gaussian kernel.


the C parameter is a positive value that
controls the penalty for misclassied training examples.


L0: number of non zero elements

L1: sum of absolute value

L2: square root of the sum of all elements' suqare

L3: cubic root of the sum of all elements' cubic