## Evaluating

training/test : randomly 7:3

choosing degree according to Jtest cause this hypothesis works good on test set but may not good on new tests <- that is what we really want.

SO, divided data into training; (cross) validation; test 6:2:2


## bias vs variance


## learning curves

tells us whether we need to add samples or not;

self limit the number of training samples;
high bias, adding samples will not be helpful; but in the case of high variance it will;


QUIZ:
TRUE: If a learning algorithm is suffering from high bias, only adding more training examples may not improve the test error significantly.

CODING TIPS:
when calculating grad, instead of do grad(:) then grad(2:end), do grad(:) then grad(1) as the grad may only have one element

when drawing learning curves, make sure do not add regularization terms no matter for training set for cv set.

randomly selected examples:

to determine the training error and cross validation error for
i examples, you should rst randomly select i examples from the training set and i examples from the cross validation set. You will then learn the parameters theta using the randomly chosen training set and evaluate the parameters theta on the randomly chosen training set and cross validation set. The above steps should then be repeated multiple times (say 50) and the averaged error should be used to determine the training error and cross validation error for i examples.



## Design system

spam mails: pick words appear lots of times in training set as features (10,000-50,000);


design a simple algorithm and then develop it according to evidence instead of intuition

different ML algorithms always meet same problems when validating;


## Error metrics

use Precision and Recall to avoid skew class problem(such as always predict y = 0); better than using classification error simply

precision = #TP / #predicted P
recall = #TP / #actural P 
Accuracy = (true positives + true negatives) / (total examples)

For precision and recall, we prefer to detect the less class (in cancer case the less class is positive, meaning having cancer)


F1 score gives lower one (p or r) more weight



BIG data useful:
- enough info(features) to predict for a human expert
- low bias algorithm(many parameters) + large training set == unlikely to overfit (Our learning algorithm is able to represent fairly complex functions (for example, if we train a neural network or other model with a large number of parameters).)


QUIZ: 

Q4: we use measures P R A on validation set instead of training errors;