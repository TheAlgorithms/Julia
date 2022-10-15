@testset "Project Euler" begin
    @testset "Project Euler: Problem 001" begin
        @test problem_001(10) == 23
        @test problem_001(1000) == 233168
        @test_throws DomainError problem_001(-1)
    end
end
