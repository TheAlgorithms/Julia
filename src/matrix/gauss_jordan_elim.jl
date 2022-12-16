"""
    gauss_jordan(A::AbstractMatrix{T}) where T<:Number

Gaussian elimination, also known as row reduction, is an algorithm for solving systems of linear equations. 
It consists of a sequence of operations performed on the corresponding matrix of coefficients. 
This method can also be used to compute the rank of a matrix, the determinant of a square matrix, and the inverse of an invertible matrix.
https://en.wikipedia.org/wiki/Gaussian_elimination

# Examples/Tests
```julia
julia> M1 = [1 2 3; 4 5 6];
julia> M2 = [1 2 3; 4 8 12];

julia> @test gauss_jordan(M1) == [1 0 -1; 0 1 2]        # Test Passed
julia> @test_throws AssertionError gauss_jordan(M2)     # Test Passed - Thrown: AssertionError
```     

# Contributed By:- [AugustoCL](https://github.com/AugustoCL)
"""
function gauss_jordan(A::AbstractMatrix{T}) where {T<:Number}

    # check if matrix is singular
    m, n = size(A)
    if m == n
        @assert determinant(A) ≠ 0.0 "Must insert a non-singular matrix"
    else
        @assert determinant(A[:, 1:(end-1)]) ≠ 0.0 "Must insert a non-singular matrix or a system matrix [A b]"
    end

    # execute the gauss-jordan elimination
    for i in axes(A, 1)
        if A[i, i] == 0.0
            for n in (i+1):m                           # iterate in lines below to check if could be swap
                if A[n, i] ≠ 0.0                        # condition to swap row
                    L = copy(A[i, :])                   # copy line to swap
                    A[i, :] = A[n, :]                   # swap occur
                    A[n, :] = L
                    break
                end
            end
        end

        @. A[i, :] = A[i, :] ./ A[i, i]                  # divide pivot line by pivot element

        for j in axes(A, 1)                               # iterate each line for each pivot column, except pivot line
            if j ≠ i                                     # jump pivot line
                @. A[j, :] = A[j, :] - A[i, :] * A[j, i]   # apply gauss jordan in each line
            end
        end
    end

    return A
end

# using multiple dispatch to avoid InexactError with Integers
function gauss_jordan(A::AbstractMatrix{T}) where {T<:Integer}
    return gauss_jordan(convert(Matrix{Float64}, A))
end
