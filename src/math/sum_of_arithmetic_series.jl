"""
    sum_ap(first_term, diff, num_terms)

Finds sum of a arithmetic progression series

# Input parameters

- first_term : first term of the series
- diff       : common difference between consecutive terms
- num_terms  : number of terms in the series till which we count sum

# Example 

```julia
sum_ap(1, 1, 10)    # returns 55.0 
sum_ap(1, 10, 100)  # returns 49600.0
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function sum_ap(first_term, diff, num_terms)
    #formula for sum of the ap series
    sum = (num_terms / 2) * (2 * first_term + (num_terms - 1) * diff)
    return sum
end
