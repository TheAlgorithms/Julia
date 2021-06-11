using LinearAlgebra #to test against the predefined function.
using Test

"""
Given a non singluar matrix, calculate its determinant using LU decomposition.

L and U are lower triangular and upper triangular matrices respectively such that

A = L*U

If we want to find the determinant, then

det(A) = det(LU) = det(L)*det(U)

Determinant of triangualar matrices is the product of their diagonal entries. Hence, makes finding the determinant easy.
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

function determinant(mat)
	n,m = size(mat)
	if n != m
		DomainError(mat,"The matrix should be a square matrix.")
	end
	L,U = lu_decompose(mat)
	l_prod = prod([L[i,i] for i in 1:n])
	u_prod = prod([U[i,i] for i in 1:n])

	return l_prod * u_prod
end
M1 = [1 0; 2 2]
M2 = rand(3,3)
M3 = rand(4,4)

@testset "Check Determinants" begin
	@test determinant(M1) == det(M1)
	@test round(determinant(M2),digits = 4) == round(det(M2),digits = 4)
	@test round(determinant(M3),digits = 4) == round(det(M3),digits = 4)
end
				

