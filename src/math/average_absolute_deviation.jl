"""
    average_absolute_deviation(numbers)
The average absolute deviation of a data set is the average of the absolute deviations from the mean.
It is  a measure of statistical dispersion or variability.

# Input parameters:
- `numbers` : The numbers to find the average absolute deviation of.

# Examples/Tests:
```julia
average_absolute_deviation([1, 2, 3, 4, 5])     # returns 1.2
average_absolute_deviation([0])                 # returns 0.0
average_absolute_deviation([5.5, 64.3, 100.4])  # returns 34.16
```

# Reference
- https://mathworld.wolfram.com/AverageAbsoluteDeviation.html

Contributed by [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function average_absolute_deviation(numbers::Vector{T}) where {T<:Number}
    len = length(numbers)
    mean = sum(numbers) / len
    return round(sum(abs(num - mean) for num in numbers) / len, digits = 2)
end
