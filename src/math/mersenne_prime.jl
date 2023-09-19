"""
    is_mersenne_prime(n::Int)
A mersenne prime is a prime number that is one less than a power of 2.
Checks whether the given integer is a mersenne prime.

# Input parameters:
- `n` : The number to be checked.

# Examples/Tests:
```julia
is_mersenne_prime(3)     # returns true
is_mersenne_prime(15)    # returns false
is_mersenne_prime(8191)  # returns true
```

# Reference
- https://mathworld.wolfram.com/MersennePrime.html

Contributed by [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function is_mersenne_prime(n::Int)
    num = n
    n += 1
    while n % 2 == 0
        n /= 2
    end
    return n == 1 && prime_check(num)
end

"""
    get_mersenne_primes(n::Int)
A mersenne prime is a prime number that is one less than a power of 2.
Returns a list of mersenne primes upto n.

# Input parameters:
- `n` : The limit upto which mersenne primes are to be generated.

# Examples/Tests:
```julia
get_mersenne_primes(100)    # returns [3, 7, 31]
get_mersenne_primes(1000)   # returns [3, 7, 31, 127]
get_mersenne_primes(10000)  # returns [3, 7, 31, 127, 8191]
```

# Reference
- https://mathworld.wolfram.com/MersennePrime.html

Contributed by [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function get_mersenne_primes(limit::Int)
    return [i for i in 1:limit if is_mersenne_prime(i)]
end
