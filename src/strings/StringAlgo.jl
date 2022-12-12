"""
  StringAlgo

`StringAlgo` in Julia.
"""
module StringAlgo

export contain_substring_with_kmp
export ispangram
export detect_anagrams
export is_palindrome
export word_count
export hamming_distance
export rabin_karp
export LCS

include("detect_anagrams.jl")
include("is_palindrome.jl")
include("kmp_substring_search.jl")
include("pangram.jl")
include("word_count.jl")
include("hamming_distance.jl")
include("rabin_karp.jl")
include("lcs.jl")

end
