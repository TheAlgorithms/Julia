using TheAlgorithms.DynamicProgramming
@testset "Dynamic Programming" begin
    @testset "Coin Change" begin
        n_coins, coins = coin_change([1, 3, 4, 7], 13)
        @test length(coins) == n_coins == 3
        @test sum(coins) == 13

        n_coins, coins = coin_change([4, 3, 5, 1], 7)
        @test length(coins) == n_coins == 2
        @test sum(coins) == 7

        n_coins, coins = coin_change([1], 29)
        @test sum(coins) == length(coins) == n_coins == 29

        n_coins, coins = coin_change([2, 4, 6], 23)
        @test n_coins == -1
        @test isempty(coins)
    end
end
