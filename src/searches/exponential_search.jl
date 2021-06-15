"""
# Exponential Search
It works in O(Log n) time
Exponential search involves two steps:
- Find range where element is present
- Do Binary Search in above found range.
### Time Complexity :
O(Log n)
### Auxiliary Space :
The above implementation of Binary Search is recursive and requires O(Log n) space. With iterative Binary Search, we need only O(1) space.
Applications of Exponential Search:
Exponential Binary Search is particularly useful for unbounded searches, where size of array is infinite. Please refer Unbounded Binary Search for an example.
It works better than Binary Search for bounded arrays, and also when the element to be searched is closer to the first element.
"""

# See Issue https://github.com/TheAlgorithms/Julia/issues/34
function binary_search(arr::AbstractArray{T,1}, l::T, r::T, x::T) where T <: Real
	n = size(arr)[1]
	if (r >= l)
		mid = Int(ceil(l + (r - l) / 2));
		# println(mid)
		if (arr[mid] == x)
			return "Element present at index $mid"
		elseif (arr[mid] > x)
			binary_search(arr, l, mid - 1, x)
		else
			binary_search(arr, mid + 1, r, x)
		end
	else
		return "Element not present in array"
	end
end

"""
	 exponential_search(arr::AbstractArray{T,1}, x::T) where {T <: Real}

Exponential Search in 1-D array
Time Complexity:  O(Log n)
"""
function exponential_search(arr::AbstractArray{T,1}, x::T) where {T <: Real}
	n = size(arr)[1]
	if (arr[1] == x)
		return "Elemenet present at index 1"
	end

	i = 1
	while ( i < n && arr[i] <= x)
		i = i * 2
	end
	return binary_search(arr, Int(ceil(i / 2)), min(i, n), x)
end
