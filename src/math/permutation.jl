"""
    permutation(n, r)
        
    returns the number of ways to choose r items from n items
    with order and without repetition

# Arguments:
- `n`: Positive integers of items to choose from
- 'r': Positive integers of items to choose

Contributed By:- [Mayur Dahibhate](https://github.com/mayurdahibhate)
"""

function permutation(n, r)
    function factorial(n)
        fact = 1

        if n == 0 || n == 1
            return fact
        end

        for i in 1:n
            fact = fact * i
        end

        return fact
    end

    perm = factorial(n) / factorial(n - r)

    return convert(Int64, perm)
end
