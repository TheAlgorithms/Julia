abstract type HeapType end
struct MinHeapType <: HeapType end
struct MaxHeapType <: HeapType end

"""
    BinaryHeap{T,HT}

A heap data structures implemented as a binary tree. It can be instantiated either as a `MinHeap` or
`MaxHeap`. In a `MinHeap` each element in the tree is smaller than its children, and similarly, in a
`MaxHeap` each element is greater than its children, this is called "Heap Property".

One of the most common usage of the Heaps is as a Priority Queue. Note that the element with highest
priority will always be at the root of the tree.

In this implementation, the tree is store in a `Vector` where the first element (`index = 1`) is the
root and for all elements, it's children will be at `index * 2` and `index * 2 + 1`. The methods are
implemented just once for both min and max heap, and it relies on the multiple dispatch of the
`isbefore` function that will depend on the heap type.

# Functions:
- `MinHeap{T}`/`MaxHeap{T}`: constructors
- `push!(heap, elements...)`: push elements into the heap
- `top(heap)`: get the top element (smaller in a `MinHeap`, greater in a `MaxHeap`)
- `pop!(heap)`: get top element and remove it from the heap
- `isempty(heap)`: wheter theres no elemets in the heap
- `length(heap)`: how many elements are in the heap

# Example
```jldoctest
heap = MinHeap{Int}()
push!(heap, 4, 2, 3, 1, 5)
while !isempty(heap)
    println(pop!(heap))
end

# output

1
2
3
4
5
```

# Complexities:
- Space: O(n)
- Get top element: O(1)
- Push a element: O(log n)
- Pop a element: O(log n)
- Get number of elements: O(1)

Contributed By: [Gabriel Soares](https://github.com/gosoares)
"""
struct BinaryHeap{T,HT<:HeapType}
    tree::Vector{T}

    BinaryHeap{T,HT}() where {T,HT} = new{T,HT}(T[])
end

# type aliases for max and min heaps
const MinHeap{T} = BinaryHeap{T,MinHeapType}
const MaxHeap{T} = BinaryHeap{T,MaxHeapType}

"""
    isbefore(heap, x, y)

Whether `x` comes before `y` in the `heap` ordering.
"""
isbefore(::MinHeap{T}, x::T, y::T) where {T} = isless(x, y)
isbefore(::MaxHeap{T}, x::T, y::T) where {T} = isless(y, x)

function Base.push!(heap::BinaryHeap{T}, els::T...) where {T}
    tree = heap.tree

    for el in els
        # first the element is pushed to the end of the tree
        push!(tree, el)

        # check if the element is respecting the heap property
        check = lastindex(tree)
        while check > 1 && isbefore(heap, tree[check], tree[check÷2])
            # if element has higher priority than its parent, swap them
            parent = check ÷ 2 # integer division
            _swap(tree, parent, check)

            # now check on its the new position
            check = parent
        end
    end

    return
end

function Base.pop!(heap::BinaryHeap)
    isempty(heap) && throw(ArgumentError("heap must be non-empty"))

    tree = heap.tree
    el = tree[begin] # store the value of the top element
    # remove top element from the tree and move the element at the end there
    tree[begin] = tree[end]
    pop!(tree)

    # check if the element is respecting the heap property
    check = firstindex(tree)
    while check * 2 <= lastindex(tree)
        # if its not, first find which of its children has the highest priority
        c = check * 2
        if c + 1 <= lastindex(heap.tree) &&
           isbefore(heap, heap.tree[c+1], heap.tree[c])
            c = c + 1
        end

        # if the child has higher prority, swap them
        if isbefore(heap, tree[c], tree[check])
            _swap(tree, c, check)
        else
            break
        end

        # now check on its the new position
        check = c
    end

    return el
end

top(heap::BinaryHeap) = heap.tree[begin]
Base.isempty(heap::BinaryHeap) = isempty(heap.tree)
Base.length(heap::BinaryHeap) = length(heap.tree)

# auxiliar function to swap element `i` and `j` in the collection `x`
@inline function _swap(x, i, j)
    aux = x[i]
    x[i] = x[j]
    x[j] = aux
    return
end
