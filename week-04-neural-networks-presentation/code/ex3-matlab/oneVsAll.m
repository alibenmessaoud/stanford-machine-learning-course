function [all_theta] = oneVsAll(X, y, num_labels, lambda)
%ONEVSALL trains multiple logistic regression classifiers and returns all
%the classifiers in a matrix all_theta, where the i-th row of all_theta 
%corresponds to the classifier for label i
%   [all_theta] = ONEVSALL(X, y, num_labels, lambda) trains num_labels
%   logistic regression classifiers and returns each of these classifiers
%   in a matrix all_theta, where the i-th row of all_theta corresponds 
%   to the classifier for label i

% Some useful variables
m = size(X, 1);
n = size(X, 2);

% You need to return the following variables correctly 
all_theta = zeros(num_labels, n + 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the following code to train num_labels
%               logistic regression classifiers with regularization
%               parameter lambda. 
%
% Hint: theta(:) will return a column vector.
%
% Hint: You can use y == c to obtain a vector of 1's and 0's that tell you
%       whether the ground truth is true/false for this class.
%
% Note: For this assignment, we recommend using fmincg to optimize the cost
%       function. It is okay to use a for-loop (for c = 1:num_labels) to
%       loop over the different classes.
%
%       fmincg works similarly to fminunc, but is more efficient when we
%       are dealing with large number of parameters.
%

  for i = 1:num_labels
% Example Code for fmincg:
%
%     % Set Initial theta
%     initial_theta = zeros(n + 1, 1);
      initial_theta = zeros(n + 1, 1);
%     
%     % Set options for fminunc
%     options = optimset('GradObj', 'on', 'MaxIter', 50);
      options = optimset('GradObj', 'on', 'MaxIter', 50);
% 
%     % Run fmincg to obtain the optimal theta
%     % This function will return theta and the cost 
%     [theta] = ...
%         fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), ...
%                 initial_theta, options);
      [theta] = fmincg(@(t)(lrCostFunction(t, X, (y == i), lambda)), initial_theta, options);
%
%     Return all_theta
      all_theta(i, :) = theta';
  end

% =========================================================================


end

%{
Training One-vs-All Logistic Regression...
Iteration    50 | Cost: 1.387304e-02
Iteration    50 | Cost: 5.725253e-02
Iteration    50 | Cost: 6.415590e-02
Iteration    50 | Cost: 3.598165e-02
Iteration    50 | Cost: 6.180208e-02
Iteration    50 | Cost: 2.224919e-02
Iteration    50 | Cost: 3.448274e-02
Iteration    50 | Cost: 8.541680e-02
Iteration    50 | Cost: 7.970735e-02
Iteration    50 | Cost: 1.010870e-02
%}
