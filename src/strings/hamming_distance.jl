"""
    function hamming_distance(s1::String, s2::String)

In information theory, the Hamming distance between two strings of equal length is the number of positions at which the corresponding symbols are different. 
In other words, it measures the minimum number of substitutions required to change one string into the other, or the minimum number of errors that could have transformed one string into the other. 
In a more general context, the Hamming distance is one of several string metrics for measuring the edit distance between two sequences. It is named after the American mathematician Richard Hamming.

Reference (https://en.wikipedia.org/wiki/Hamming_distance)

# Arguments:
- `s1`: First string to compare
- `s2`: Second string to compare

# Examples/Tests 
```julia
julia> hamming_distance("karolin", "kathrin")
3

julia> hamming_distance("0000", "1111")
4

julia> hamming_distance("ABCDEFG", "AZCDWGM")
4
```

# Contributors:
- [Sedat Aybars Nazlica](https://github.com/saybarsnazlica)
"""

function hamming_distance(s1::String, s2::String)
    @assert length(s1) == length(s2) "String lengths must be the same"

    distance = 0

    for i in 1:length(s1)
        if s1[i] != s2[i]
            distance += 1
        end
    end
    return distance
end
