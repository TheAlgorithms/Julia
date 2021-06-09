using Test

function search(array, key)
    for i in 1:length(array)
        if array[i] == key
            return i
        end
    end
    return -1
end

@testset "Linear Search" begin
    array = [1,3,4,7,8,11]
	@test search(array, 3) == 2
	@test search(array, 8) == 5
	@test search(array, 12) == -1
end
