"""
	 exponential_search(arr::AbstractArray{T,1}, x::T) where {T <: Real}

Exponential Search in 1-D array
Time Complexity:  O(Log n)
# Exponential Search
It works in O(Log n) time
Exponential search involves two steps:
- Find range where element is present
- Do Binary Search in above found range.
### Time Complexity :
O(Log n)
Applications of Exponential Search:
Exponential Binary Search is particularly useful for unbounded searches, where size of array is infinite. Please refer Unbounded Binary Search for an example.
It works better than Binary Search for bounded arrays, and also when the element to be searched is closer to the first element.

Contributed By:- [Ash](https://github.com/ashwani-rathee)
"""
function exponential_search(arr::AbstractArray{T,1}, x::T) where {T<:Real}
    n = size(arr)[1]
    if (arr[1] == x)
        return 1
    end

    i = 1
    while (i < n && arr[i] <= x)
        i = i * 2
    end
    return binary_search(arr, Int(ceil(i / 2)), min(i, n), x)
end
