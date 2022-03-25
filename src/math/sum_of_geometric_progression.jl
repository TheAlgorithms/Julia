"""
    sum_gp(first_term, ratio, num_terms)

Finds sum of n terms in a geometric progression

# Input parameters

- first_term : first term of the series
- raio      : common ratio between consecutive terms -> a2/a1 or a3/a2 or a4/a3
- num_terms  : number of terms in the series till which we count sum

# Example

```julia
sum_gp(1, 2, 10)    # 1023.0
sum_gp(1, 10, 5)    # 11111.0
sum_gp(0, 2, 10)    # 0.0
sum_gp(1, 0, 10)    # 1.0
sum_gp(1, 2, 0)     # -0.0
sum_gp(-1, 2, 10)   # -1023.0
sum_gp(1, -2, 10)   # -341.0
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function sum_gp(first_term, ratio, num_terms)
    # case where ratio is 1
    if ratio == 1
        return num_terms * first_term
    end
    # ormula for finding sum of n terms of a geometric progression
    return (first_term / (1 - ratio)) * (1 - ratio^num_terms)
end
