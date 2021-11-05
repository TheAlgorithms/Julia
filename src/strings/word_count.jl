"""
wordcount(sentence)

Program to find word count in the given sentence. The program will return count with the word.A full description of the algorithm can be found on [exercism](https://exercism.org/tracks/julia/exercises/word-count)

# Arguments:
- `sentence`: The sentence to find the word count.

# Examples/Tests 
```julia
julia> wordcount(The quick brown fox jumps over the lazy dog)
Dict{Any, Any}("jumps" => 1, "the" => 2, "brown" => 1, "over" => 1, "quick" => 1, "lazy" => 1, "dog" => 1, "fox" => 1)

julia> wordcount(the sky is blue and beautiful)
Dict{Any, Any}("and" => 1, "the" => 1, "sky" => 1, "blue" => 1, "is" => 1, "beautiful" => 1)

```

# Algorithm: 

```julia

for word in eachmatch(reg_expression, sentence)
    if !haskey(counts, word.match)
        counts[word.match] = 1
    else
        counts[word.match] += 1
    end
end

```

# References:
(https://exercism.org/tracks/julia/exercises/word-count)

```

# Contributed by:- [Ihjass](https://github.com/Ihjass)
"""
function wordcount(sentence)
    lowercase_sentence = lowercase(sentence)
    counts = Dict()
    regex = r"(\w+('\w)?)"
    for w in eachmatch(regex, lowercase_sentence)
        if !haskey(counts, w.match)
            counts[w.match] = 1
        else
            counts[w.match] += 1
        end
    end
    return counts
end
