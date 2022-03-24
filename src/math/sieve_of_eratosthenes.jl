"""
Sieve of Eratosthenes is an algorithm for finding all the primes upto a limit `n`.

Reference:
-https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
"""
function eratosthenes(n)
    primes = fill(true, n)
    primes[1] = false
    for p in 2:n
        primes[p] || continue
        for i in 2:div(n, p)
            primes[p*i] = false
        end
    end
    return findall(primes)
end
