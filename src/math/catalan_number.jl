"""
    catalan(n::Int)
In combinatorial mathematics, the Catalan numbers are a sequence of natural numbers that occur in various counting problems, often involving recursively defined objects.


# Input parameters:
- `n` : index of the catalan number.

# Examples/Tests:
```julia
catalan(0)  # returns 1
catalan(3)  # returns 5
catalan(8)  # returns 1430
catalan(-1) # throws DomainError
```

# Reference
- https://mathworld.wolfram.com/CatalanNumber.html

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function catalan(n::Int)
    n < 0 && throw(DomainError("Only defined for non-negative n"))
    n = big(n)
    return factorial(2n) ÷ (factorial(n)^2 * (n + 1))
end
