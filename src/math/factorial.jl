"""
    factorial_iterative(n)

Finds factorial of a number using Iterative method

# Example
```julia
factorial_iterative(5)      # returns 120
factorial_iterative(0.1)    # returns error
factorial_iterative(-1)     # returns error
```
# Reference
- factorial of a positive integer -- https://en.wikipedia.org/wiki/Factorial

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function factorial_iterative(n)
    if n != trunc(n) || n < 0
        throw(error("factorial_iterative() only accepts non-negative integral values"))
    end
    factorial::BigInt = 1
    map(i -> factorial *= i, 1:n)
    return factorial
end

"""
    factorial_recursive(n)

Finds factorial of anumber using recursive method

# Example
```julia
factorial_recursive(5)      # returns 120
```
# Reference
- factorial of a positive integer -- https://en.wikipedia.org/wiki/Factorial

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee) and [Rratic](https://github.com/Rratic)
"""
function factorial_recursive(n::N)where N<:Integer
    if n < 0
        throw(error("factorial_iterative() only accepts non-negative integral values"))
    end
    if n == 0 || n == 1
        return 1
    else
        factorial=one(BigInt)
        for i in 1:n
            factorial*=i
        end
        return factorial
    end
end
