"""
    Power Digit Sum

2^15 = 32768 and the sum of its digits is 3+2+7+6+8=26.
What is the sum of the digits of the number 2^1000?
grid?

# Input parameters:
- `a` : base
- `n` : exponent

# Examples/Tests:
```julia
problem_016(1, 1)       # returns 1
problem_016(2, 15)      # returns 26
problem_016(2, 1000)    # returns 1366
problem_016(2, -4)      # throws DomainError
```

# Reference
- https://projecteuler.net/problem=16

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_016(a::T, n::T) where {T<:Integer}
    (a <= 0 || n <= 0) && throw(DomainError("a and n must be greater than 1"))
    return sum(parse(Int, digit) for digit in string(big(a)^n))
end
