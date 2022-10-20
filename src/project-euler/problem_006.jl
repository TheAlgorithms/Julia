"""
    Sum square difference

The sum of the squares of the first ten natural numbers is,
    1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,
    (1 + 2 + ... + 10)^2 = 55^2 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# Input parameters:
- `n` : limit upto which to find the sum square difference.

# Examples/Tests:
```julia
problem_006(10)     # returns 2640
problem_006(100)    # returns 25164150
problem_006(-1)     # throws DomainError
```

# Reference
- https://projecteuler.net/problem=6

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_006(n::Int)
    n <= 0 && throw(DomainError("n must be a natural number"))
    # Sum of squares of first n natural numbers is n*(n+1)*(2n+1)/6
    # Square of sum of first n natural numbers is (n*(n+1)/2)^2
    return (n * (n + 1) ÷ 2)^2 - (n * (n + 1) * (2n + 1) ÷ 6)
end
