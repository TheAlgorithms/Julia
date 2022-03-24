"""
    bab_sqrt(S::Real; tolerance = 1e-6, guess = nothing)

The Babylonian Method of calculating a square root is a simple iterative method to determine square roots. A full description of the algorithm can be found on [Wikipedia](https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)

# Arguments:
- `S`: The number to calculate the square root for.

# Positional Arguments
- `tolerance`: How close the square of the square root needs to be from the input value. `abs(S - xn^2) < tolerance`
- `guess`: The initial value to use for `xn`

# Examples/Tests 
```julia
julia> bab_sqrt(100)
10.000000000107445

julia> bab_sqrt(100, guess = 15)
10.000000000131072

julia> bab_sqrt(π, guess = 1)
1.7724538555800293

julia> bab_sqrt(π, guess = 1, tolerance = 2)
2.0707963267948966
```

# Algorithm: 

```julia
while tolerance <= abs(xn^2 - S)
    xn = (1 / 2) * (xn + S / xn)
end
```

# References:
[Methods of computing square roots](https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)

```

# Contributed by:- [Anson Biggs](https://ansonbiggs.com) 
"""
function bab_sqrt(S::Real; tolerance = 1e-6, guess = nothing)

    # Can only calculate for positive numbers
    if S < 0
        throw(DomainError("Input must be greater than zero"))
    end

    xn = guess
    if xn === nothing
        xn = S / 2
    elseif xn < 0
        xn = abs(xn)
    end

    while tolerance <= abs(xn^2 - S)
        xn = (1 / 2) * (xn + S / xn)
    end
    return xn
end
