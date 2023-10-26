"""
    Summation of primes

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

# Input parameters:
- `n` : Upper limit of primes.

# Examples/Tests:
```julia
problem_010(1)          # returns 0
problem_010(10)         # returns 17
problem_010(2000000)    # returns 142913828922
problem_010(-1)         # throws DomainError
```

# Reference
- https://projecteuler.net/problem=10

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_010(n::Int)
    n < 1 && throw(DomainError("n must be a natural number"))
    return reduce(+, eratosthenes(Int64(n)), init = Int64(0))
end
