## gradient descent with large datasets

use a low bias algorithm + large dataset;

usually use a much smaller dataset to see the model work well or not firstly (m = 1000) + learning curves



## stochastic gradient descent

batch gradient decent: consider all samples in each step

rather than in each optimise step, dealling with all data, it optimise the theta towarding each datum.

stochastic gradient descent is moving around a range around the global minimum, while batch gd will almost get a straght line to the minimum.


outer loop : 1- 10 times
for truely large dataset, once is enough.


### converge:

smaller learning rate may reach a better converge result

increasing average samples : more smoothy curve; but the feedback you get about the performance of the algorith is delayed

people not use decreasing learning rate as you need lots of time to decide two const.


## Online learning

similar to stochastic gradient descent

when a sample come in, use this sample to update Theta, and then throw out this sample and never use it again. The reason is we will have loads of data coming in, so we don't need to use repeated data.

can adopt to changing user preference.



### phone

each time get 10 samples (x, y), x is the feature of this phone and y is whether user click it or not. use 



## map reduce

-- Hadoop