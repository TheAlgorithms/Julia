include("basic_binary_search_tree.jl")
mutable struct Splay{T} <: AbstractBinarySearchTree_arr where {T}
    n::Int
    root::Int
    par::Vector{Int}
    lch::Vector{Int}
    rch::Vector{Int}
    val::Vector{T}

    cnt::Vector{Int}
    size::Vector{Int}
end
