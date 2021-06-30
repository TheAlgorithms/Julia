@testset "Statistics" begin

    @testset "Statistics: Ordinary Least Squares" begin
        a = [10, 14,17,21,20, 18, 42, 51, 77, 11, 91]
        b = [0.11,0.7,0.2,0.19,0.09,0.8, 0.71,0.1, 0.6,0.3,0.81]
        OLSbeta(a, b)

        df = DataFrame(a=a, b=b)
        ols = GLM.lm(@formula(a ~ b), df)
        coef(ols) # print coefficients

        # Predict
        predict(ols) # predict the model
    end

    @testset "Statistics: Pearson Correlation" begin
        a = 1:10
        b = 1:10
        @test pearson_correlation(a, b) == 1

        x = [12,15,17,21,18]
        y = [6,9,-1,3,1]

        @test pearson_correlation(x, y) ==  -0.5201361507569889
    end

    @testset "Statistics: Variance" begin
        a = 1:10
        
        @test variance(a) == 5.5

        a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        @test variance(a) == 5.5

    end

end
