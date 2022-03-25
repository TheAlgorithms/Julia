"""
    variance(a)

Find the variance from a set of data.

# Arguments:
- `a`: holds the set of data

# Reference
    - According to Ronald E. Walpole, `variance` is used to measure the variability of a set of data. -- Introduction to Statistics by Ronald E. Walpole

# Contributors:
- [Aru Bhardwaj](https://github.com/arubhardwaj)
"""
function variance(a)
    avg = sum(a) / length(a)
    x = sum((a .- avg) .^ 2)
    s_sq = x / (length(a) - 1)
    return (s_sq)
end
