@testset "Knapsack" begin

@testset "Knapsack: ZeroOnePack!" begin
    dp=zeros(Int,30)
    @test ZeroOnePack!(20,[1,3,11],[2,5,30],dp) == 37
    dp=zeros(Int,30)
    @test ZeroOnePack!(10,[1,3,11],[20,5,80],dp) == 25
end

@testset "Knapsack: CompletePack!" begin
    dp=zeros(Int,30)
    @test CompletePack!(20,[1,2,9],[1,3,20],dp) == 43
    dp=zeros(Int,30)
    @test CompletePack!(10,[1,3,11],[20,5,80],dp) == 200
end

end
