"""
    perfect_number(number)

Checks if a number is a perfect_number number or not

# Details

perfect_number number is a positive integer that is equal to the sum of
its positive divisors, excluding the number itself.

For example : 6 is perfect_number number

Divisors of 6 => [1,2,3]

Sum of divisors => 1+2+3 = 6

6 == sum(divisors) # which is true

# Example

```julia
perfect_number(27)     # returns false
perfect_number(28)     # returns true
perfect_number(496)    # returns true
perfect_number(8128)   # returns true
perfect_number(123)    # returns false
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee) and [Rratic](https://github.com/Rratic)
"""
function perfect_number(number::N) where {N<:Number}
    divisors = Vector{Int}()
    for i in 1:(number÷2+1)
        if number % i == 0
            push!(divisors, i)
        end
    end
    return sum(divisors) == number
end
