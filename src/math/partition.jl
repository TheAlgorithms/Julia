"""
    partition_recursive(n)

Finds partitions of an integer using recursion.

A partition of a positive integer n, also called an integer partition,
is a way of writing n as a sum of positive integers.

There are 7 partitions of 5:
5
4 + 1
3 + 2
3 + 1 + 1
2 + 2 + 1
2 + 1 + 1 + 1
1 + 1 + 1 + 1 + 1

Partition of n is equal to the sum of partition of n with k parts.

``P \\left ( n \\right ) = \\sum_{k=1}^{n} P_{k} \\left ( n \\right )``

Partition of n with k parts is the sum of
partition of n-1 with k-1 parts and,
partition of n-k with k parts.

``P_{k}\\left ( n \\right ) = 
P_{k-1}\\left ( n - 1 \\right ) + P_{k}\\left ( n - k \\right )``

# Example
```julia
partition_recursive(0)      # returns 1
partition_recursive(1)      # returns 1
partition_recursive(10)     # returns 42
partition_recursive(-1)     # returns DomainError
```
# References
- Partitions of a positive integer -- https://en.wikipedia.org/wiki/Partition_function_(number_theory)
- Partitions of a positive integer -- https://www.whitman.edu/mathematics/cgt_online/book/section03.03.html

# Contributor
- [Vaishakh C R](https://github.com/Whiteshark-314)
"""
function partition_recursive(n::N)::BigInt where N<:Integer
    n < 0 && 
        throw(DomainError("partition_recursive() only accepts positive integral values"))
    if n == 0
        return one(BigInt)
    end
	k = collect(1:n)
	return sum(partition_k_parts.(n, k))
end

function partition_k_parts(n, k)
    n < 0 || k < 0 && 
        throw(DomainError("partition_k_parts() only accepts positive integral values"))
	if (n == 0 && k == 0) || (n > 0 && k == 1) || n == k
		return one(BigInt)
	elseif k == 0 || k > n
		return zero(BigInt)
	end
	return partition_k_parts(n-1, k-1) + partition_k_parts(n-k, k)
end
