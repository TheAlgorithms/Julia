"""
    Largest prime factor

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

# Input parameters:
- `number` : Number to find the largest prime factor of.

# Examples/Tests:
```julia
problem_003(17)             # returns 17
problem_003(13195)          # returns 29
problem_003(600851475143)   # returns 6857
problem_003(-1)             # throws DomainError
```

# Reference
- https://projecteuler.net/problem=3

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_003(number::Number)
    number <= 1 && throw(DomainError("Number must be integer greater than 1"))
    prime_factor::Int64 = 2
    while prime_factor < number
        if number % prime_factor == 0
            number ÷= prime_factor
        else
            prime_factor += 1
        end
    end
    return prime_factor
end
