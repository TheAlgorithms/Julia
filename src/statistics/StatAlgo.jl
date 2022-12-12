"""
  StatAlgo

`StatAlgo` in Julia
"""
module StatAlgo

export pearson_correlation
export variance

include("pearson_correlation.jl")
include("variance.jl")

end
