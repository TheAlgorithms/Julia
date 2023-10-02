"""
    Longest Collatz Sequence

The following iterative sequence is defined for the set of positive integers:
n -> n/2  (n is even)
n -> 3n+1 (n is odd)
Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
Which starting number, under one million, produces the longest chain?

# Input parameters:
- `n` : upper bound on the starting number

# Examples/Tests:
```julia
problem_014(10)         # returns 9
problem_014(250)        # returns 231
problem_014(1000000)    # returns 837799
problem_014(-1)         # throws DomainError
```

# Reference
- https://projecteuler.net/problem=14

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_014(n::Int64)
    n < 1 && throw(DomainError("n must be a natural number"))
    return argmax(collatz_length, 1:n)
end

cache = Dict{Int64,Int64}(1 => 1)
function collatz_length(x::Int64)
    # If result already in cache, then return it
    haskey(cache, x) && return cache[x]

    # Recursively call the function and update the cache
    return cache[x] = if x % 2 == 0
        1 + collatz_length(x ÷ 2)
    else
        2 + collatz_length((3x + 1) ÷ 2)
    end
end
