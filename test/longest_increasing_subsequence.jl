using TheAlgorithms.LongSubSeq

@testset "Longest Increasing Subsequence" begin
    @testset "LIS: Dynamic Programming approach!" begin
        @test lis([3, 10, 2, 1, 20], Val(:dp)) == [3, 10, 20]
        # negative elements
        @test lis([-10, -2, -1, -20], Val(:dp)) == [-10, -2, -1]
        # repeated elements
        @test lis([2, 2, 3, 3], Val(:dp)) == [2, 3]
        # one element
        @test lis([2], Val(:dp)) == [2]
        # empty array
        @test lis(Int[], Val(:dp)) == Int[]
        # two possible results:
        @test lis([3, 2], Val(:dp)) in [[2], [3]]
        # two possible results:
        @test lis([50, 3, 10, 7, 40, 80], Val(:dp)) in
              [[3, 7, 40, 80], [3, 10, 40, 80]]
        # two possible results:
        @test lis([3, 4, -1, 5, 8, 2, 3, 12, 7, 9, 10], Val(:dp)) in
              [[-1, 2, 3, 7, 9, 10], [3, 4, 5, 8, 9, 10]]
        # Boolean array
        @test lis([true, false, false, true], Val(:dp)) == [false, true]
        # other Integer subtypes
        for T in [
            UInt128,
            UInt16,
            UInt32,
            UInt64,
            UInt8,
            BigInt,
            Int128,
            Int16,
            Int32,
            Int64,
            Int8,
        ]
            @test lis(T[3, 10, 2, 1, 20], Val(:dp)) == T[3, 10, 20]
        end
    end

    @testset "LIS: Binary Search approach!" begin
        @test lis([3, 10, 2, 1, 20], Val(:bs)) == [3, 10, 20]
        # negative elements
        @test lis([-10, -2, -1, -20], Val(:bs)) == [-10, -2, -1]
        # repeated elements
        @test lis([2, 2, 3, 3], Val(:bs)) == [2, 3]
        # one element
        @test lis([2], Val(:bs)) == [2]
        # empty array
        @test lis(Int[], Val(:bs)) == Int[]
        # two possible results:
        @test lis([3, 2], Val(:bs)) in [[2], [3]]
        # two possible results:
        @test lis([50, 3, 10, 7, 40, 80], Val(:bs)) in
              [[3, 7, 40, 80], [3, 10, 40, 80]]
        # two possible results:
        @test lis([3, 4, -1, 5, 8, 2, 3, 12, 7, 9, 10], Val(:bs)) in
              [[-1, 2, 3, 7, 9, 10], [3, 4, 5, 8, 9, 10]]
        # Boolean array
        @test lis([true, false, false, true], Val(:bs)) == [false, true]
        # other Integer subtypes
        for T in [
            UInt128,
            UInt16,
            UInt32,
            UInt64,
            UInt8,
            BigInt,
            Int128,
            Int16,
            Int32,
            Int64,
            Int8,
        ]
            @test lis(T[3, 10, 2, 1, 20], Val(:bs)) == T[3, 10, 20]
        end
    end
end
