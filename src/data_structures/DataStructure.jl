export DataStructure
"""
  DataStructure

`DataStructure` algorithms.
"""
module DataStructure

using TheAlgorithms

export AbstractBinarySearchTree_arr
export AbstractBinaryTree
export AbstractBinaryTree_arr
export BinaryHeap
export BinaryTree
export ch
export depth
export DisjointSet
export find
export height
export insert!
export isleaf
export left
export MaxHeap
export merge!
export MinHeap
export right
export set_ch
export Splay
export top
export LinkedList
export FenwickTree

include("binary_heap.jl")
include("binary_tree/splay.jl")
include("disjoint_set/disjoint_set.jl")
include("linked_list.jl")
include("fenwick_tree.jl")

end
