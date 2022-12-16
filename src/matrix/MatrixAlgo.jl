export MatrixAlgo
"""
  MatrixAlgo

`MatrixAlgo` for matrix algorithms.
"""
module MatrixAlgo

using TheAlgorithms

export determinant
export gauss_jordan
export lu_decompose
export rotation_matrix

include("lu_decompose.jl") # used by determinant.jl
include("determinant.jl")
include("gauss_jordan_elim.jl")
include("rotation_matrix.jl")

end
