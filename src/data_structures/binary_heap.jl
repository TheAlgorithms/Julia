abstract type HeapType end
struct MinHeapType <: HeapType end
struct MaxHeapType <: HeapType end

struct BinaryHeap{T,HT<:HeapType}
    tree::Vector{T}

    BinaryHeap{T,HT}() where {T,HT} = new{T,HT}(T[])
end

# type aliases for max and min heaps
const MinHeap{T} = BinaryHeap{T,MinHeapType}
const MaxHeap{T} = BinaryHeap{T,MaxHeapType}

isbefore(::MinHeap{T}, x::T, y::T) where {T} = isless(x, y)
isbefore(::MaxHeap{T}, x::T, y::T) where {T} = isless(y, x)

top(heap::BinaryHeap) = heap.tree[begin]
Base.isempty(heap::BinaryHeap) = isempty(heap.tree)
Base.length(heap::BinaryHeap) = length(heap.tree)

function Base.push!(heap::BinaryHeap{T}, els::T...) where {T}
    tree = heap.tree

    for el in els
        push!(tree, el)

        check = lastindex(tree)
        while check >= 1
            parent = check ÷ 2 # integer division
            if parent >= 1 && isbefore(heap, tree[check], tree[parent])
                _swap(tree, parent, check)
            end
            check = parent
        end
    end

    return
end

function Base.pop!(heap::BinaryHeap)
    isempty(heap) && throw(ArgumentError("heap must be non-empty"))

    tree = heap.tree
    el = tree[begin]
    tree[begin] = tree[end]
    pop!(tree)

    check = firstindex(tree)
    while check * 2 <= lastindex(tree)
        c = check * 2
        if c + 1 <= lastindex(heap.tree) &&
           isbefore(heap, heap.tree[c+1], heap.tree[c])
            c = c + 1
        end

        if isbefore(heap, tree[c], tree[check])
            _swap(tree, c, check)
        end

        check = c
    end

    return el
end

@inline function _swap(x, i, j)
    aux = x[i]
    x[i] = x[j]
    x[j] = aux
    return
end
