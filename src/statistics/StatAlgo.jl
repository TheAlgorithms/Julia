export StatAlgo
"""
  StatAlgo

`StatAlgo` in Julia
"""
module StatAlgo

using TheAlgorithms

export pearson_correlation
export variance

include("pearson_correlation.jl")
include("variance.jl")

end
