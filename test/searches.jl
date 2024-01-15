using TheAlgorithms.Searches

@testset "Searches" begin
    @testset "Searches: Binary" begin
        @testset "binary_search - first method" begin
            sample = [0, 23, 52, 552, 555, 602, 1004]
            reversed_sample = reverse(sample)
            unsorted_sample = [124, 53, 21, 163]
            @test binary_search(sample, 52) == 3:3
            @test binary_search(sample, 602) == 6:6
            @test binary_search(sample, 45) == 3:2
            @test binary_search(reversed_sample, 52; rev = true) == 5:5
            @test binary_search(reversed_sample, 602; rev = true) == 2:2
            @test binary_search(reversed_sample, 45; rev = true) == 6:5
            @test_throws ErrorException binary_search(unsorted_sample, 21)  # throws an error
        end
        @testset "binary_search - second method" begin
            # Second method used for exponential search
            arr = [1, 2, 3, 4, 13, 15, 20]
            # The next three values used are the result of the while-loop inside `exponential search`
            @test binary_search(arr, 4, 7, 4) == 4
            @test binary_search(arr, 4, 7, 20) == 7
            @test binary_search(arr, 4, 7, 10) == -1
            @test binary_search(arr, 4, 7, 21) == -1
        end
    end

    @testset "Searches: Linear" begin
        array = [1, 30, 4, 70, 8, 11]
        @test linear_search(array, 1) == 1
        @test linear_search(array, 30) == 2
        @test linear_search(array, 8) == 5
        @test linear_search(array, 11) == 6
        @test linear_search(array, 12) == -1
        @test linear_search(array, 10) == -1
        @test linear_search(array, 0) == -1
    end

    @testset "Searches: Exponential" begin
        arr = [1, 2, 3, 4, 13, 15, 20]
        @test exponential_search(arr, 1) == 1
        @test exponential_search(arr, 4) == 4
        @test exponential_search(arr, 20) == 7
        @test exponential_search(arr, 5) == -1
        @test exponential_search(arr, 100) == -1
    end

    @testset "Searches: Interpolation" begin
        arr = [1, 2, 3, 4, 13, 15, 20]
        l = 1
        r = size(arr)[1]

        @test interpolation_search(arr, l, r, 1) == 1
        @test interpolation_search(arr, l, r, 2) == 2
        @test interpolation_search(arr, l, r, 3) == 3
        @test interpolation_search(arr, l, r, 4) == 4
        @test interpolation_search(arr, l, r, 13) == 5
        @test interpolation_search(arr, l, r, 15) == 6
        @test interpolation_search(arr, l, r, 20) == 7
        @test interpolation_search(arr, l, r, 5) == -1
        @test interpolation_search(arr, l, r, 14) == -1
        @test interpolation_search(arr, l, r, 19) == -1
        @test interpolation_search(arr, l, r, 0) == -1
        @test interpolation_search(arr, l, r, 1000) == -1
    end

    @testset "Searches: Jump" begin
        arr = [1, 2, 3, 4, 13, 31]
        @test jump_search(arr, 31, 1) == 6
        @test jump_search(arr, 13, 3) == 5
        @test jump_search(arr, 3, 5) == 3
        @test jump_search(arr, 1, 3) == 1
        @test jump_search(arr, 10000, 3) == -1
    end
end
