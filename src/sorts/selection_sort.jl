function selection_sort!(arr::Vector{T}) where {T}
    l = length(arr)
    for i in 1:l-1
        place = i
        for j in i+1:l
            if arr[j] < arr[place]
                place = j
            end
        end
        temp = arr[i]
        arr[i] = arr[place]
        arr[place] = temp
    end
end
