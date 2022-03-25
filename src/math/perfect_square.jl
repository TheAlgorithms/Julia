"""
perfect_square(number)

Check if a number is a perfect square or not.

# Example
```jula
perfect_square(9)   # returns True
perfect_square(16)  # returns True
perfect_square(1)   # returns True
perfect_square(0)   # returns True
perfect_square(10)  # returns False
perfect_square(-9)  # returns False
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee) and [Rratic](https://github.com/Rratic)
"""
function perfect_square(number::N) where {N<:Integer}
    number < 0 && return false
    val = isqrt(number)
    return val * val == number
end
