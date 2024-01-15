"""
    lis(arr::Array{<:Integer}, ::Val{:bs})

# Arguments:
- `arr`: sequence of integers

# Examples/Tests 
```julia
julia> lis([3, 10, 2, 1, 20], Val(:bs))
[3, 10, 20]

julia> lis([2, 2, 3], Val(:bs))
[2, 3]
```

# Brief:
Given a sequence of integers, the function finds the longest, strictly increasing, subsequence in that sequence.

# For more information:
https://cp-algorithms.com/sequences/longest_increasing_subsequence.html

# Contributed by:
- [Igor Malheiros](https://github.com/igormalheiros)
"""

function lis(arr::Array{T}, ::Val{:bs}) where {T<:Integer}
    len = length(arr)
    memo = ones(T, len)
    p = ones(Int, len)

    lis_arr = T[]

    len == 0 && return lis_arr # if `arr` is empty

    lis_len = 1
    memo[1] = arr[1]

    for i in 2:len
        # binary search in current `memo`, it uses @view and slicing for in-place verification
        p[i] = searchsortedfirst((@view memo[1:lis_len]), arr[i])
        # if arr[i] is greater than the greatest element in `memo`, it increases `lis_len`
        lis_len = max(lis_len, p[i])
        # updates `memo`
        memo[p[i]] = arr[i]
    end

    # Restoring
    last_pos = lis_len
    for i in len:-1:1
        if p[i] == last_pos
            pushfirst!(lis_arr, arr[i])
            last_pos -= 1
        end
    end

    return lis_arr
end
