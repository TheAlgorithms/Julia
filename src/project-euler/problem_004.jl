"""
    Largest palindrome product

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

# Examples/Tests:
```julia
problem_004()   # returns 906609
```

# Reference
- https://projecteuler.net/problem=4

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_004()
    max = 0
    for i in 100:999
        for j in 100:999
            num = i * j
            if num > max && is_palindrome(num)
                max = num
            end
        end
    end
    return max
end

function is_palindrome(n::Int)
    rev = 0
    num = n
    while num != 0
        rev = 10 * rev + num % 10
        num ÷= 10
    end
    return rev == n
end
