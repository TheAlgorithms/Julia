"""
    krishnamurthy(number)

Check if a number is a Krishnamurthy number or not

# Details

It is also known as Peterson Number. 

A Krishnamurthy Number is a number whose sum of the
factorial of the digits equals to the original
number itself.

For example: 145 = 1! + 4! + 5!
    So, 145 is a Krishnamurthy Number

# Example

```julia
krishnamurthy(145) # returns true
krishnamurthy(240) # returns false
krishnamurthy(1)   # returns true 
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function krishnamurthy(number)
    if number != trunc(number) || number < 0
        throw(
            error("krishnamurthy() only accepts non-negative integral values"),
        )
    end
    total = 0
    temp = number
    while temp > 0
        temp, digit = divrem(temp, 10)
        total += factorial_iterative(digit)
    end
    return total == number
end
