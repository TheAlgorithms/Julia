"""
    ceil_val(x)

Finds the ceiling of x as an Integer

# Example
```julia
ceil_val(1.3)   # 2.0
ceil_val(2.0)   # returns 2.0
ceil_val(-1.5)  #returns -1.0
````

# Reference
- https://en.wikipedia.org/wiki/Floor_and_ceiling_functions

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function ceil_val(x)
    return x -trunc(x) <= 0 ? trunc(x) : trunc(x)+1
end

"""
    floor_val(x)

Finds the floor of x as an Integer

# Example
```julia
floor_val(1.3)  # 1
floor_val(2.0)  # returns 2.0
floor_val(-1.7) # returns -2.0
````

# Reference
- https://en.wikipedia.org/wiki/Floor_and_ceiling_functions

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function floor_val(x)
    return x -trunc(x) >= 0 ? trunc(x) : trunc(x)-1
end
