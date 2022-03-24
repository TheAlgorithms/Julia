"""
    collatz_sequence(n)

Collatz conjecture: start with any positive integer n. The next term is
obtained as follows:
	If n term is even, the next term is: n / 2 .
	If n is odd, the next term is: 3 * n + 1.
The conjecture states the sequence will always reach 1 for any starting value n.
"""

function collatz_sequence(n::N) where {N<:Integer}
    sequence = [n]
    while n != 1
        n = n % 2 == 1 ? 3 * n + 1 : div(n, 2)
        append!(sequence, n)
    end
    return sequence
end
