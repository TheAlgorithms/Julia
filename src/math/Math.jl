export Math
"""
  Math

`Math` algorithms.
"""
module Math

using TheAlgorithms

export abs_max
export abs_min
export abs_val
export aliquot_sum
export amicable_pairs
export area_circle
export area_ellipse
export area_heron_triangle
export area_parallelogram
export area_polygon
export area_rectangle
export area_regular_polygon
export area_rhombus
export area_square
export area_trapezium
export area_triangle
export average_absolute_deviation
export bab_sqrt
export bin_length
export bin_length_long
export bin_length_short
export catalan
export ceil
export collatz_sequence
export combination
export divisors
export eratosthenes
export euler_method
export is_mersenne_prime
export totient
export factorial_iterative
export factorial_recursive
export fib_recursive
export fib_recursive_memo
export fib_iterative
export floor
export get_mersenne_primes
export is_armstrong
export line_length
export krishnamurthy
export mean
export median
export mode
export monte_carlo_integration
export num_divisors
export partitions_recursive
export prime_check
export prime_factors
export perfect_cube
export perfect_number
export perfect_square
export permutation
export prime_check
export prime_factors
export riemann_integration
export runge_kutta_integration
export simpsons_integration
export sum_ap
export sum_gp
export sum_divisors
export surfarea_cube
export surfarea_cuboid
export surfarea_sphere
export trapazoidal_area
export trapezoid_integration
export verlet_integration
export vol_cube
export vol_cuboid
export vol_cone
export vol_right_circ_cone
export vol_prism
export vol_pyramid
export vol_sphere
export vol_circular_cylinder
export least_common_multiple

include("abs.jl")
include("amicable_numbers.jl")
include("area.jl")
include("armstrong_number.jl")
include("average_absolute_deviation.jl")
include("average_mean.jl")
include("average_median.jl")
include("average_mode.jl")
include("babylonian_sqrt.jl")
include("binary_length.jl")
include("catalan_number.jl")
include("ceil.jl") # needed by average_median
include("collatz_sequence.jl")
include("combination.jl")
include("divisors.jl")
include("euler_method.jl")
include("eulers_totient.jl")
include("factorial.jl")
include("fibonacci.jl")
include("floor.jl")
include("krishnamurthy_number.jl")
include("line_length.jl")
include("mersenne_prime.jl")
include("monte_carlo_integration.jl")
include("partitions.jl")
include("perfect_cube.jl")
include("perfect_number.jl")
include("perfect_square.jl")
include("permutation.jl")
include("prime_check.jl")
include("prime_factors.jl")
include("riemann_integration.jl")
include("runge_kutta_integration.jl")
include("sieve_of_eratosthenes.jl")
include("simpsons_integration.jl")
include("sum_of_arithmetic_series.jl")
include("sum_of_geometric_progression.jl")
include("trapezoid_integration.jl")
include("verlet.jl")
include("volume.jl")
include("least_common_multiple.jl")

end
