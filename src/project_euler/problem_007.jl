"""
    10001st prime

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

# Input parameters:
- `n` : Will find the nth prime.

# Examples/Tests:
```julia
problem_007(1)      # returns 2
problem_007(6)      # returns 13
problem_007(10001)  # returns 104743
problem_007(-1)     # throws DomainError
```

# Reference
- https://projecteuler.net/problem=7

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_007(n::Int)
    if n < 1
        throw(DomainError("n must be a natural number"))
    elseif 1 <= n <= 3
        return Dict(1 => 2, 2 => 3, 3 => 5)[n]
    else
        # The nth prime is always lower than n(log(n) + log(log(n)))
        upper_limit = Base.ceil(Int, n * (log(n) + log(log(n))))
        return eratosthenes(upper_limit)[n]
    end
end
