function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % ali: we minimize the value of J(θ) by changing the values of the vector θ, not by changing X or y.
    % ali: so we call computeCost
    % ali: Assuming you have implemented gradient descent and computeCost correctly, 
    % your value of J(θ) should never increase, and should converge to a steady value by the end of the algorithm

    H = X * theta;
    T = [0 ; 0];
    for i = 1 : m,
      T = T + (H(i) - y(i)) * X(i,:)';	
    end

    % ali: supply the updates to θ within each iteration
    theta = theta - (alpha * T) / m;
    
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
