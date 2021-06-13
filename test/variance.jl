# Test file of variance.jl in https://github.com/TheAlgorithms/Julia/tree/main/src/statistics
using Test
a = 1:10
@test var(a) == 5.5
