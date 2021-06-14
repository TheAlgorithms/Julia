# Based on the introductory discussion on
# https://www.maa.org/press/periodicals/loci/joma/the-sir-model-for-spread-of-disease-the-differential-equation-model

## Uncomment the following lines if used as a standalone
# using DifferentialEquations
# using Plots

function SIR(du, u, p, t)
    s, i, r = u
    b, k = p
    du[1] = -b * s * i
    du[2] = b * s * i - k * i
    du[3] = k * i
end

# TODO: make the following a doctest example
    # #initian conditions
    # p = [0.5/7900000.0,0.33]
    # u0 = [7900000.0,10.0,0.0]
    # tspan = (0.0,140.0)

    # #solve
    # sir = ODEProblem(SIR,u0,tspan,p)
    # sol = solve(sir)

    # #plot
    # plot(sol)
