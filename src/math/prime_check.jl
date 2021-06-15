"""
prime_check(number)

Checks to see if a number is a prime or not
    
A number is prime if it has exactly two factors: 1 and itself.

# Example

```julia
prime_check(2) # returns true
prime_check(3) # returns true
prime_check(5) # returns true
prime_check(7) # returns true
prime_check(11) # returns true
prime_check(13) # returns true
prime_check(17) # returns true
prime_check(19) # returns true
prime_check(23) # returns true
prime_check(29) # returns true
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function prime_check(number)
    if 1 < number < 4
        # 2, 3 are primes
        return true
    elseif number < 2 || number % 2 == 0
        # Negative ,0,1, and even numbers except 2 are not primes
        return false
    end
    odd_numbers = collect(3:2:trunc(sqrt(number) + 1))
    for i in odd_numbers
        if number % i == 0
            return false
        end
    end
    return true
end
