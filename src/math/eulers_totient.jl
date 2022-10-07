"""
    totient(n::Int)
The totient function phi(n) is defined as the number of positive integers <=n that are relatively prime to n.
Since a number less than or equal to and relatively prime to a given number is called a totative, the totient function phi(n) can be simply defined as the number of totatives of n.

# Input parameters:
- `n` : The number to find the totient of.

# Examples/Tests:
```julia
totient(1) # returns 1
totient(2) # returns 1
totient(3) # returns 2
totient(10) # returns 4
totient(24) # returns 8
totient(50) # returns 20
totient(-1) # throws DomainError
```

# Reference
- https://mathworld.wolfram.com/TotientFunction.html

Contributed by [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function totient(n::Int)
    n <= 0 && throw(DomainError("totient() only works for positive integers"))
    return count(i -> (gcd(i, n) == 1), 1:n)
end
