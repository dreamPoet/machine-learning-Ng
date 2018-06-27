function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

possible_C = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
possible_sigma = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
error = zeros(length(possible_C),length(possible_sigma));

for c = 1 : length(possible_C)
    for s = 1 : length(possible_sigma)
        model= svmTrain(X, y, possible_C(c), @(x1, x2) gaussianKernel(x1, x2, possible_sigma(s)));
        predictions = svmPredict(model, Xval);
        error(c,s) = mean(double(predictions ~= yval));
        
    end
end


m = min(error(:));
[row, col] = find(error == m);  

C = possible_C(row(1));
sigma = possible_sigma(col(1));




% =========================================================================

end
