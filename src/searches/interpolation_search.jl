"""
# Interpolation Search
Used for sorted array which is uniformly distributed.
Binary Search always goes to the middle element to check. On the other hand, interpolation search may go to different locations according to the value of the key being searched. For example, if the value of the key is closer to the last element, interpolation search is likely to start search toward the end side.
The idea of formula is to return higher value of pos when element to be searched is closer to arr[hi]. And smaller value when closer to arr[lo]
pos = lo + [ (x-arr[lo])*(hi-lo) / (arr[hi]-arr[Lo]) ]
- arr[] ==> Array where elements need to be searched
- x     ==> Element to be searched
- lo    ==> Starting index in arr[]
- hi    ==> Ending index in arr[]
## Derivation =>
Let's assume that the elements of the array are linearly distributed.
General equation of line : y = m*x + c.
y is the value in the array and x is its index.
Now putting value of lo,hi and x in the equation
- arr[hi] = m*hi+c ----(1)
- arr[lo] = m*lo+c ----(2)
- x = m*pos + c     ----(3)
m = (arr[hi] - arr[lo] )/ (hi - lo)
subtracting eqxn (2) from (3)
- x - arr[lo] = m * (pos - lo)
- lo + (x - arr[lo])/m = pos
- pos = lo + (x - arr[lo]) *(hi - lo)/(arr[hi] - arr[lo])
## Algorithm:
Rest of the Interpolation algorithm is the same except the above partition logic.
- Step1: In a loop, calculate the value of “pos” using the probe position formula.
- Step2: If it is a match, return the index of the item, and exit.
- Step3: If the item is less than arr[pos], calculate the probe position of the left sub-array. Otherwise calculate the same in the right sub-array.
- Step4: Repeat until a match is found or the sub-array reduces to zero.

"""

"""
	 interpolation_search(arr::AbstractArray{T,1}, l::T, r::T, x::T) where {T <: Real}

Interpolation Search in 1-D array
Time Complexity: O(log2(log2 n))
"""
function interpolation_search(
    arr::AbstractArray{T,1},
    l::T,
    r::T,
    x::T,
) where {T<:Real}
    n = size(arr)[1]
    if (r >= l && x >= arr[l] && x <= arr[r])
        mid = Int(ceil(l + (((x - arr[l]) * (r - l)) / (arr[r] - arr[l]))))
        if (arr[mid] == x)
            return mid
        elseif (arr[mid] > x)
            interpolation_search(arr, l, mid - 1, x)
        else
            interpolation_search(arr, mid + 1, r, x)
        end
    else
        return -1
    end
end
