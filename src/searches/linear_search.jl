function search(array, key)
    for i in 1:length(array)
        if array[i] == key
            return i
        end
    end
    return -1
end

array = [1,3,4,7,8,11]
println(search(array, 3))
println(search(array, 8))
println(search(array, 12))
