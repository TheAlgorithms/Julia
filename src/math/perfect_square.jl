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
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function perfect_square(number)
    return sqrt(number) * sqrt(number) == number
end
perfect_square(9)