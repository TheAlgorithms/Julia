export Sorts

"""
  Sorts

`Sorts` are sorting algorithms in Julia.
"""
module Sorts

using TheAlgorithms

export bogo_sort!
export bubble_sort!
export bucket_sort!
export counting_sort!
export exchange_sort!
export heap_sort!
export insertion_sort!
export merge_sort!
export quick_sort!
export selection_sort!

include("bogo_sort.jl")
include("bubble_sort.jl")
include("bucket_sort.jl")
include("counting_sort.jl")
include("exchange_sort.jl")
include("heap_sort.jl")
include("insertion_sort.jl")
include("merge_sort.jl")
include("quick_sort.jl")
include("selection_sort.jl")

end
