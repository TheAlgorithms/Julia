"""
    reverse_complement(s::AbstractString)
Given: A DNA string s of length at most 1000 bp.

Return: The reverse complement s^c of s.
"""

function reverse_complement(s::AbstractString)
    rules = Dict('A' => 'T', 'T' => 'A', 'G' => 'C', 'C' => 'G')
    return map(x -> rules[x], reverse(s))
end
