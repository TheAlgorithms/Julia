using TheAlgorithms
using Test

using LinearAlgebra

@testset "TheAlgorithms" begin
    include("basic.jl")
    include("conversions.jl")
    include("cipher.jl")
    include("data_structures.jl")
    include("dynamic_programming.jl")
    include("graph.jl")
    include("knapsack.jl")
    include("longest_increasing_subsequence.jl")
    include("machine_learning.jl")
    include("math.jl")
    include("matrix.jl")
    include("project_euler.jl")
    include("project_rosalind.jl")
    include("scheduling.jl")
    include("searches.jl")
    include("sorts.jl")
    include("statistics.jl")
    include("strings.jl")
end
