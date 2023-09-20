"""
    divisors(n::Int)
Returns the divisors of n as a vector.

# Input parameters:
- `n` : The number to find the factors of.

# Examples/Tests:
```julia
divisors(6)     # returns [1, 2, 3, 6]
divisors(10)    # returns [1, 2, 5, 10]
divisors(1345)  # returns [1, 5, 269, 1345]
divisors(-1)    # throws DomainError
```

# Reference
- https://mathworld.wolfram.com/Divisor.html

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function divisors(n::Int)
    n <= 0 && throw(DomainError("factors only works for positive integers"))
    return [i for i in 1:n if n % i == 0]
end

"""
    sum_divisors(n::Int)
Returns the sum of the divisors of n.

# Input parameters:
- `n` : The number to find the sum of divisors of.

# Examples/Tests:
```julia
sum_divisors(6)     # returns 12
sum_divisors(10)    # returns 18
sum_divisors(1345)  # returns 1620
sum_divisors(-1)    # throws DomainError
```

# Reference
- https://mathworld.wolfram.com/Divisor.html

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function sum_divisors(n::Int)
    return sum(divisors(n))
end

"""
    aliquot_sum(n::Int)
The aliquot sum of a positive integer n is the sum of all the proper divisors of n, i.e, all divisors of n other than n itself.

# Input parameters:
- `n` : The number to find the aliquot sum of.

# Examples/Tests:
```julia
aliquot_sum(6)      # returns 6
aliquot_sum(10)     # returns 8
aliquot_sum(1345)   # returns 275
aliquot_sum(-1)     # throws DomainError
```

# Reference
- https://en.wikipedia.org/wiki/Aliquot_sum

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function aliquot_sum(n::Int)
    return sum_divisors(n) - n
end

"""
    num_divisors(n::Int)
Efficiently finds the number of divisors of n.

# Input parameters:
- `n` : The number to find the number of divisors of.

# Examples/Tests:
```julia
num_divisors(1)       # returns 1
num_divisors(13)      # returns 2
num_divisors(420)     # returns 24
num_divisors(1345)    # returns 4
num_divisors(-1)      # throws DomainError
```

# Reference
- https://cp-algorithms.com/algebra/divisors.html#number-of-divisors

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function num_divisors(n::Int)
    n <= 0 && throw(DomainError("expected a positive integer"))
    result = 1
    limit = isqrt(n)
    for i in 2:limit
        e = 0
        while n % i == 0
            e += 1
            n /= i
        end
        result *= e + 1
    end

    if n > 1
        result *= 2
    end

    return result
end
