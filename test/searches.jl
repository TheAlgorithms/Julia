@testset "Searches" begin
    @testset "Searches: Binary" begin
        sample = [0, 23, 52, 552, 555, 602, 1004]
        reversed_sample = reverse(sample)
        unsorted_sample = [124, 53, 21, 163]
        binarysearch(sample, 52)
        binarysearch(reversed_sample, 52, rev=true)
        @test_throws ErrorException binarysearch(unsorted_sample, 21)  # throws an error
    end

    @testset "Searches: Linear" begin
        array = [1,3,4,7,8,11]
        search(array, 3)
        search(array, 8)
        search(array, 12)
    end

end