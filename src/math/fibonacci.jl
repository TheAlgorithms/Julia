
function fib_recursive(n::Int)
    n < 0 && throw(DomainError("n is negative"))
    function get_nth_term(i::Int)
        if i == 0
            return 0
        elseif i == 1
            return 1
        else
            return get_nth_term(i - 1) + get_nth_term(i - 2)
        end
    end
    return [get_nth_term(i) for i in 0:n]
end

function fib_recursive_memo(n::Int)
    n < 0 && throw(DomainError("n is negative"))
    cache = Dict(0 => 0, 1 => 1)
    function get_nth_term(i::Int)
        if haskey(cache, i)
            return cache[i]
        else
            value = i <= 1 ? 1 : get_nth_term(i - 1) + get_nth_term(i - 2)
            cache[i] = value
            return value
        end
    end
    return [get_nth_term(i) for i in 0:n]
end

function fib_iterative(n::Int)
    if n < 0
        throw(DomainError("n is negative"))
    elseif n == 0
        return [0]
    elseif n == 1
        return [0, 1]
    else
        result = [0, 1]
        a, b = 0, 1
        for i in 2:n
            a, b = b, a + b
            push!(result, b)
        end
        return result
    end
end

println(fib_recursive_memo(35))
println(fib_iterative(35))
println(fib_recursive(35))