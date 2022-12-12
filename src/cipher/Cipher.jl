"""
  Cipher

Cipher related algorithms for TheAlgorithms/Julia
"""
module Cipher

export caesar
# export rotate
export atbash_encode
export affine

include("affine.jl")
include("caesar.jl")
include("atbash.jl")

end