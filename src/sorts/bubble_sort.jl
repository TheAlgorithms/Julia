function bubble_sort!(array::Vector{T}) where {T}
    for i in 1:length(array)
        flag = false
        for j in 1:(length(array)-i)
            if array[j] > array[j+1]
                array[j], array[j+1] = array[j+1], array[j]
                flag = true
            end
        end

        if !flag
            return nothing
        end
    end
end
