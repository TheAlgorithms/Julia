"""
    determinant(mat)

Given a non singluar matrix, calculate its determinant using LU decomposition.

L and U are lower triangular and upper triangular matrices respectively such that

A = L*U

If we want to find the determinant, then

det(A) = det(LU) = det(L)*det(U)

Determinant of triangualar matrices is the product of their diagonal entries. Hence, makes finding the determinant easy.
"""
function determinant(mat)
    n, m = size(mat)
    if n != m
        throw(DomainError(mat, "The matrix should be a square matrix."))
    end
    L, U = lu_decompose(mat)
    l_prod = prod([L[i, i] for i in 1:n])
    u_prod = prod([U[i, i] for i in 1:n])

    return l_prod * u_prod
end
