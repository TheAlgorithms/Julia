"""
This can contain a maximum of `length(par)` parenting-relations
par is an array of `Int`, which is the index of the parent node.
"""
mutable struct DisjointSet
    par::Vector{Int}
    function DisjointSet(size)
        x = [i for i in 1:size]
        return new(x)
    end
end

"""
Find the ancestor of node `x`.
"""
function find(set::DisjointSet, x::Int)::Int
    if set.par[x] == x
        return x
    else
        return set.par[x] = find(set, set.par[x])
    end
end

function Base.merge!(set::DisjointSet, x::Int, y::Int)
    x = find(set, x)
    y = find(set, y)
    return set.par[x] = y
end
