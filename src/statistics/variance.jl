function variance(a)
    avg = a / length(a)
    x = sum(a - avg)
    s_sq = x / (length(a) - 1)
    return(s_sq)
end
