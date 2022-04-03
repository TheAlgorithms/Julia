@testset "Longest Increasing Subsequence" begin
    @testset "LIS: Dynamic Programming approach!" begin
        @test lis([3, 10, 2, 1, 20], Val(:dp)) == [3, 10, 20]
        # two possible results:
        @test lis([3, 2], Val(:dp)) in [[2], [3]]
        @test lis([2, 2, 3], Val(:dp)) == [2, 3]
        # two possible results
        @test lis([50, 3, 10, 7, 40, 80], Val(:dp)) in [[3, 7, 40, 80], [3, 10, 40, 80]]
        @test lis(Int[], Val(:dp)) == Int[]

    end
end
