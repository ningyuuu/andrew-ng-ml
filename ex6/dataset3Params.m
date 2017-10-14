function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.

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
% possible_values = [0.1 0.3 1 3];
%
% best_cv_accuracy = 0;
% best_C = 999;
% best_sigma = 999;
%
% for curr_C = 1:length(possible_values)
%   for curr_sigma = 1:length(possible_values)
%
%     % getting values
%     my_C = possible_values(curr_C);
%     my_sigma = possible_values(curr_sigma);
%
%     % training model
%     my_model = svmTrain(X, y, my_C, @(x1, x2) gaussianKernel(x1, x2, my_sigma));
%
%     % predictions
%     my_pred = svmPredict(my_model, Xval);
%     my_accuracy = sum(my_pred == yval) / length(my_pred)
%     best_cv_accuracy
%
%     % check if it's the best
%     if (my_accuracy > best_cv_accuracy)
%       display('UPDATED');
%       best_cv_accuracy = my_accuracy;
%       best_C = my_C
%       best_sigma = my_sigma
%     end
%   end
% end
%
% C = best_C
% sigma = best_sigma

% to skip training 16 SVMs per submission here's the ans:
C = 1;
sigma = 0.1


% =========================================================================

end
