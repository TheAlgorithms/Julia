"""
    Multiples of 3 or 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

# Input parameters:
- `limit` : Upper limit for the numbers.

# Examples/Tests:
```julia
problem_001(10)     # returns 23
problem_001(1000)   # returns 233168
problem_001(-1)     # throws DomainError
```

# Reference
- https://projecteuler.net/problem=1

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_001(limit::Int)
    limit <= 1 && throw(DomainError("limit must be integer greater than 1"))
    return sum([i for i in 1:limit-1 if i % 3 == 0 || i % 5 == 0])
end
