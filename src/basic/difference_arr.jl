"""
    Difference array

# Brief:
    For any array A with N numbers, we can create difference array D with N numbers also.
    Every k-th element of D is equal to difference between A[k] and A[k-1]
        D[k] = A[k-1] - A[k] 

# Complexity of some operations
    - add some value x to the m consecutive elements of array - O(1)
    - print array after any numbers of changes                - O(N)

# Functions
    - create_diff_arr(original::Array{<:Number})
        * Create difference array for array 'original'
    - calculate_arr(diff_arr::Array{<:Number})
        * Recreate the original array from the given difference array
    - add_to_arr(diff_arr::Array{<:Number}, l::Int, r::Int, x::Number)
        * Add x to all elements with index from [l, r]


# Contributed by: [Nikola Mircic](https://github.com/Nikola-Mircic)
"""
module DifferenceArray
# Create difference array for array 'original'
# Parameters:
#   - original - an array which is used for calculating the difference array
function create_diff_arr(original::Array{T}) where {T<:Number}
    n = length(original)

    diff_arr = copy(original)

    for i in 2:n
        diff_arr[i] = original[i] - original[i-1]
    end

    return diff_arr
end

# Create a original array from the given difference array
# Parameters:
#   - diff_arr - an difference array which is used for calculating the original array
function calculate_arr(diff_arr::Array{T}) where {T<:Number}
    n = length(diff_arr)

    arr = copy(diff_arr)

    for i in 2:n
        arr[i] = diff_arr[i] + arr[i-1]
    end

    return arr
end

# Add x to all elements with index from [l, r]
# Parameters:
#   - diff_arr - a difference array of the array you want to change
#   - l - leftmost index of the affected range
#   - r - rightmost index of the affected range
#   - x - a value to be added to all elements from a given range
function add_to_arr(
    diff_arr::Array{T},
    l::Int,
    r::Int,
    x::Number,
) where {T<:Number}
    diff_arr[l] += x
    if r < length(diff_arr)
        diff_arr[r+1] -= x
    end
end
end
