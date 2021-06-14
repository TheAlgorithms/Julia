module TheAlgorithms

# Usings/Imports (keep sorted)
using Base: Float64
using DataFrames
using DifferentialEquations
using GLM
using LinearAlgebra
using Plots
using Random


## Exports
# Please keep the folders/functions sorted

# Exports: knapsack
export ZeroOnePack!
export CompletePack!

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
export ceil_val, floor_val
export collatz_sequence
export euler_method
export is_armstrong
export line_length
export mean
export median
export mode
export SIR # TODO: make the name lowercase if possible
export sum_ap
export sum_gp
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
export binarysearch
export search

# Exports: statistics
export OLSbeta
export PearsonCorrelation
# Exports: strings
export is_palindrome

# Exports: scheduling
export fcfs

# Exports: conversions
export celsius_to_fahrenheit
export celsius_to_kelvin
export fahrenheit_to_celsius
export fahrenheit_to_kelvin
export kelvin_to_celsius
export kelvin_to_fahrenheit
export weight_conversion

## Includes
# Please keep the folders/files sorted (by dependencies then alphabetical order)

# Includes: knapsack
include("knapsack/knapsack.jl")

# Includes: math
include("math/abs.jl")
include("math/area_under_curve.jl")
include("math/armstrong_number.jl")
include("math/area.jl")
include("math/average_mean.jl")
include("math/average_median.jl")
include("math/average_mode.jl")
include("math/ceil_floor.jl")
include("math/collatz_sequence.jl")
include("math/euler_method.jl")
include("math/line_length.jl")
include("math/sir_model.jl")
include("math/sum_of_arithmetic_series.jl")
include("math/sum_of_geometric_progression.jl")




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

# Includes: scheduling
include("scheduling/fcfs.jl")

# Includes: conversions
include("conversions/weight_conversion.jl")
include("conversions/temparature_conversion.jl")

end
