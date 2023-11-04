"""
    runge_kutta_integration(f::Function, x0::Real, y0::Real, h::Real, x_stop::Real)

Numerically solve initial value problems of the form ``y' = f(x, y)`` to find ``y(x)`` using the Runge-Kutta 4th order integration scheme.

Starting with the differential equation ``\\frac{\\mathrm{d}y}{\\mathrm{d}x} = y' = f(x, y)`` and the initial condition ``y(x_0) = y_0``, each step calculates 4 approximations of the gradient
```math
\\begin{align*}
    k_1 &= f(x_n, y_n),\\\\
    k_2 &= f(x_n + \\frac{h}{2}, y_n + k_1\\frac{h}{2}),\\\\
    k_3 &= f(x_n + \\frac{h}{2}, y_n + k_2\\frac{h}{2}),\\\\
    k_4 &= f(x_n + h, y_n + k_3h),
\\end{align*}
```
and uses the weighted average of them,

```math
\\bar{k} = \\frac{k_1 + 2k_2 + 2k_3 + k_4}{6},
```

to find the approximate value of ``y(x_{n+1})`` and update ``x`` and ``y`` accordingly

```math
\\begin{align*}
    x &\\rightarrow x_{n+1} = x_n + h\\\\
    y &\\rightarrow y_{n+1} = y_n + h\\bar{k}.
\\end{align*}
```

# Arguments:
- `f`: The function ``y' = f(x, y)`` to solve for ``y(x)``.
- `x0`: The starting value of x.
- `y0`: The starting value of y.
- `h`: The step size, should be >0.
- `x_stop`: The final value of x to solve to, i.e. integrate over the range `[x0, x_stop]`

# Examples
```julia
julia> # If you have a constant slope of y' = 1, the analytic solution is y = x
julia> runge_kutta_integration((x, y)->1, 0, 0, 1, 3)
([0.0, 1.0, 2.0, 3.0], [0.0, 1.0, 2.0, 3.0])

julia> # Consider solving y' = exp(x), which has the analytic solution y = exp(x).
julia> runge_kutta_integration((x, y)->exp(x), 0, 1., 0.1, 0.1)
([0.0, 0.1], [1.0, 1.105170921726329])

julia> exp.([0.0, 0.1])
2-element Vector{Float64}:
 1.0
 1.1051709180756477

```

# References
 - [https://en.wikipedia.org/wiki/Initial_value_problem](https://en.wikipedia.org/wiki/Initial_value_problem)
 - [https://en.wikipedia.org/wiki/Runge%E2%80%93Kutta_methods](https://en.wikipedia.org/wiki/Initial_value_problem)

# Contributors:
- [E-W-Jones](https://github.com/E-W-Jones)
"""
function runge_kutta_integration(
    f::Function,
    x0::Real,
    y0::Real,
    h::Real,
    x_stop::Real,
)
    h > 0 || throw(DomainError(h, "The step size `h` should be >0."))

    x = Float64(x0)
    y = Float64(y0)
    output_x = [x]
    output_y = [y]

    while x < x_stop
        k1 = f(x, y)
        k2 = f(x + h / 2, y + k1 * h / 2)
        k3 = f(x + h / 2, y + k2 * h / 2)
        k4 = f(x + h, y + k3 * h)

        y += h * (k1 + 2k2 + 2k3 + k4) / 6
        x += h

        push!(output_x, x)
        push!(output_y, y)
    end

    return output_x, output_y
end
