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
export encrypt_vigenere
export decrypt_vigenere

include("affine.jl")
include("caesar.jl")
include("atbash.jl")
include("vigenere.jl")

end
