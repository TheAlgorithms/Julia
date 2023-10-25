"""
    prefix_sum(arr::Vector{<:Number})

# Brief
Given an input array of numbers, return an array of the sum of each "prefix" of the input array i.e.
the 1st element, 1st + 2nd element, 1st + 2nd + 3rd, etc.

This functionality is available in base Julia as `cumsum`.

# Arguments
- `arr`: an array of numbers

# Examples
```julia
julia> prefix_sum([1, 2, 3])
3-element Vector{Int64}:
 1
 3
 6

julia> prefix_sum([0.0, 10.0, π])
3-element Vector{Float64}:
  0.0
 10.0
 13.141592653589793
```
"""
function prefix_sum(arr::Vector{T}) where {T<:Number}
    pre = T[]
    preans = zero(T)
    for i in arr
        preans += i
        push!(pre, preans)
    end
    return pre
end
