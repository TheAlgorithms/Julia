# TODO: doc is missing
function linear_search(array, key)
    for i in 1:length(array)
        if array[i] == key
            return i
        end
    end
    return -1
end
