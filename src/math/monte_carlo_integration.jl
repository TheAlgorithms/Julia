"""
    monte_carlo_integration(f::Function, a::Real, b::Real, n::Int)

Monte carlo integration is a very easy and scalable way to do multidimentional integrals.
However, only single variable integrals are considered.

# Arguments
- `f`: the function to integrate. (at the momment only single variable is suported)
- `a`: start in the integration limits.
- `b`: endin the integration limits.
- `N`: Number of points to sample. For most simple functions, 1000 to 10,000 should be okay.

# Examples
```julia
julia> monte_carlo_integration(x -> 3*x^2, 0, 1, 100000) # integrate a polynomial
1.0000037602209

julia> monte_carlo_integration(x -> sin(x), 0, pi, 1000) # integrate the sin function
2.0018927826323756
```

# References
- https://www.scratchapixel.com/lessons/mathematics-physics-for-computer-graphics/monte-carlo-methods-in-practice/monte-carlo-integration
- https://kingaa.github.io/sbied/pfilter/monteCarlo.html

# Contributors
- [AugustoCL](https://github.com/AugustoCL)
- [Ved Mahajan](https://github.com/Ved-Mahajan)
"""
function monte_carlo_integration(f::Function, a::Real, b::Real, n::Int)
    Δₓ = ((b - a) / n)

    Σ = 0.0
    for _ in 1:n
        # generate uniform(a, b) using uniform(0, 1)
        Xᵢ = a + (b - a) * rand()
        Σ += f(Xᵢ)
    end

    return Δₓ * Σ
end
