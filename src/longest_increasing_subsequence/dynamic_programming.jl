"""
    lis(arr::Array{Int}, ::Val{:dp})

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

# For more informations:
https://cp-algorithms.com/sequences/longest_increasing_subsequence.html

# Contributed by:
- [Igor Malheiros](https://github.com/igormalheiros)
"""

function lis(arr::Array{Int}, ::Val{:dp})
    len = length(arr)
    memo = ones(Int, len)
    p = zeros(Int, len)

    lis_arr = Int[]
    lis_value = 0
    lis_pos = 0

    for i = 2:len
        for j = 1:i
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
        push!(lis_arr, arr[lis_pos])
        lis_pos = p[lis_pos]
    end

    reverse!(lis_arr)

    return lis_arr
end
