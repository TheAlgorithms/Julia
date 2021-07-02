@testset "Basic" begin
    @testset "Basic: prefix_sum" begin
        @test prefix_sum([1,1,1]) == [1,2,3]
        @test prefix_sum([1,2,3]) == [1,3,6]
    end
end