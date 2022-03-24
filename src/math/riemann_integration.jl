"""
    riemann_integration(f::Function, a::Real, b::Real, n::Int, approx::Symbol = :midpoint)

a Riemann sum is a certain kind of approximation of an integral by a finite sum.
The sum is calculated by partitioning the region into shapes (rectangles, trapezoids, parabolas, or cubics) that together form a region that is similar to the region being measured, then calculating the area for each of these shapes, and finally adding all of these small areas together.

Because the region filled by the small shapes is usually not exactly the same shape as the region being measured, the Riemann sum will differ from the area being measured. 
This error can be reduced by dividing up the region more finely, using smaller and smaller shapes. 
As the shapes get smaller and smaller, the sum approaches the Riemann integral.

# Arguments
- `f`: the function to integrate. (at the momment only single variable is suported)
- `a`: Start of the integration limit.
- `b`: End of the integration limit.
- `n`: Number of points to sample. (as n increase, error decrease)
- `approx`: Indicate the method of approximation (midpoint, left or right)

# Examples
```julia
julia> riemann_integration(x -> x, 1, 3, 1_000, :midpoint)  # 4.0
julia> riemann_integration(x -> x, 1, 3, 1_000, :left)      # 3.997997997997998
julia> riemann_integration(x -> x, 1, 3, 1_000, :right)     # 4.002002002002002
julia> riemann_integration(x -> 3*x^2, 0, 1, 100000)        # integrate a polynomial
0.9999999999750021
julia> riemann_integration(x -> sin(x), 0, pi, 1000)          # integrate the sin function
2.0000008241146774
```

# Refereces
- https://www.khanacademy.org/math/ap-calculus-ab/ab-integration-new/ab-6-2/a/riemann-sums-review
- https://math.libretexts.org/Courses/Mount_Royal_University/MATH_2200%3A_Calculus_for_Scientists_II/2%3A_Techniques_of_Integration/2.5%3A_Numerical_Integration_-_Midpoint%2C_Trapezoid%2C_Simpson's_rule
- https://abel.math.harvard.edu/~knill/teaching/math1a_2011/handouts/40-numerical.pdf
- https://en.wikipedia.org/wiki/Riemann_integral


Contributed By:- [AugustoCL](https://github.com/AugustoCL)
"""
function riemann_integration(
    f::Function,
    a::Real,
    b::Real,
    n::Int,
    approx::Symbol = :midpoint,
)
    # width of the rectangles
    Δₓ = (b - a) / n

    # methods of approximation (:midpoint, :left, :right)
    if approx == :midpoint
        sum_range = (a+Δₓ/2):Δₓ:(b-Δₓ/2)
    elseif approx == :left
        sum_range = a:Δₓ:(b-Δₓ)
    elseif approx == :right
        sum_range = (a+Δₓ):Δₓ:b
    else
        throw(
            ArgumentError(
                "The symbol :$approx is not a valid argument. Insert :midpoint, :left or :right",
            ),
        )
    end

    # sum of the height of the rectangles
    Σ = 0.0
    for i in 2:length(sum_range)
        a = sum_range[i-1]
        b = sum_range[i]
        xᵢ = a + (b - a) * rand()   # draw a uniform(a,b) for each subinterval [a,b]
        Σ += f(xᵢ)
    end

    # approximate integral of f
    return Δₓ * Σ
end
