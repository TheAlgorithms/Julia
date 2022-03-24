"""
    trapezoid_integration(f::Function, a::Real, b::Real, n::Int)

The trapezoidal rule works by approximating the region under the graph of the function f(x) as a trapezoid and calculating its area.

# Arguments
- `f`: the function to integrate. (at the momment only single variable is suported)
- `a`: Start of the integration limit.
- `b`: End of the integration limit.
- `n`: Number of points to sample. (as n increase, error decrease)

# Examples/Test
```julia
julia> trapezoid_integration(x -> 4 / (1 + x^2), 0, 1, 100_000)
3.1415926535731526
julia> trapezoid_integration(x -> 4 / (1 + x^2), 0, 1, 100_000) ≈ pi
true
```
# References:
-https://personal.math.ubc.ca/~pwalls/math-python/integration/trapezoid-rule/
-https://en.wikipedia.org/wiki/Trapezoidal_rule

# Contributed By:- [AugustoCL](https://github.com/AugustoCL)
"""
function trapezoid_integration(f::Function, a::Real, b::Real, n::Int)
    # width of the trapezoids
    Δₓ = (b - a) / n

    # sum of the height of the trapezoids
    Σ = 0.5 * f(a) + sum(f(i) for i in (a+Δₓ):Δₓ:(b-Δₓ)) + 0.5 * f(b)

    # approximate integral of f
    return Δₓ * Σ
end
