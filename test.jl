using Test
using Base.Filesystem

@testset "Test Algorithms" begin
    for (root, dirs, files) in walkdir(".")
        for file in files
            if endswith(file, ".jl") && file != "test.jl"
                include(joinpath(root, file))
            end
        end
    end
end
