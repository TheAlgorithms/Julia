"""
    Smallest multiple
    
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Input parameters:
- `limit`: Limit upto which to find the smallest multiple.

# Examples/Tests:
```julia
problem_005(10) # returns 2520
problem_005(20) # returns 232792560
problem_005(-1) # throws DomainError
```

# Reference
- https://projecteuler.net/problem=5

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_005(limit::Int)
    limit <= 1 && throw(DomainError("Limit must be greater than 1"))
    result = 1
    for i in 1:limit
        result *= i ÷ gcd(i, result)
    end
    return result
end
