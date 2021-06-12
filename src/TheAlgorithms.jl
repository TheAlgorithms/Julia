module TheAlgorithms

# Usings/Imports (keep sorted)
using DataFrames
using DifferentialEquations
using GLM
using LinearAlgebra
using Plots
using Random


## Exports
# Please keep the folders/functions sorted

# Exports: math
export collatz_sequence
export euler_method
export line_length
export SIR # TODO: make the name lowercase if possible
export trapazoidal_area
export is_armstrong

# Exports: matrix
export determinant
export lu_decompose

# Exports: project-rosalind
export count_nucleotides
export dna2rna
export reverse_complement

# Exports: searches
export binarysearch
export search

# Exports: statistics
export OLSbeta

# Exports: strings
export is_palindrome

## Includes
# Please keep the folders/files sorted (by dependencies then alphabetical order)

# Includes: math
include("math/area_under_curve.jl")
include("math/collatz_sequence.jl")
include("math/euler_method.jl")
include("math/line_length.jl")
include("math/sir_model.jl")
include("math/armstrong_number.jl")


# Includes: matrix
include("matrix/lu_decompose.jl") # used by determinant.jl
include("matrix/determinant.jl")

# Includes: project-rosalind
include("project-rosalind/count_nucleotide.jl")
include("project-rosalind/dna2rna.jl")
include("project-rosalind/reverse_complement.jl")

# Includes: search
include("searches/binary_search.jl")
include("searches/linear_search.jl")

# Includes: statistics
include("statistics/ordinary_least_squares.jl")

# Includes: strings
include("strings/is_palindrome.jl")

end
