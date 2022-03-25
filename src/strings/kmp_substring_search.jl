"""
    GetIndexWithKMP(string::String, sub_string::String, ignore_case::Bool)::Int

Find if a string contain a given sub string with KMP Search, as an explanation might be too lengthy
As such, a detailed explanation can be found at https://towardsdatascience.com/pattern-search-with-the-knuth-morris-pratt-kmp-algorithm-8562407dba5b


Questions and answers
1. Why KMP instead of naive search?
- Given n = length of string , m = length of string P
- Then, the naive search will have time complexity O(mn) to find all occurrences of pattern P in S
- However, knuth-morris-pratt (KMP) algorithm will have tim complexity of O(m+n) to find all occurrences of pattern P in S
- Hence, KMP is more efficient than the naive approach


Example

```julia
GetIndexWithKMP("Hello I am Gervin", "Hello I am Gervin", false) # returns 1
GetIndexWithKMP("ABABDABACDABABCABAB", "ABABCABAB", false) # returns 11
GetIndexWithKMP("SeEms Like IgNOrE CaSe Work", "seems like ignore case work", true) # returns 1
```

Contributed By:- [Gervin Fung](https://github.com/GervinFung)
Note: This function will also allow ignoring cases also

"""

# by convention -1 will be returned if the string does not contain the sub-string given
# in this case, 0 will be returned for Julia with start index of 1
# reason is that -1 is for language with start index of 0
# Should be convenient for others as most programming language use -1 if the string does not contain the sub-string given
const NO_SUBSTRING_INDEX = 0
# 1 is the first index, unlike others, where 0 is the first index
# Should be convenient for others as most programming language use 0 as first index
const JULIA_FIRST_INDEX = 1

function create_suffic_array(
    pattern_length::Int,
    sub_string::String,
)::Vector{Int}

    # Longest Proper Prefix which is Suffix array
    lps::Vector{Int} = ones(Int, pattern_length)

    index::Int = JULIA_FIRST_INDEX
    i::Int = 1 + JULIA_FIRST_INDEX

    while (i < pattern_length)
        if sub_string[i] == sub_string[index]
            lps[i] = index + 1
            index += 1
            i += 1
        else
            if index != 1
                index = lps[index-1]
            else
                lps[i] = 1
                i += 1
            end
        end
    end

    return lps
end

# this function will be used to obtain the index which the substring was found
function get_index_with_kmp(
    string::String,
    sub_string::String,
    ignore_case::Bool,
)::Int
    string = ignore_case ? lowercase(string) : string
    sub_string = ignore_case ? lowercase(sub_string) : sub_string

    string_length::Int = length(string)
    substring_length::Int = length(sub_string)

    lps::Vector{Int} = create_suffic_array(substring_length, sub_string)

    # likewise, 1 is the first index, unlike others, where 0 is the first index
    i::Int = JULIA_FIRST_INDEX
    j::Int = JULIA_FIRST_INDEX

    while i < string_length + 1 && j < substring_length + 1
        if string[i] == sub_string[j]
            i += 1
            j += 1
        else
            if j != 1
                j = lps[j-1]
            else
                i += 1
            end
        end
    end

    return j == substring_length + 1 ? i - j + 1 : NO_SUBSTRING_INDEX
end

# optional function that returns boolean if string does contain the sub-string given
function contain_substring_with_kmp(
    string::String,
    sub_string::String,
    ignore_case::Bool,
)::Bool
    return get_index_with_kmp(string, sub_string, ignore_case) !=
           NO_SUBSTRING_INDEX
end
