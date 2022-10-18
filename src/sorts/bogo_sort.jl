"""
BogoSort(array)

Sort an array by randomly shuffling its elements and checking if the resulting array is sorted.

Bogo Sort Steps
1. Randomly rearrange elements in array
2. Check if sorted. If not, repeat step 1
"""

using Random

function bogo_sort!(array::Vector{T}) where {T}
    while !issorted(array)
        Random.shuffle!(array)
    end
    return (array)
end
