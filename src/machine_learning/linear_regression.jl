using Statistics

"""
    linear_regression(X::Matrix, Y::Matrix, alpha::Float64, iterations::Int64)

    Linear Regression Algorithm using Gradient Descent 
    to find the best fit line for the data.
    
    Arguments :
        - X : Training data set of shape [m x n]
        - Y : Labels corresponding to the training data set of shape [m x 1]
        - alpha : Learning rate
        - iterations : Number of iterations to train
    Returns :
        - W : Weight vector 
        - b : Bias
        - J_history : Cost Function History

    

    gradient_descent(W::Matrix, b, X::Matrix, Y::Matrix, alpha::Float64, num_iters::Int64)
  
    Performs gradient descent to learn W and b

    Arguments
        - `W`: matrix of weights
        - `b`: bias vector
        - `X`: matrix of features
        - `Y`: vector of labels
        - `alpha`: learning rate ( generally ranges from 0.01 to 0.00001 )
        - `num_iters`: number of iterations to run gradient descent

    Returns:
        - `W`: matrix of weights
        - `b`: bias vector
        - `J_history`: vector of cost values after each iteration


    
    # Contributors:- [Navaneeth Sharma](https://github.com/Navaneeth-Sharma) 
"""

function gradient_descent(
    W::Matrix,
    b,
    X::Matrix,
    Y::Matrix,
    alpha::Float64,
    num_iters::Int64,
)
    m = length(Y)
    J_history = []
    for i in 1:num_iters
        W = W - alpha .* (1 / m) * (X * (X'W .+ b - Y'))
        b = b - alpha .* (1 / m) * sum((X'W .+ b - Y'))
        push!(J_history, 1 / 2m * sum((X'W .+ b - Y') .^ 2))
    end
    return W, b, J_history
end

function linear_regression(
    X::Matrix,
    Y::Matrix,
    alpha::Float64,
    num_iters::Int64,
)
    W = zeros(1, size(X, 1))
    b = 0
    W, b, J_history = gradient_descent(W, b, X, Y, alpha, num_iters)
    return W, b, J_history
end

# Function to predict the output of a given data vector
predict(X::Matrix, W::Matrix, b::Float64) = X'W .+ b;

# Example usage
X = [1, 3, 2, 5, 7, 8, 8, 9, 10, 12]
Y = [2, 4, 3, 6, 8, 9, 9, 10, 11, 13]

X = reshape(X, 1, length(X));
Y = reshape(Y, 1, length(Y));

W, b, J_history = linear_regression(X, Y, 0.01, 1000);

output = predict(X, W, b)
println("The predicted is: $output")
