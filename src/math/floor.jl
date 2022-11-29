"""
    floor(x)

Finds the floor of x as an Integer

# Example
```julia
floor(1.3)  # 1
floor(2.0)  # returns 2.0
floor(-1.7) # returns -2.0
```

# Reference
- https://en.wikipedia.org/wiki/Floor_and_ceiling_functions

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
floor(x) = x - trunc(x) >= 0 ? trunc(x) : trunc(x) - 1
