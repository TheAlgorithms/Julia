"""
    median(nums)

Finds median of a vector of numbers

## Example

```julia
median([2,1,3,4])                   # returns 2.5
median([2, 70, 6, 50, 20, 8, 4])    # returns 8
median([0])                         # returns 0
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee) and [Rratic](https://github.com/Rratic)
"""
function median(nums::Vector{T}) where {T<:Number}
    sorted = sort(nums)
    len = length(sorted)
    mid_index = div(len, 2)
    return if len % 2 == 0
        (sorted[mid_index+1] + sorted[mid_index]) / 2
    else
        sorted[mid_index+1]
    end
end
