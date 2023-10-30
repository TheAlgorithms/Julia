"""
    idx_for(i::Int)  

Simple helper function for converting 0-based indices to Julia's 1-based indices.
"""
function idx_for(i::Int)
    return i + 1
end

"""
    heap_sort!(arr::Vector{T}, gt = >, N::Int = length(arr)) where {T}

Sort the given vector (in-place) using the Heapsort algorithm.

Heapsort consists of two stages:
  1. Building a (max) heap of the array
  2. Repeatedly extracting the largest element and inserting it at the front of the sorted part of the array

After the largest element has been extracted, the tree is updated to maintain the heap property via a "sifting" operation.

  Storing a heap in an array is pretty straightforward - for every node with index n, its children are stored at indices
  2n + 1 and 2n + 2 (for 0-based indices). Index 0 contains the root node.
  Since Julia's indices are 1-based, we need to change this a little bit. We're using a trivial helper function 
  idx_for to convert from 0-based to 1-based.

  See https://en.wikipedia.org/wiki/Heapsort for a complete explanation of Heapsort.

  Contributed By:- [Frank Schmitt](https://github.com/frankschmitt)
"""
function heap_sort!(arr::Vector{T}, gt = >, N::Int = length(arr)) where {T}
    if isempty(arr)
        return
    end
    n = N
    i = div(n, 2)
    t = -1

    while true
        if i > 0    # First stage - Sorting the heap
            i -= 1    # Save its index to i 
            t = arr[idx_for(i)]    # Save parent value to t 
        else          # Second stage - Extracting elements in-place 
            n -= 1    # Make the new heap smaller 
            if (n == 0)
                return # When the heap is empty, we are done 
            end
            t = arr[idx_for(n)]               # Save last value (it will be overwritten)
            arr[idx_for(n)] = arr[idx_for(0)] # Save largest value at the end of arr 
        end

        parent = i # We will start pushing down t from parent 
        child = i * 2 + 1 # parent's left child 

        # Sift operation - pushing the value of t down the heap 
        while child < n
            if (
                child + 1 < n &&
                gt(arr[idx_for(child + 1)], arr[idx_for(child)])
            )
                child += 1 # Choose the largest child
            end
            if (gt(arr[idx_for(child)], t))                   # If any child is bigger than the parent 
                arr[idx_for(parent)] = arr[idx_for(child)]    # Move the largest child up 
                parent = child                                # Move parent pointer to this child 
                child = parent * 2 + 1                            #  find the next child
            else
                break # t's place is found 
            end
        end
        arr[idx_for(parent)] = t
    end
end
