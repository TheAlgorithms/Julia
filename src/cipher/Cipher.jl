export Cipher
"""
  Cipher

`Cipher` algorithms.
"""
module Cipher

using TheAlgorithms

export caesar
# export rotate
export atbash_encode
export affine

include("affine.jl")
include("caesar.jl")
include("atbash.jl")

end
