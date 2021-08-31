module TheAlgorithms

# Usings/Imports (keep sorted)
using LinearAlgebra
using Random


## Exports
# Please keep the folders/functions sorted

# Exports: basic
export prefix_sum

# Exports: data_structures
export AbstractBinarySearchTree_arr
export AbstractBinaryTree
export AbstractBinaryTree_arr
export BinaryTree
export ch
export depth
export DisjointSet
export find
export height
export insert!
export isleaf
export left
export merge!
export right
export set_ch
export Splay

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
export combination
export eratosthenes
export euler_method
export factorial_iterative
export factorial_recursive
export floor_val
export is_armstrong
export line_length
export krishnamurthy
export mean
export median
export mode
export monte_carlo_integration
export prime_check
export prime_factors
export perfect_cube
export perfect_number
export perfect_square
export permutation
export prime_check
export prime_factors
export sum_ap
export sum_gp
export surfarea_cube
export surfarea_sphere
export trapazoidal_area
export verlet_integration
export vol_cube
export vol_cuboid
export vol_cone
export vol_right_circ_cone
export vol_prism
export vol_pyramid
export vol_sphere
export vol_circular_cylinder

# Exports: matrix
export determinant
export lu_decompose
export rotation_matrix

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

# Exports: sorts
export bubble_sort!
export bucket_sort!
export counting_sort!
export exchange_sort!
export insertion_sort!
export merge_sort!
export quick_sort!
export selection_sort!

# Exports: statistics
export pearson_correlation
export variance

# Exports: strings
export is_palindrome
export detect_anagrams
export contain_substring_with_kmp

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

# Includes: basic
include("basic/prefix_sum.jl")

# Includes: data_structures
include("data_structures/binary_tree/splay.jl")
include("data_structures/disjoint_set/disjoint_set.jl")

# Includes: knapsack
include("knapsack/dynamic_programming.jl")
include("knapsack/greedy_algorithm.jl")

# Includes: math
include("math/abs.jl")
include("math/area.jl")
include("math/armstrong_number.jl")
include("math/average_mean.jl")
include("math/average_median.jl")
include("math/average_mode.jl")
include("math/ceil_floor.jl") # needed by average_median
include("math/collatz_sequence.jl")
include("math/combination.jl")
include("math/euler_method.jl")
include("math/factorial.jl")
include("math/krishnamurthy_number.jl")
include("math/line_length.jl")
include("math/krishnamurthy_number.jl")
include("math/monte_carlo_integration.jl")
include("math/prime_check.jl")
include("math/prime_factors.jl")
include("math/perfect_cube.jl")
include("math/perfect_number.jl")
include("math/perfect_square.jl")
include("math/permutation.jl")
include("math/prime_check.jl")
include("math/prime_factors.jl")
include("math/sieve_of_eratosthenes.jl")
include("math/sum_of_arithmetic_series.jl")
include("math/sum_of_geometric_progression.jl")
include("math/verlet.jl")
include("math/volume.jl")

# Includes: matrix
include("matrix/lu_decompose.jl") # used by determinant.jl
include("matrix/determinant.jl")
include("matrix/rotation-matrix.jl")

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

# Includes: sorts
include("sorts/bubble_sort.jl")
include("sorts/bucket_sort.jl")
include("sorts/insertion_sort.jl")
include("sorts/merge_sort.jl")
include("sorts/quick_sort.jl")
include("sorts/selection_sort.jl")
include("sorts/counting_sort.jl")
include("sorts/exchange_sort.jl")

# Includes: statistics
include("statistics/pearson_correlation.jl")
include("statistics/variance.jl")

# Includes: strings
include("strings/is_palindrome.jl")
include("strings/detect_anagrams.jl")
include("strings/kmp_substring_search.jl")

# Includes: scheduling
include("scheduling/fcfs.jl")

# Includes: conversions
include("conversions/weight_conversion.jl")
include("conversions/temparature_conversion.jl")

end
