"""
naive_pattern_search(text, pattern)

Program to find the given pattern in the given text

# Arguments:
- 'text': A string to find the pattern
- 'pattern': A string to find in the given text

# Examples/Tests
```julia
julia> naive_pattern_search("ABCDEF", "DEF")
"DEF found at index: 3"

julia> naive_pattern_search("Hello world!", "eggs")
"No matches found"
```

# References:
(https://www.geeksforgeeks.org/naive-algorithm-for-pattern-searching/)
(https://www.tutorialspoint.com/Naive-Pattern-Searching)

# Contributors:
- [Laptop-Salad](https://github.com/Laptop-Salad)

"""

function naive_pattern_search(text, pattern)
    for index in 0:(length(text)-length(pattern)+1)
        matches = 0
        for character in eachindex(pattern)
            if pattern[character] == text[index+character]
                matches += 1

                if matches == length(pattern)
                    return string(pattern, " found at index: ", index)
                end
            else
                break
            end
        end
    end
    return "No matches found"
end
