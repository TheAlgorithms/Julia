"""
    Fenwick tree ( Binary index tree )

# Brief:  
    Fenwick tree is a data structure for calculating prefix sums of an array in O(log n) time.
    Instead of each element containing the sum of the previous ones, each node of the Fenwick tree contains
    the sum of his child nodes.
    This implementation uses a regular array instead of a tree. It uses bit manipulation over
    indices to determine the parent and child nodes.

# Complexity of some operations:
    - Change one item                           - O(log n)
    - Calculate the sum of elements between i and j - O(log n)
    - Calculating the tree                      - O(n)

# Contributed by: [Nikola Mircic](https://github.com/Nikola-Mircic)
"""

module FenwickTree
""" 
This is a function for generating the tree from the given array of numbers.

# Arguments
    - arr::Array{T} : An array of numbers.
# Returns
    - A Fenwick tree for the given array
"""
function create_tree(arr::Array{T}) where {T<:Number}
    # First we create one array that is copy of the given one
    tree = copy(arr)

    n = length(arr) # length of array and generated tree

    for i in 1:n
        parent = i + (i & -i) # Calculate the parent node by adding index and its least significant bit
        if parent <= n  # Check if parent index is part of the tree
            tree[parent] += tree[i] # Add the value of the child to the parent
        end
    end

    return tree
end

"""
This is a function that returns the sum of the first x elements

# Arguments
    - tree::Array{T} - A Fenwick tree for an array
    - x::Integer - The number of the elements
"""
function get_sum(tree::Array{T}, x::Integer) where {T<:Number}
    sum = 0

    while x > 0
        sum += tree[x]
        x -= (x & -x) # Select all child nodes containing parts of the sum from the interval [1, x]
    end

    return sum
end

"""
This function calculate sum of the elements from the interval [x, y]

# Arguments
    - tree::Array{T} - A Fenwick tree for an array
    - x::Integer - The smaller number from the interval
    - y::Integer - The bigger number from the interval

# Returns
    - Sum of the elements from interval [x, y]
"""

function get_sum(tree::Array{T}, x::Integer, y::Integer) where {T<:Number}
    return get_sum(tree, y) - get_sum(tree, x - 1)
end

"""
This function changes the tree to correspond to an array after adding k to the element
at index x

# Arguments
    - tree::Array{T} - A Fenwick tree for an array
    - x::Integer - Index of the changed element
    - k::Integer - An integer added to the element arr[x]
"""
function change(tree::Array{T}, x::Integer, k::Integer) where {T<:Number}
    while x < length(tree)
        tree[x] += k
        x += (x & -x)
    end
end

"""
Create a original array from the given tree

# Arguments
    - tree::Array{T} - an binary index tree which is used for calculating the original array
"""
function to_arr(tree::Array{T}) where {T<:Number}
    n = length(tree)

    arr = copy(tree)

    for i in 1:n
        parent = i + (i & -i) # Calculate the parent node by adding index and its least significant bit
        if parent <= n  # Check if parent index is part of the tree
            arr[parent] -= tree[i] # Subtract the value of the child node from the value of the parent node
        end
    end

    return arr
end

end # module end
