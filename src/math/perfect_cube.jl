"""
    perfect_cube(number)

Check if a number is a perfect cube or not.

# Example
```jula
perfect_cube(27) # returns true
perfect_cube(4)  # returns false
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee) and [Rratic](https://github.com/Rratic)
"""
function perfect_cube(number::N) where {N<:Integer}
    val = trunc(cbrt(number))
    return (val * val * val) == number
end
