include("basic_binary_tree.jl")
"""
array-based binary search tree
left tree values < root value < right tree values
"""
abstract type AbstractBinarySearchTree_arr <: AbstractBinaryTree_arr end
function Base.findfirst(
    value::T,
    tree::Tree,
    place::Int = tree.root,
) where {T,Tree<:AbstractBinarySearchTree_arr}
    if tree.val[place] == value
        return place
    elseif tree.val[place] > value
        if tree.lch[place] == 0
            return 0
        end
        return findfirst(value, tree, tree.lch[place])
    else
        if tree.rch[place] == 0
            return 0
        end
        return findfirst(value, tree, tree.rch[place])
    end
end
