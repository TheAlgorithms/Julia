function insertion_sort!(arr::Vector{T}) where {T}
    for i in 1:length(arr)-1
        temp = arr[i+1]
        j = i
        while j > 0 && arr[j] > temp
            arr[j+1] = arr[j]
            j -= 1
        end
        arr[j+1] = temp
    end
end
