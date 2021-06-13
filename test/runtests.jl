using TheAlgorithms
using Test

using DataFrames
using DifferentialEquations
using GLM
using LinearAlgebra
using Plots
using Random

@testset "TheAlgorithms" begin

include("knapsack.jl")
include("math.jl")
include("matrix.jl")
include("project-rosalind.jl")
include("searches.jl")
include("statistics.jl")
include("scheduling.jl")

end
