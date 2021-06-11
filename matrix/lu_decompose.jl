using LinearAlgebra # to test against the inbuilt function
using Test

"""
Decomposes a `n x n` non singular matrix into a lower triangular matrix (L) and an upper triangular matrix (U)
"""
function lu_decompose(mat)
	n = mat |> size |> first
	L = zeros(n,n)
	U = zeros(n,n)

	for i in 1:n
		for j in i:n
			s = 0
			for k in 1:i
				s += L[i,k] * U[k,j]
			end
			U[i,j] = mat[i,j] - s
		end

		for k in i:n
			if i == k
				L[i,i] = 1
			else
				s = 0
				for j in 1:i
					s += L[k,j] * U[j,i]
				end
				L[k,i] = (mat[k,i] - s) / U[i,i]
			end
		end
	end

	return L,U
end

mat = [
	2  -1 -2; 
	-4   6  3; 
	-4  -2  8
]

L = [
	 1  0 0;    
	-2  1 0;   
	-2 -1 1
]
U = [
	2 -1 -2;   
	0  4 -1;    
	0  0  3
]

@testset "LU decomposition" begin
	@test lu_decompose(mat) == (L,U)
end




