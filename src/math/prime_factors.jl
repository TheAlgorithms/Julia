"""
prime_factors(number)

Returns prime factors of `number` as a vector

# Example

```julia
prime_factors(50)          # returns [2,5,5]
prime_factors(0)           # returns []
prime_factors(100)         # returns [2, 2, 5, 5]
prime_factors(2560)        # returns [2, 2, 2, 2, 2, 2, 2, 2, 2, 5]
prime_factors(10^-2)       # returns []
prime_factors(0.02)        # returns []
prime_factors(10^-354)     # returns []
prime_factors("hello")     # returns error
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function prime_factors(number)
    i = 2
    factors = []
    while i^2 <= number
        if number % i == 1
            i += 1
        else
            number ÷= i
            push!(factors, i)
        end
    end
    if number > 1 == 1
        push!(factors, number)
    end
    return factors
end
