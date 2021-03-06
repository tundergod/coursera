function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha
%	alpha=0.01 , num_iters=1500
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

	hypothesis = X * theta; % h(theta) = theta0 * X0 + theta1 * X1
	theta0 = theta(1) - (alpha / m) * sum((hypothesis - y) .* X(:,1)); % calculate theta seperately
	theta1 = theta(2) - (alpha / m) * sum((hypothesis - y) .* X(:,2));
	theta = [theta0 ; theta1]; % update theta together


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
