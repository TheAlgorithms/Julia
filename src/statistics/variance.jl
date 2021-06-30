"""
    variance(a::Vector{T}) where T <: Number
    variance(a::UnitRange{T}) where T <: Number

Find the variance from a set of data.

# Arguments:
- `a`: holds the set of data

# Reference
    - According to Ronald E. Walpole, `variance` is used to measure the variability of a set of data. -- Introduction to Statistics by Ronald E. Walpole

# Contributors:
- [Aru Bhardwaj](https://github.com/arubhardwaj)
"""
function variance(a::Vector{T}) where T <: Number
    avg = a / length(a)
    x = sum(a - avg)
    s_sq = x / (length(a) - 1)
    return(s_sq)
end

function variance(a::UnitRange{T}) where T <: Number
    avg = a / length(a)
    x = sum(a - avg)
    s_sq = x / (length(a) - 1)
    return(s_sq)
end

