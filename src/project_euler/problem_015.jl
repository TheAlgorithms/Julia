"""
    Lattice Paths

Starting in the top left corner of a grid, and only being able to move to the 
right and down, there are exactly 6 routes to the bottom right corner. How many
such routes are there through a 20 x 20 grid?
grid?

# Input parameters:
- `n` : number of rows in the grid
- `m` : number of columns in the grid

# Examples/Tests:
```julia
problem_015(2, 2)       # returns 6
problem_015(5, 3)       # returns 56
problem_015(20, 20)     # returns 137846528820
problem_015(0, 5)       # throws DomainError
problem_015(-3, 0)      # throws DomainError
```

# Reference
- https://projecteuler.net/problem=15

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_015(n::T, m::T) where {T<:Integer}
    #=
    The path is a combination of rights and downs, with a total of n + m operations
    We need to count the number of such combinations of n rights and m downs
    This is equivalent to finding the binomial coefficient (n+m, m) or (n+m, n)
    Note that both of them are equivalent
    =#
    (n <= 1 || m <= 1) && throw(DomainError("n and m must be greater than 1"))
    return binomial(BigInt(n + m), BigInt(n))
end
