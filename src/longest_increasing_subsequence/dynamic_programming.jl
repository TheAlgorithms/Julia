"""
    lis(arr::Array{<:Integer}, ::Val{:dp})

# Arguments:
- `arr`: sequence of integers

# Examples/Tests 
```julia
julia> lis([3, 10, 2, 1, 20], Val(:dp))
[3, 10, 20]

julia> lis([2, 2, 3], Val(:dp))
[2, 3]
```

# Brief:
Given a sequence of integers, the function finds the longest, strictly increasing, subsequence in that sequence.

# For more information:
https://cp-algorithms.com/sequences/longest_increasing_subsequence.html

# Contributed by:
- [Igor Malheiros](https://github.com/igormalheiros)
"""

function lis(arr::Array{T}, ::Val{:dp}) where {T<:Integer}
    len = length(arr)
    memo = ones(Int, len)
    p = zeros(Int, len)

    lis_arr = T[]

    len == 0 && return lis_arr # if arr is empty

    lis_value = 1
    lis_pos = 1

    for i in 2:len
        for j in 1:i
            if arr[j] < arr[i] && memo[i] < memo[j] + 1
                memo[i] = memo[j] + 1
                p[i] = j
            end
        end
        # Updates the longest increasing value and position
        if memo[i] > lis_value
            lis_value = memo[i]
            lis_pos = i
        end
    end

    # Restoring
    while lis_pos != 0
        pushfirst!(lis_arr, arr[lis_pos])
        lis_pos = p[lis_pos]
    end

    return lis_arr
end
