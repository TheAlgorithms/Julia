"""
    least_common_multiple(a::Int, b::Int)

Finds the least common multiple of two integers

# Arguments:
- `a`: First of two integers
- `b`: Second of two integers

# Examples/Tests:
```julia
least_common_multiple(12, 76) # returns 228
least_common_multiple(5, -10) # returns 10
```

# References:
- https://en.wikipedia.org/wiki/Least_common_multiple 
- https://www.javatpoint.com/python-find-lcm 
"""

function least_common_multiple(a::Int, b::Int)
    if a >= b
        common_multiple = a
    else
        common_multiple = b
    end

    while (common_multiple % a != 0) || (common_multiple % b != 0)
        common_multiple += 1
    end

    return common_multiple
end
