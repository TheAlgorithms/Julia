"""
Verlet integration is an integration method used to integrate newtons - law of motion. It is frequently used to find trajectories in molecular dynamics simulation.
The function takes `four` inputs viz,
- `f` : the differential equation
- `x0` : the initial condition. This is a Vector with the first element as initial value for position (x_0) and the second initial condition for velocity (v_0) 
- `tspan`: is the time span for integration. It is a tuple (initial time, final time)
This functionr returns a tuple (x,t):
- `x` is the solution
- `t` is the array containing the time points
Reference:
- https://www.algorithm-archive.org/contents/verlet_integration/verlet_integration.html
Contributed by: [Ved Mahajan](https://github.com/Ved-Mahajan)
"""
function verlet_integration(f, x0, tspan, Δt = 1.0e-3)
    s, e = tspan
    N = Int(floor((e - s) / Δt))
    x = Vector{Float64}(undef, N)
    t = collect(s:Δt:(e-Δt))
    x[1] = x0[1]
    x[2] = x0[1] + x0[2] * Δt + 0.5 * f(x0[1]) * (Δt)^2

    for i in 2:(N-1)
        x[i+1] = 2 * x[i] - x[i-1] + f(x[i]) * (Δt)^2
    end
    return x, t
end
