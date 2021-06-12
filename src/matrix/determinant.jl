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
