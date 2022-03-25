"""
    pearson_correlation(x, y)

Find the pearson correlation between two variables.

# Example:

julia> PearsonCorrelation([12,11,16,17,19,21],[11,51,66,72,12,15])
-0.2092706263573845

Contribution by: [Aru Bhardwaj](https://github.com/arubhardwaj)


"""

function pearson_correlation(x, y)
    mean_x = sum(x) / length(x)
    mean_y = sum(y) / length(y)
    XY = (x .- mean_x) .* (y .- mean_y)
    XXs = sum((x .- mean_x) .* (x .- mean_x))
    YYs = sum((y .- mean_y) .* (y .- mean_y))
    return (sum(XY) / (sqrt(XXs .* YYs)))
end
