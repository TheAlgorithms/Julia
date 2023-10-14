# Problem from https://exercism.io/my/tracks/julia#exercise-binary-search
# Based on my published solution https://exercism.io/tracks/julia/exercises/binary-search/solutions/5dcd7f36433245a28484889c42a957c0

# Problem Instructions:

"""
    binary_search(list, query; rev=false, lt=<, by=identity)

Implement a binary search algorithm.
Searching a sorted collection is a common task. A dictionary is a sorted list of word definitions. Given a word, one can find its definition. A telephone book is a sorted list of people's names, addresses, and telephone numbers. Knowing someone's name allows one to quickly find their telephone number and address.

If the list to be searched contains more than a few items (a dozen, say) a binary search will require far fewer comparisons than a linear search, but it imposes the requirement that the list be sorted.

In computer science, a binary search or half-interval search algorithm finds the position of a specified input value (the search "key") within an array sorted by key value.

In each step, the algorithm compares the search key value with the key value of the middle element of the array.

If the keys match, then a matching element has been found and the range of indices that equal the search key value are returned.

Otherwise, if the search key is less than the middle element's key, then the algorithm repeats its action on the sub-array to the left of the middle element or, if the search key is greater, on the sub-array to the right.

If the remaining array to be searched is empty, then the key cannot be found in the array and a special "not found" indication is returned. Search methods in Julia typically return an empty range located at the insertion point in this case.

A binary search halves the number of items to check with each iteration, so locating an item (or determining its absence) takes logarithmic time. A binary search is a dichotomic divide and conquer search algorithm.

Bonus task:
Implement keyword arguments by, lt and rev so that by specifies a transformation applied to all elements of the list, lt specifies a comparison and rev specifies if the list is ordered in reverse.

Contributed By:- [Soc Virnyl Estela](https://github.com/uncomfyhalomacro)
"""
function binary_search(list, query; rev = false, lt = <, by = identity)
    if issorted(list) || issorted(list; rev = true)
        low = !rev ? 1 : length(list)
        high = !rev ? length(list) : 1
        middle(l, h) = round(Int, (l + h) // 2)
        query = by(query)

        while !rev ? low <= high : high <= low
            mid = middle(low, high)
            by(list[mid]) === query && return mid:mid
            if lt(by(list[mid]), query)
                low = !rev ? mid + 1 : mid - 1
            else
                high = !rev ? mid - 1 : mid + 1
            end
        end
        return !rev ? (low:high) : (high:low)

    else
        throw(error("List not sorted, unable to search value"))
    end
end

# See Issue https://github.com/TheAlgorithms/Julia/issues/34
"""
    binary_search(arr::AbstractArray{T,1}, l::T, r::T, x::T) where {T<:Real}

The implementation of this binary Search is recursive and requires O(Log n) space. With iterative Binary Search, we need only O(1) space. Useful for the implementation of `exponential_search`.

Contributed By:- [Ash](https://github.com/ashwani-rathee)
"""
function binary_search(
    arr::AbstractArray{T,1},
    l::T,
    r::T,
    x::T,
) where {T<:Real}
    if (r >= l)
        mid = Int(ceil(l + (r - l) / 2))
        if (arr[mid] == x)
            return mid
        elseif (arr[mid] > x)
            binary_search(arr, l, mid - 1, x)
        else
            binary_search(arr, mid + 1, r, x)
        end
    else
        return -1
    end
end
