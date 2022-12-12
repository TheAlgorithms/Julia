export Searches
"""
  Searches

`Searches` - search algorithms.
"""
module Searches

using TheAlgorithms

export binary_search
export exponential_search
export interpolation_search
export jump_search
export linear_search

include("binary_search.jl")
include("exponential_search.jl")
include("interpolation_search.jl")
include("jump_search.jl")
include("linear_search.jl")
end
