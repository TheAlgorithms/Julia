"""
# Bucket Sort

Bucket Sort is a divide and conquer sorting algorithm.
It distributes elements into buckets and sort each bucket before merging all buckets
Buckets are arrays that each stores a different range of elements
Insertion sort is used to sort the buckets because its fast in small-sized arrays

## Bucket Calculation

number of buckets = length of array
size of buckets = (largest element - smallest element + 1) / length of array

## Bucket Sort Steps

1. Create an array of buckets
2. Add each elements into its respective bucket
3. Sort each non-empty bucket
4. Concatenate elements of non-empty buckets

## Example

1. Array of [3, 5, 2, 9] has 4 buckets
2. The size of buckets = (9 - 2 + 1) / 4 = 2
3. The range of elements can be assign to each bucket, x
    bucket 1: 2 <= x < 4
    bucket 2: 4 <= x < 6
    bucket 3: 6 <= x < 8
    bucket 4: 8 <= x <= 9
4. The distribution of elements in the buckets = [3, 2][5][][9]
5. After sorting the elements each bucket = [2, 3][5][][9]
6. Concatenate all elements = [2, 3, 5, 9]

# Example
```julia
BucketSort!([3, 5, 2, 9]) # returns [2, 3, 5, 9]
```

Contributed By:- [Ming Liang](https://github.com/DrakonDarquesse)
"""

function bucket_sort!(arr::Vector{T}, l::Int = length(arr)) where {T}
    if l == 0
        return nothing
    end

    max = maximum(arr)
    min = minimum(arr)
    r = (max - min + 1) / l
    buckets = Array{T,1}[[] for a in 1:l]

    for i in arr
        push!(buckets[Base.floor(Int, (i - min) / r)+1], i)
    end

    for bucket in buckets
        for i in 1:length(bucket)
            val = bucket[i]
            idx = i
            while idx > 1 && val < bucket[idx-1]
                bucket[idx] = bucket[idx-1]
                idx = idx - 1
            end

            bucket[idx] = val
        end
    end
    return copy!(arr, vcat(buckets...))
end
