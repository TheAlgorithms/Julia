export Basic
"""
  Basic

Basic algorthims for TheAlgorithms/Julia 
"""
module Basic

using TheAlgorithms

export prefix_sum
export DifferenceArray
export Hanoi

include("hanoi.jl")
include("difference_arr.jl")
include("prefix_sum.jl")

end
