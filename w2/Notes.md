# Multiple features(var)


## feature scalling

idea: make sure feature are on a similar scale to make converge more quickly when using gradient descent.
we try to get every feature in around -1 <= x <= 1 range (in fact any similar range is ok)

Ng suggest -3 to 3/ -1/3 to 1/3 are acceptable for biggest or smallest.

### mean normalization
make features have approx. zero mean

for each feature, replace it with (feature_value - mean_of _this_feature)/range
range can be  (max-min) or std deviation.


## learning rate

how to make sure gradient descent working correctly?
A: J(theta), the cost function, should decrease after every iteration; did not change much == converge

how to choose learning rate alpha:

too small: slow converge
too large: may not decrease on every iteration (slow converge may still possible); may not converge



try different alpha and plot J(theta) to choose a suitable one
0.001,0.01,0.1,1
then increase 3 times; for example, 0.01 is good, then set 0.03;then 0.09...


## polynomial

We can create new features intead of original features
eg: area from length + width

may have a better model by this way;

### polynomial regression
use quadratic/cubic/square_root to replace original x_1, x_2 etc
but the range will be very different, remember to use feature scaling


# Nomral Equation

computing params analysitcally.

one step to get the optimum value. do not need feature scaling

$X\theta = y$

$\theta = (X^TX)^{-1}X^Ty$

n is large (like more than 10,000), use gradient descent will better (faster, O(kn^2)) as normal equation need O(N^3) for inverse calculation; for more complex models, still need to use gradient descent


### Noninvertibility of $X^TX$

$\theta = (X^TX)^{-1}X^Ty$

singular matrices are not invertible

so we use pinv instead of inv

reasons: 1. not linear independent, in real case, that is, redundant features. 2. too many features with little samples to fit them: use regularization or delete some features




### some commands:
who/whos
give the var in space
save name.mat var_name

load('')

A([1 3], :)
get entire first and third row

A(:) put all elem. into a vector

C = [A, B] combine horizontal
C = [A; B] combine vertical

magic(3) 

max(A, [], 1)
sum(A, 1)

flipud

pinv: pseudo inverse

hold on;
xlabel; ylabel
legend
subplot
axis([])
imagesc(A)
colorbar, colormap gray;
disp('string')



###  Vectorization

