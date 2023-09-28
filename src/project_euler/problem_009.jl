"""
    Special Pythagorean triplet

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

# Examples/Tests:
```julia
problem_009()   # returns 31875000
```

# Reference
- https://projecteuler.net/problem=9
- https://en.wikipedia.org/wiki/Pythagorean_triple#Generating_a_triple

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_009()
    #=
    By Euclid's method for generating pythagorean triples:
    a = m^2 - n^2
    b = 2mn
    c = m^2 + n^2

    a + b + c = 2m^2 + 2mn

    Since a + b + c = 1000
    2m^2 + 2mn = 1000
    on simplifying,
    n = 500/m - m
    as n is an integer, m has to be a factor of 500
    =#
    for m in divisors(500)
        n = 500 / m - m
        a = m^2 - n^2
        b = 2m * n
        c = m^2 + n^2

        a <= 0 && continue

        a + b + c == 1000 && return a * b * c
    end
end
