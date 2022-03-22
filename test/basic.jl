@testset "Basic" begin
    @testset "Basic: prefix_sum" begin
        @test prefix_sum([1,1,1]) == [1,2,3]
        @test prefix_sum([1,2,3]) == [1,3,6]
    end

    @testset "Basic: DifferenceArray" begin
        arr = [1,3,6,10,15,21]
        diff_arr = DifferenceArray.create_diff_arr(arr)
        @test diff_arr == [1,2,3,4,5,6]

        #Increase elements with index from [3, 5] by 1
        DifferenceArray.add_to_arr(diff_arr, 3, 5, 1)
        @test DifferenceArray.calculate_arr(diff_arr) == [1, 3, 7, 11, 16, 21]

        #Increase all elements by 1 
        DifferenceArray.add_to_arr(diff_arr, 1, 6, 1)
        @test DifferenceArray.calculate_arr(diff_arr) == [2, 4, 8, 12, 17, 22]
    end
end

