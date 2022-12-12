using TheAlgorithms.StatAlgo

@testset "Statistics" begin
    @testset "Statistics: Pearson Correlation" begin
        a = 1:10
        b = 1:10
        @test pearson_correlation(a, b) == 1

        x = [12, 15, 17, 21, 18]
        y = [6, 9, -1, 3, 1]

        @test pearson_correlation(x, y) == -0.5201361507569889
    end

    @testset "Statistics: Variance" begin
        a = 1:10

        @test variance(a) == 9.166666666666666

        a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        @test variance(a) == 9.166666666666666

        a = [12, 15, 17, 20]

        @test variance(a) == 11.333333333333334
    end
end
