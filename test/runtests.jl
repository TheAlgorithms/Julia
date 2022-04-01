using TheAlgorithms
using Test

using LinearAlgebra

@testset "TheAlgorithms" begin
    include("basic.jl")
    include("conversions.jl")
    include("cipher.jl")
    include("data_structures.jl")
    include("knapsack.jl")
    include("math.jl")
    include("matrix.jl")
    include("project-rosalind.jl")
    include("scheduling.jl")
    include("searches.jl")
    include("sorts.jl")
    include("statistics.jl")
    include("strings.jl")
end
