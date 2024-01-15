"""
    bin_length(binNum)
Returns the length of binNum's binary representation.

# Input parameters:
- `binNum` : The number to find the binary length of.

# Examples/Tests:
```julia
bin_length(1)       # returns 1
bin_length(2)       # returns 2
bin_length(3)       # returns 2
bin_length(4)       # returns 3
bin_length(5)       # returns 3
bin_length(12)      # returns 4
bin_length(256)     # returns 9
bin_length(1024)    # returns 11
bin_length(-1)      # throws DomainError
```

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function bin_length(binNum::T) where {T<:Integer}
    binNum <= 0 && throw(DomainError("binNum must be a positive integer"))
    return floor(log2(binNum)) + 1
end

"""
This algorithm features use of the OEIS entry A070939 - 
length of Binary Representation of n. It finds 
the length of any binary number and returns said length.
  
 https://oeis.org/A070939

This function, as believed, is O(n)

The idea follows that the sequence is dependent on 
a repeating pattern of 2. Short for sequence, seq is the
number of digits required before an increase in finNum 
or final number as seen here with the first few
iterations - i on the left, final number on the right:

1 : 1 
2 : 2
3 : 2
4 : 3
5 : 3
6 : 3
7 : 3
8 : 4
cont.

As you can see, for every version of i, there is an appropriate
modified number that only repeats for the sequence of the last
doubled amount.

#Contributions:
Contributed by F35H: https://github.com/F35H
"""
function bin_length_long(binNum::T) where {T<:Integer}
    binNum <= 0 && throw(DomainError("binNum must be a positive integer"))

    finNum = 0
    seq = 1

    for i in 1:binNum
        if (i == seq)
            finNum += 1
            seq *= 2
        end
    end

    return finNum
end

"""
This algorithm features use of the OEIS entry A070939 - 
length of Binary Representation of n. It finds 
the length of any binary number and returns said length.
  
 https://oeis.org/A070939

This function, as believed, is O(log(n))

The idea follows that the sequence is dependent on 
a repeating pattern of 2. The final number being finNum
increases on every doubling of i.

1 : 1 
2 : 2
3 : 2
4 : 3
5 : 3
6 : 3
7 : 3
8 : 4
cont.

As you can see, for every version of i, there is an appropriate
final number that iterates on every doubling of i.

Contributors:
- [F45H](https://github.com/F35H)
"""
function bin_length_short(binNum::T) where {T<:Integer}
    binNum <= 0 && throw(DomainError("binNum must be a positive integer"))

    finNum = 0
    i = 1

    while i <= binNum
        i *= 2
        finNum += 1
    end

    return finNum
end
