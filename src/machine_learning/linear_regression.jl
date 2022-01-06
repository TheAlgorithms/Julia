using Statistics


# Function to compute to the Mean Squared Error Loss Function
computeCost(X, Y, W, b, m) = 1/2m * sum((X'W .+ b - Y').^2);


function gradient_descent(W, b, X, Y, alpha, num_iters)
    """
    Performs gradient descent to learn W and b
    W: matrix of weights
    b: bias vector
    X: matrix of features
    Y: vector of labels
    """
    m = length(Y); 
    J_history = [];
    for i = 1:num_iters
        W = W - alpha .* (1/m) * (X * (X'W .+ b - Y'));
        b = b - alpha .* (1/m) * sum((X'W .+ b - Y'));
        push!(J_history, computeCost(X, Y, W, b, m));
    end
    return W, b, J_history
end

function linear_regression(X, Y, alpha, num_iters)
    """
    Learns W and b by running a gradient descent algorithm
    """
    m = length(Y);
    W = zeros(1, 1);  # initialize W to zeros (here its 1 dimension)
    b = 0;
    W, b, J_history = gradient_descent(W, b, X, Y, alpha, num_iters);
    return W, b, J_history
end

# Function to predict the output of a given data vector
predict(X, W, b) = X'W .+ b;



# Example usage
X = [1,3,2,5,7,8,8,9,10,12]
Y = [2,4,3,6,8,9,9,10,11,13]

X = reshape(X, 1, length(X));
Y = reshape(Y, 1, length(Y));


W, b, J_history = linear_regression(X, Y, 0.01, 1000);
println(W, b, J_history)
