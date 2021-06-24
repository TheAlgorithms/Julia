function identity(x)
    return x
end

function binary_step(x)
    return x < 0 ? 0 : 1 
end

function sigmoid(x)
    return 1/ (1 + exp(-x))
end

function tanh(x)
    return (exp(x)-exp(-x))/(exp(x)+exp(-x))
end

function ReLU(x)
    return x <=0 ? 0 : x
end

function GELU(x)
    return 0.5x*(1+tanh(sqrt(2/π)*(x+0.044715x^3)))
end

function softplus(x)
    return log1p(exp(x))
end

function ELU(x)
    a = 1
    return x<=0 ? a*(exp(x)-1) : x
end

function SELU(x)
    lambda =1.0507
    alpha = .67326
    return x<0 ? lambda*(alpha*(exp(x)-1)) : lambda*x
end

function LeakyReLU(x)
    return x<0 ? 0.01x : x
end

function PReLU(x)
    alpha = 2
    return x<0 ? alpha*x : x
end

function SiLU(x)
    return x/(1+exp(-x))
end

function gaussian(x)
    return exp(-(x^2))
end

# lineplot([ReLU], -2π, 2π)
# lineplot([tanh], -2π, 2π)
# lineplot([softplus], -2π, 2π)
# lineplot([GELU], -2π, 2π)
# lineplot([sigmoid], -2π, 2π)
# lineplot([binary_step], -2π, 2π)
# lineplot([identity], -2π, 2π)