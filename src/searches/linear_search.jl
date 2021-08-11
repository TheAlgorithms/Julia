"""
    linear_search(array, key)
A simple search of `array`, element per element until `key` is found.
"""
function linear_search(array, key)
    for i in 1:length(array)
        if array[i] == key
            return i
        end
    end
    return -1
end
