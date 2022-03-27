"""
    count_nucleotides(s::AbstractString)
Given: A DNA string s

of length at most 1000 nt.

Return: Four integers (separated by spaces) counting the respective number of times that the symbols 'A', 'C', 'G', and 'T' occur in s
"""
function count_nucleotides(s::AbstractString)
    return join(map(y -> count(x -> x == y, s), ['A', 'C', 'G', 'T']), " ")
end
