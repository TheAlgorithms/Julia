"""
    detect_anagrams(subject, candidates)
A function that checks if a list of words
is an [Anagram](https://en.wikipedia.org/wiki/Anagram) or not of a subject word.

is the original word = subject
is list of words to be compared if they are an anagram of `subject` = candidates

```
julia> subject = "listen"
julia> candidates = ["inlets", "enlists", "google", "banana"]
julia> detect_anagrams(subject, candidates)
1-element Vector{String}:
 "inlets"
```

Contributed By:- [Soc V. E.](https://github.com/ReneganRonin)
Based on my exercism's Julia track problem solution on [Anagrams](https://exercism.io/my/solutions/0a1d39faa5694624b7750be3ebf6c974).

Instructions:

An anagram is a rearrangement of letters to form a new word. Given a word and a list of candidates, select the sublist of anagrams of the given word.
Given "listen" and a list of candidates like "enlists" "google" "inlets" "banana" the program should return a list containing "inlets".

Inspired by the [Extreme Startup game](https://github.com/rchatley/extreme_startup)
"""
function detect_anagrams(subject, candidates)
    function condition(i)
        return sort(collect(lowercase(subject))) == sort(collect(lowercase(i)))
    end
    collection = collect(
        word for word in candidates if lowercase(word) != lowercase(subject)
    )
    return filter(condition, collection)
end
