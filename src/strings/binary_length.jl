function bin_length_long(s::AbstractString)
    binNum = parse(UInt, s)

    finNum = 0
    seq = 1

    for i in 1:binNum
        if (i == seq)
            finNum += 1
            seq *= 2
        end
    end

    return string(finNum)
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

function bin_length_short(s::AbstractString)
    binNum = parse(UInt, s)

    finNum = 0
    i = 1

    while i <= binNum
        i *= 2
        finNum += 1
    end

    return string(finNum)
end

"""
This algorithm features use of the OEIS entry A070939 - 
length of Binary Representation of n. It finds 
the length of any binary number and returns said length.
  
 https://oeis.org/A070939

This function, as believed, is O(n)

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
