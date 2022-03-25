"""
    mean(nums)

Find mean of a vector of numbers

# Example

```julia
mean([3, 6, 9, 12, 15, 18, 21])      # returns 12.0
mean([5, 10, 15, 20, 25, 30, 35])    # returns 20.0
mean([1, 2, 3, 4, 5, 6, 7, 8])       # returns 4.5
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee) and [Rratic](https://github.com/Rratic)
"""
function mean(nums::Vector{T}) where {T<:Number}
    return sum(nums) / length(nums)
end
