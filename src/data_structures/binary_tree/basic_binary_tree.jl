abstract type AbstractBinaryTree end
"""
array-based binary tree
"""
abstract type AbstractBinaryTree_arr <: AbstractBinaryTree end
mutable struct BinaryTree{T} <: AbstractBinaryTree_arr where {T}
    n::Int
    root::Int
    par::Vector{Int}
    lch::Vector{Int}
    rch::Vector{Int}
    val::Vector{T}
end
function BinaryTree{T}(size::Int, rootval::T) where {T}
    x = BinaryTree(
        1,
        1,
        zeros(T, size),
        zeros(T, size),
        zeros(T, size),
        Vector{T}(undef, size),
    )
    x.val[1] = rootval
    return x
end

function Base.insert!(tree::BinaryTree, from::Int, value, place::Bool)
    tree.n += 1
    tree.par[tree.n] = from
    if place
        tree.rch[from] = tree.n
    else
        tree.lch[from] = tree.n
    end
    return tree.val[tree.n] = value
end

function Base.insert!(tree::BinaryTree, from::Int, value)
    if tree.lch[from] == 0
        insert!(tree, from, value, false)
    elseif tree.rch[from] == 0
        insert!(tree, from, value, true)
    else
        return false
    end
    return true
end

# for AbstractBinaryTree_arr
function isleaf(
    tree::Tree,
    from::Int,
)::Bool where {Tree<:AbstractBinaryTree_arr}
    return tree.lch[from] == 0 && tree.rch[from] == 0
end

function ch(
    tree::Tree,
    from::Int,
    select::Bool,
) where {Tree<:AbstractBinaryTree_arr}
    if select
        return tree.rch[from]
    else
        return tree.lch[from]
    end
end

function set_ch(
    tree::Tree,
    from::Int,
    select::Bool,
    value::T,
) where {Tree<:AbstractBinaryTree_arr,T}
    if select
        tree.rch[from] = value
    else
        tree.lch[from] = value
    end
end

function height(
    tree::Tree,
    from::Int = tree.root,
) where {Tree<:AbstractBinaryTree_arr}
    count = 0
    if tree.lch[from] != 0
        count = height(tree, tree.lch[from]) + 1
    end
    if tree.rch[from] != 0
        count = max(height(tree, tree.rch[from]) + 1, count)
    end
    return count
end

function depth(tree::Tree, from::Int) where {Tree<:AbstractBinaryTree_arr}
    count = 0
    while from != tree.root
        count += 1
        from = tree.par[from]
    end
    return count
end

function left(
    tree::Tree,
    from::Int = tree.root,
) where {Tree<:AbstractBinaryTree_arr}
    if tree.lch[from] == 0
        return from
    else
        return left(tree, tree.lch[from])
    end
end

function right(
    tree::Tree,
    from::Int = tree.root,
) where {Tree<:AbstractBinaryTree_arr}
    if tree.rch[from] == 0
        return from
    else
        return right(tree, tree.rch[from])
    end
end
