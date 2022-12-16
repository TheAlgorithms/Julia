using TheAlgorithms.KnapSack
@testset "Knapsack" begin
    @testset "Knapsack: DpZeroOnePack!" begin
        dp = zeros(Int, 30)
        @test zero_one_pack!(20, [1, 3, 11], [2, 5, 30], dp) == 37
        dp = zeros(Int, 30)
        @test zero_one_pack!(10, [1, 3, 11], [20, 5, 80], dp) == 25
    end

    @testset "Knapsack: DpCompletePack!" begin
        dp = zeros(Int, 30)
        @test complete_pack!(20, [1, 2, 9], [1, 3, 20], dp) == 43
        dp = zeros(Int, 30)
        @test complete_pack!(10, [1, 3, 11], [20, 5, 80], dp) == 200
    end

    @testset "Knapsack: GaZeroOnePack!" begin
        dp = zeros(Int, 30)
        @test zero_one_pack!(20, [1, 3, 11], [2, 5, 30]) == 37
        dp = zeros(Int, 30)
        @test zero_one_pack!(10, [1, 3, 11], [20, 5, 80]) == 25
    end

    @testset "Knapsack: GaCompletePack!" begin
        dp = zeros(Int, 30)
        @test complete_pack!(20, [1, 2, 9], [1, 3, 20]) == 43
        dp = zeros(Int, 30)
        @test complete_pack!(10, [1, 3, 11], [20, 5, 80]) == 200
    end
end
