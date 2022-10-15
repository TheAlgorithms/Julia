@testset "Project Euler" begin
    @testset "Project Euler: Problem 001" begin
        @test problem_001(10) == 23
        @test problem_001(1000) == 233168
        @test_throws DomainError problem_001(-1)
    end

    @testset "Project Euler: Problem 002" begin
        @test problem_002(10) == 10
        @test problem_002(4_000_000) == 4613732
        @test_throws DomainError problem_002(-1)
    end
end
