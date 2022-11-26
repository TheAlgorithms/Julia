"""
    ceil(x)

Finds the ceiling of x as an functionInteger

# Example
```julia
ceil(1.3)   # 2.0
ceil(2.0)   # returns 2.0
ceil(-1.5)  #returns -1.0
```

# Reference
- https://en.wikipedia.org/wiki/Floor_and_ceiling_functions

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
ceil(x) = x - trunc(x) <= 0 ? trunc(x) : trunc(x) + 1
