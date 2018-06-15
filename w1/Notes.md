# Week 1 Intro.

ifinite number of features: SVM


hypothesis: a name used from old, may not be suitable now but remain using; hypothesis is the function maps input to estimated output

cost function 

square error function = Mean squared error
there are also other cost function, but square error one is suitable for most algorithms such as regression.

The mean is halved ($\frac{1}{2}$) usually as a convenience for the computation of the gradient descent, as the derivative term of the square function will cancel out the $\frac{1}{2}$

Gradient descent: a method to find smallest cost function coresponding parameters. Different initialization may lead to different local minimum.

:= assiginment
alpha: learning rate


batch gradient descent: use all samples to update params.

linear regression has global optimum, no local optimum.


vector : n x 1; n dimensional vector

matrix multiplication : m x n * n x t  = m x t

only square matrix has inverse matrix


inverse matrix calculation:

$A A^{-1} = I$

1. Cramer rule: calculate columns of $A^{-1}$ separately
2. SLE to separately calculate columne (upper trangular)