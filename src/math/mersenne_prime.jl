include("prime_check.jl")

function is_mersenne_prime(n::Int)
    num = n
    n += 1
    while n % 2 == 0
        n /= 2
    end
    return n == 1 && prime_check(num)
end

function get_mersenne_primes(limit::Int)
    return [i for i in 1:limit if is_mersenne_prime(i)]
end