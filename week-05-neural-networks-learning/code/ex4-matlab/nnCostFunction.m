function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.
%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%


a1 = X;
a1 = [ones(m,1) a1];

z2 = Theta1 * a1';
a2 = sigmoid(z2);
a2 = [ones(m,1) a2'];

z3 = Theta2 * a2';
a3 = sigmoid(z3);

h_theta = a3;

yk = zeros(num_labels, m);
for i=1:m,
  yk(y(i),i)=1;
end

J = 1/m * sum(sum(-yk .* log(h_theta) -(1-yk) .* log(1 - h_theta)))

%% You should see that the cost is about 0.287629
%% Feedforward Using Neural Network ...
%% J =  0.28763

% Note: should not be regularizing the terms that correspond to the bias.
nbColOfTheta1 = size(Theta1, 2);
nbColOfTheta2 = size(Theta2, 2);
th1 = Theta1(:, 2: nbColOfTheta1);
th2 = Theta2(:, 2: nbColOfTheta2);

% regularization formula
regularized = lambda/(2 * m) * (sum(sum(th1 .* th1)) + sum(sum(th2 .* th2)));
J = J + regularized;

% You should see that the cost is about 0.383770.
% Cost at parameters (loaded from ex4weights): 0.383770


% -------------------------------------------------------------

% Don't know why but we need it; 
X = [ones(m,1) X];

for t = 1:m
  
  a1 = X(t,:);
  
  z2 = Theta1 * a1';
  a2 = sigmoid(z2);
  
  % bias this
  z2 = [1; z2];
  a2 = [1; a2]; 
  
  z3 = Theta2 * a2;
  a3 = sigmoid(z3);
  
  % δ3k = (a3k − yk),
  delta3 = a3 - yk(:, t);
  
  % δ(2) = Θ(2)T * δ(3) .∗ g'(z(2))
  delta2 = (Theta2' * delta3) .* sigmoidGradient(z2);
  
  % Accumulate the gradient from this example using the following formula.
  delta2 = delta2(2:end);
  
  % ∆ (l) = ∆ (l) + δ (l+1) (a (l) ) T
  Theta1_grad = Theta1_grad + delta2 * a1;
  Theta2_grad = Theta2_grad + delta3 * a2';
  
endfor

% -------------------------------------------------------------

Theta1_grad(:, 1)     = 1/m .* Theta1_grad(:, 1);
Theta1_grad(:, 2:end) = 1/m .* Theta1_grad(:, 2:end) + lambda/m * Theta1(:, 2:end);

Theta2_grad(:, 1)     = 1/m .* Theta2_grad(:, 1);
Theta2_grad(:, 2:end) = 1/m .* Theta2_grad(:, 2:end) + lambda/m * Theta2(:, 2:end);

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
