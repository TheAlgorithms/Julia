"""
    simpsons_integration(f::Function, a::Real, b::Real, n::Int)

Simpson's rule uses a quadratic polynomial on each subinterval of a partition to approximate the function f(x) and to compute the definite integral. 
This is an improvement over the trapezoid rule which approximates f(x) by a straight line on each subinterval of a partition.
For more details of the method, check the link in the reference.

# Arguments
- `f`: The function to integrate. (ar the moment only single variable is suported)
- `a`: Start of the integration limit.
- `b`: End of the integration limit.
- `n`: Number of points to sample. (as n increase, error decrease)

# Examples/Test
```julia
# aproximate pi with f(x) = 4 / (1 + x^2)
julia> simpsons_integration(x -> 4 / (1 + x^2), 0, 1, 100_000)
3.1415926535897936
julia> simpsons_integration(x -> 4 / (1 + x^2), 0, 1, 100_000) ≈ pi
true
```

# References:
- https://personal.math.ubc.ca/~pwalls/math-python/integration/simpsons-rule/

# Contributed By:- [AugustoCL](https://github.com/AugustoCL)
"""
function simpsons_integration(f::Function, a::Real, b::Real, n::Int)
    # width of the segments
    Δₓ = (b - a) / n

    # rules of the method (check link in references)
    a₁(i) = 2i - 2
    a₂(i) = 2i - 1

    # sum of the heights
    Σ = sum(1:(n/2)) do i
        return f(a + a₁(i) * Δₓ) + 4f(a + a₂(i) * Δₓ) + f(a + 2i * Δₓ)
    end

    # approximate integral of f
    return (Δₓ / 3) * Σ
end
