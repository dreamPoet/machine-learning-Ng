## Cost func.

1. the double sum simply adds up the logistic regression costs calculated for each cell in the output layer

2. the triple sum simply adds up the squares of all the individual Θs in the entire network.

3. the i in the triple sum does not refer to training example i


first term:
i: input samples
k: output units


second term: regularization term
summing all theta except i = 0
upper l: layer l to layer l+1
lower ji: the i index of theta for each activation index j in layer l
s_l: number of units in layer l


## BP

sigmoid function derivative: s'(x) = s(x)*(1-s(x))
use 1/s(x) to proof;


## gradient checking

used to check whether BP(and even other models) is implemented right or not

epsilon too small will lead to numerical prob. $10^{-4}$ is suitable

2-sided difference is more accurate thant 1-sided difference, so we use J(theta+epsilon) -J(theta-epsilon) (2-sided)

## initialization randomly
 == symmetry breaking
zero initialization will let all hidden units work identically (just as logistic regression)


## architecture

usually one hidden layer is enough;
defaultly if there are more than one hidden layers, we set same number of units in all hidden layers; more units will be better, but it will become more computatioanlly expensive; meanwhile, it should be more than input features.


training a neural network:
1. choose weights similar to 0 randomly.


CODING BUGS:

DO NOT need to set the y(1) = 1 for label 0, as in predicted H, is it still H(10) = 1 for label 0; 