function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

g = 1 ./ (1 .+ exp( -1 .* z))

% =============================================================


end

%{ 
>> sigmoid(10)
g =  0.73106
ans =  0.73106
>> sigmoid(10)
g =  0.99995
ans =  0.99995
>> sigmoid(10000)
g =  1
ans =  1
>> sigmoid(0.5)
g =  0.62246
ans =  0.62246
>> sigmoid(0)
g =  0.50000
ans =  0.50000
>>
%}