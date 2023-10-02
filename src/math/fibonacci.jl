"""
    fib_recursive(n::Int)

Finds the first n fibonacci number using recursive method.

# Arguments:
- `n` : Number of fibonacci numbers required

# Examples/Tests
```julia
fib_recursive(1)    # returns [0]
fib_recursive(2)    # returns [0, 1]
fib_recursive(6)    # returns [0, 1, 1, 2, 3, 5]
fib_recursive(10)   # returns [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
fib_recursive(-1)   # throws DomainError
```

# Reference
- https://mathworld.wolfram.com/FibonacciNumber.html

Contributed by [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function fib_recursive(n::Int)
    n <= 0 && throw(DomainError("n is negative"))
    function get_nth_term(i::Int)
        if i == 1
            return 0
        elseif i == 2
            return 1
        else
            return get_nth_term(i - 1) + get_nth_term(i - 2)
        end
    end
    return [get_nth_term(i) for i in 1:n]
end

"""
    fib_recursive_memo(n::Int)

Finds the first n fibonacci number using recursive method and memoization.

# Arguments:
- `n` : Number of fibonacci numbers required

# Examples/Tests
```julia
fib_recursive_memo(1)    # returns [0]
fib_recursive_memo(2)    # returns [0, 1]
fib_recursive_memo(6)    # returns [0, 1, 1, 2, 3, 5]
fib_recursive_memo(10)   # returns [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
fib_recursive_memo(-1)   # throws DomainError
```

# Reference
- https://mathworld.wolfram.com/FibonacciNumber.html

Contributed by [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function fib_recursive_memo(n::Int)
    n <= 0 && throw(DomainError("n is negative"))
    cache = Dict(1 => 0, 2 => 1)
    function get_nth_term(i::Int)
        if haskey(cache, i)
            return cache[i]
        else
            value = get_nth_term(i - 1) + get_nth_term(i - 2)
            cache[i] = value
            return value
        end
    end
    return [get_nth_term(i) for i in 1:n]
end

"""
    fib_iterative(n::Int)

Finds the first n fibonacci number using iterative method.

# Arguments:
- `n` : Number of fibonacci numbers required

# Examples/Tests
```julia
fib_iterative(1)    # returns [0]
fib_iterative(2)    # returns [0, 1]
fib_iterative(6)    # returns [0, 1, 1, 2, 3, 5]
fib_iterative(10)   # returns [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
fib_iterative(-1)   # throws DomainError
```

# Reference
- https://mathworld.wolfram.com/FibonacciNumber.html

Contributed by [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function fib_iterative(n::Int)
    if n <= 0
        throw(DomainError("n is negative"))
    elseif n == 1
        return [0]
    else
        result = [0, 1]
        a, b = 0, 1
        for i in 2:n-1
            a, b = b, a + b
            push!(result, b)
        end
        return result
    end
end
