function bubble_sort!(array::Vector{T})where T
    for i = 1:length(array)
    flag = true
        for j = 1:(length(array) - i)
            if array[j] > array[j+1]
                array[j], array[j + 1] = array[j + 1], array[j]
            end
        end
        if flag return end
    end
end
