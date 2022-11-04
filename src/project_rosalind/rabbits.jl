"""
    rabbits(n::Integer, k::Integer)

Problem: https://rosalind.info/problems/fib/

Given: Two numbers:
          - n => number of months
          - k => number of rabbits litter per each pair 

Returns: Number of rabbits after n months

Contributed by:- [Nikola Mircic](https://github.com/Nikola-Mircic)
"""

function rabbits(n::Integer, k::Integer)
    # For calculating the number of rabbit pairs, we will only need the last two months
    # and instead of the array with n elements, we will only use two variables
    a = 1 # First generation
    b = 1 # Second generation
    # Calculate the number of rabbits for each generation from 3rd to nth
    for i in 3:n
        # Every rabbit pair older than month will give 3 new pairs
        # so the number of rabbits in k-th month is a[k] = a[k-1] + a[k-2] * 3
        t = b
        b = b + 3 * a
        a = t
    end
    return b
end
