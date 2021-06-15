"""
    mode(nums)

Finds mode of a vector of numbers

# Example

```julia
mode([2, 3, 4, 5, 3, 4, 2, 5, 2, 2, 4, 2, 2, 2])        # returns [2]
mode([3, 4, 5, 3, 4, 2, 5, 2, 2, 4, 4, 2, 2, 2])        # returns [2]
mode([3, 4, 5, 3, 4, 2, 5, 2, 2, 4, 4, 4, 2, 2, 4, 2])  # returns [2, 4]
mode(["x", "y", "y", "z"])                              # returns ["y"]
mode(["x", "x" , "y", "y", "z"])                       # returns ["x", "y"]
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function mode(nums)
    dict = Dict() # nums => Number of repetitions
    result = [] # Array of the modes so far
    max = 0 # Max of repetitions so far

    for i in nums
        # Add one to the dict[i] entry (create one if none)
        if i in keys(dict)
            dict[i] += 1
        else
            dict[i] = 1
        end
        # Result updated if no of repetitions of i >= max
        if dict[i] >= max
            if dict[i] > max
                empty!(result)
                max += 1
            end
            append!(result, [i])
        end
    end

    return result
end
