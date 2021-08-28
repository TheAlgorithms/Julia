"""
# Euclid's Algorithm for GCD

greatest common divisor (GCD) is the greatest positive integer that able to divide all provided number evenly without remainder

# Reference
- Greatest Common Divisor -- https://brilliant.org/wiki/greatest-common-divisor/

# Example
```julia
gcd_euclid_algorithm([30, 12, 6]) # returns 6
gcd_euclid_algorithm([13, 48]) # returns 1
gcd_euclid_algorithm([2, 4, 6, 8, 16]) # returns 2
```

"""
function gcd_euclid_algorithm(arr::Vector{N})where N<:Integer

    result = arr[1]

    for i in 2:length(arr)
        result = find_gcd(result,arr[i])
        if result == 1
            break
         end
    end

    return result
end

function find_gcd(number1::Int,number2::Int)::Int
    while number2!=0
        number1, number2 = number2, number1 % number2
    end

    return number1
end