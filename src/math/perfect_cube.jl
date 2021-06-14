"""
    perfect_cube(number)

Check if a number is a perfect cube or not.

# Example
```jula
perfect_cube(27) # returns true
perfect_cube(4)  # returns false
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function perfect_cube(number)
    val = number^(1/3)
    return (val * val * val) == number
end
