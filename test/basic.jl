using TheAlgorithms.Basic

@testset "Basic" begin
    @testset "Basic: prefix_sum" begin
        @test Basic.prefix_sum([1, 1, 1]) == [1, 2, 3]
        @test Basic.prefix_sum([1, 2, 3]) == [1, 3, 6]
        @test Basic.prefix_sum(BigInt[]) == BigInt[]
        @test Basic.prefix_sum([0.0, 0.0, 0.0]) == [0.0, 0.0, 0.0]
        @test Basic.prefix_sum([1 + 2im, 2 - 3im]) == [1 + 2im, 3 - 1im]
    end

    @testset "Basic: DifferenceArray" begin
        arr = [1, 3, 6, 10, 15, 21]
        diff_arr = DifferenceArray.create_diff_arr(arr)
        @test diff_arr == [1, 2, 3, 4, 5, 6]

        #Increase elements with index from [3, 5] by 1
        DifferenceArray.add_to_arr(diff_arr, 3, 5, 1)
        @test DifferenceArray.calculate_arr(diff_arr) == [1, 3, 7, 11, 16, 21]

        #Increase all elements by 1 
        DifferenceArray.add_to_arr(diff_arr, 1, 6, 1)
        @test DifferenceArray.calculate_arr(diff_arr) == [2, 4, 8, 12, 17, 22]
    end

    @testset "Basic: The Tower of Hanoi" begin
        # a, b, c represents the names of the first, second and third rod respectively
        @test Hanoi.solve('a', 'b', 'c', 1) == ['a' => 'c'] # One ring, just move it from the first to the third rod
        @test Hanoi.solve('a', 'b', 'c', 2) ==
              ['a' => 'b', 'a' => 'c', 'b' => 'c']
        @test Hanoi.solve('a', 'b', 'c', 3) == [
            'a' => 'c',
            'a' => 'b',
            'c' => 'b',
            'a' => 'c',
            'b' => 'a',
            'b' => 'c',
            'a' => 'c',
        ]
    end
end
