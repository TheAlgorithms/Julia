"""
    amicable_pairs(n::Int)
Two unique natural numbers are said to form an amicable pair when them sum of proper divisors of each is equal to the other number.

# Input parameters:
- `n` : Finds amicable pairs below n.

# Examples/Tests:
```julia
amicable_pairs(10)      # returns []
amicable_pairs(400)     # returns [220 => 284]
amicable_pairs(2000)    # returns [220 => 284, 1184 => 1210]
amicable_pairs(-1)      # throws DomainError
```

# Reference
- https://mathworld.wolfram.com/AmicablePair.html

Contributed by [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function amicable_pairs(n::Int)
    n <= 0 && throw(DomainError("Input must be a postive integer"))

    # Find the sum of factors for every number from 1 to n
    factor_sums = zeros(Int, n)
    for i in 1:n
        for j in 2i:i:n
            factor_sums[j] += i
        end
    end

    result = Vector{Pair{Int,Int}}()
    for (x, y) in enumerate(factor_sums)
        # Factor sum of x is y
        if (y > 0 && x > y && n > y && factor_sums[y] == x)
            # Factor sum of y is x. x > y to avoid double counting.
            push!(result, y => x)
        end
    end
    return result
end
