module TheAlgorithms

# Usings/Imports (keep sorted)
using LinearAlgebra
using Random
using DataStructures

## Exports
# Please keep the folders/functions sorted

# Exports: basic
export Basic
include("basic/Basic.jl")

# Exports: cipher
export Cipher
include("cipher/Cipher.jl")

# Exports: data_structures
export DataStructure
include("data_structures/DataStructure.jl")

# Exports: dynamic_programming
export DynamicProgramming
include("dynamic_programming/DynamicProgramming.jl")

# Exports: graph
export Graph
include("graph/Graph.jl")

# Exports: knapsack
export KnapSack
include("knapsack/KnapSack.jl")

# Exports: longest_increasing_subsequence
export LongSubSeq
include("longest_increasing_subsequence/LongSubSeq.jl")

# Exports: machine_learning
export ML
include("machine_learning/ML.jl")

# Exports: math
export Math
include("math/Math.jl")

# Exports: matrix
export MatrixAlgo # named like these to avoid conflicting Base.Matrix
include("matrix/MatrixAlgo.jl")

# Exports: project-euler
export ProjectEuler
include("project_euler/ProjectEuler.jl")

# Exports: project-rosalind
export ProjectRosalind
include("project_rosalind/ProjectRosalind.jl")

# Exports: searches
export Searches
include("searches/Searches.jl")

# Exports: sorts
export Sorts
include("sorts/Sorts.jl")

# Exports: statistics
export StatAlgo # named to avoid conflict with Statistics
include("statistics/StatAlgo.jl")

# Exports: strings
export StringAlgo # named to avoid conflict with Base.String
include("strings/StringAlgo.jl")

# Exports: scheduling
export Scheduling
include("scheduling/Scheduling.jl")

# Exports: conversions
export Conversions
include("conversions/Conversions.jl")

## Includes
# Please keep the folders/files sorted (by dependencies then alphabetical order)

end
