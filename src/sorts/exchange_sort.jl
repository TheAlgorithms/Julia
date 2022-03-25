"""
    ExchangeSort(arr)

Sort an array by exchanging elements that are not in their proper position, hence Exchange Sort

Exchange Sort Steps
1. Compares each element of an array
2. Swap those elements that are not in their proper position

Example
1. An array of [1, 2, 4, 3, 5] and compare each elements
2. Since 4 is greater than 3
3. Swap both position
4. Returns [1, 2, 3, 4, 5]

Program to sort an array

# Example
```julia
ExchangeSort([5, 4, 3, 2, 1]) # returns [1, 2, 3, 4, 5]
ExchangeSort([1, 2, 3, 4, 5]) # returns [1, 2, 3, 4, 5]
ExchangeSort(['5', '4', '3', '2', '1']) # returns ['1', '2', '3', '4', '5']
```

Contributed By:- [Gervin Fung](https://github.com/GervinFung)
"""

function exchange_sort!(arr::Vector{T}) where {T}
    size = length(arr)
    for i in 1:size
        for j in i:size
            if (arr[i] > arr[j])
                temp = arr[j]
                arr[j] = arr[i]
                arr[i] = temp
            end
        end
    end
end
