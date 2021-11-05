"""
ispangram(input)

Program to determine the sentence is pangram or not.The program will return true if it is pangram and false if it is not.A full description of the algorithm can be found on [exercism](https://exercism.org/tracks/julia/exercises/pangram)

# Arguments:
- `input`: The sentence to find if its pangram or not.

# Examples/Tests 
```julia
julia> ispangram(Pack my box with five dozen liquor jugs)
true

julia> ispangram(The quick brown fox jumps over the lazy dog)
true

julia> wordcount(hello world!!!)
false

```

# Algorithm: 

```julia

for letter in input
    if 'A' <= letter <= 'Z'
        x &= ~(1<<(letter-'A'))
    elseif 'a' <= letter <= 'z'
        x &= ~(1<<(letter-'a'))
    end
    x == 0 && return true
end

```

# References:
(https://exercism.org/tracks/julia/exercises/pangram)

```

# Contributed by:- [Ihjass](https://github.com/Ihjass)
"""
function ispangram(input)
    x = 2^26-1
    for letter in input
        if 'A' <= letter <= 'Z'
            x &= ~(1<<(letter-'A'))
        elseif 'a' <= letter <= 'z'
            x &= ~(1<<(letter-'a'))
        end
        x == 0 && return true
    end
    return false
end
