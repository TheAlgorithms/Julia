"""
    Factorial Digit Sum

Find the sum of the digits in the number 100!.

# Input parameters:
- `n` : number to find sum of digits of factorial of

# Examples/Tests:
```julia
problem_020(10)     # returns 27
problem_020(37)     # returns 153
problem_020(100)    # returns 648
problem_020(-1)     # throws DomainError
```

# Reference
- https://projecteuler.net/problem=20

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_020(n::T) where {T<:Integer}
    n < 0 && throw(DomainError("n must be a non-negative integer"))
    return mapreduce(
        x -> Int(x) - Int('0'),
        +,
        collect(string(factorial(big(n)))),
    )
end
