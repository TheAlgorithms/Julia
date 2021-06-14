module TheAlgorithms

# Usings/Imports (keep sorted)
using DifferentialEquations: include
using Plots
using DifferentialEquations
using DataFrames
using DifferentialEquations
using GLM
using LinearAlgebra
using Plots
using Random


## Exports
# Please keep the folders/functions sorted

# Exports: knapsack
export complete_pack!
export zero_one_pack!

# Exports: math
export abs_max
export abs_min
export abs_val
export area_circle
export area_ellipse
export area_heron_triangle
export area_parallelogram
export area_rectangle
export area_rhombus
export area_square
export area_trapezium
export area_triangle
export ceil_val
export collatz_sequence
export euler_method
export floor_val
export is_armstrong
export line_length
export mean
export median
export mode
export SIR # TODO: make the name lowercase if possible
export surfarea_cube
export surfarea_sphere
export trapazoidal_area

# Exports: matrix
export determinant
export lu_decompose

# Exports: project-rosalind
export count_nucleotides
export dna2rna
export reverse_complement

# Exports: searches
export binary_search
export exponential_search
export interpolation_search
export jump_search
export linear_search

# Exports: statistics
export OLSbeta # TODO: make the name lowercase if possible
export pearson_correlation
export variance

# Exports: strings
export is_palindrome

# Exports: scheduling
export fcfs

## Includes
# Please keep the folders/files sorted (by dependencies then alphabetical order)

# Includes: knapsack
include("knapsack/knapsack.jl")

# Includes: math
include("math/abs.jl")
include("math/area.jl")
include("math/area_under_curve.jl")
include("math/armstrong_number.jl")
include("math/average_mean.jl")
include("math/ceil_floor.jl") # needed by average_median
include("math/average_median.jl")
include("math/average_mode.jl")
include("math/collatz_sequence.jl")
include("math/euler_method.jl")
include("math/line_length.jl")
include("math/sir_model.jl")

# Includes: matrix
include("matrix/lu_decompose.jl") # used by determinant.jl
include("matrix/determinant.jl")

# Includes: project-rosalind
include("project-rosalind/count_nucleotide.jl")
include("project-rosalind/dna2rna.jl")
include("project-rosalind/reverse_complement.jl")

# Includes: scheduling
include("scheduling/fcfs.jl")

# Includes: search
include("searches/binary_search.jl")
include("searches/exponential_search.jl")
include("searches/interpolation_search.jl")
include("searches/jump_search.jl")
include("searches/linear_search.jl")

# Includes: statistics
include("statistics/ordinary_least_squares.jl")
include("statistics/pearson_correlation.jl")
include("statistics/variance.jl")

# Includes: strings
include("strings/is_palindrome.jl")

end
