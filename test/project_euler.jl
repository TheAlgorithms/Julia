using TheAlgorithms.ProjectEuler

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

    @testset "Project Euler: Problem 003" begin
        @test problem_003(17) == 17
        @test problem_003(13195) == 29
        @test problem_003(Int64(600851475143)) == 6857
        @test_throws DomainError problem_003(-1)
    end

    @testset "Project Euler: Problem 004" begin
        @test problem_004() == 906609
    end

    @testset "Project Euler: Problem 005" begin
        @test problem_005(10) == 2520
        @test problem_005(20) == 232792560
        @test_throws DomainError problem_005(-1)
    end

    @testset "Project Euler: Problem 006" begin
        @test problem_006(10) == 2640
        @test problem_006(100) == 25164150
        @test_throws DomainError problem_006(-1)
    end

    @testset "Project Euler: Problem 007" begin
        @test problem_007(1) == 2
        @test problem_007(6) == 13
        @test problem_007(10001) == 104743
        @test_throws DomainError problem_007(-1)
    end

    @testset "Project Euler: Problem 008" begin
        num_str = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
        @test problem_008("1234", 2) == 12
        @test problem_008(num_str, 4) == 5832
        @test problem_008(num_str, 13) == 23514624000
        @test_throws DomainError problem_008("12345", 6)
    end

    @testset "Project Euler: Problem 009" begin
        @test problem_009() == 31875000
    end

    @testset "Project Euler: Problem 010" begin
        @test problem_010(1) == 0
        @test problem_010(10) == 17
        @test problem_010(2000000) == Int64(142913828922)
        @test_throws DomainError problem_010(-1)
    end

    @testset "Project Euler: Problem 011" begin
        @test problem_011() == 70600674
    end

    @testset "Project Euler: Problem 012" begin
        @test problem_012(5) == 28
        @test problem_012(333) == 17907120
        @test problem_012(500) == 76576500
        @test_throws DomainError problem_012(-1)
    end

    @testset "Project Euler: Problem 013" begin
        @test problem_013() == "5537376230"
    end

    @testset "Project Euler: Problem 014" begin
        @test problem_014(Int64(10)) == 9
        @test problem_014(Int64(250)) == 231
        @test problem_014(Int64(1000000)) == 837799
        @test_throws DomainError problem_014(Int64(-1))
    end

    @testset "Project Euler: Problem 015" begin
        @test problem_015(2, 2) == 6
        @test problem_015(5, 3) == 56
        @test problem_015(20, 20) == 137846528820
        @test_throws DomainError problem_015(0, 5)
        @test_throws DomainError problem_015(-3, 0)
    end

    @testset "Project Euler: Problem 016" begin
        @test problem_016(1, 1) == 1
        @test problem_016(2, 15) == 26
        @test problem_016(2, 1000) == 1366
        @test_throws DomainError problem_016(2, -4)
    end

    @testset "Project Euler: Problem 017" begin
        @test problem_017() == 21124
    end

    @testset "Project Euler: Problem 018" begin
        @test problem_018() == 1074
    end

    @testset "Project Euler: Problem 019" begin
        @test problem_019(1901, 2000) == 171
        @test problem_019(1901, 2200) == 515
        @test problem_019(2020, 2023) == 6
        @test_throws DomainError problem_019(-1, 2023)
    end

    @testset "Project Euler: Problem 020" begin
        @test problem_020(10) == 27
        @test problem_020(37) == 153
        @test problem_020(100) == 648
        @test_throws DomainError problem_020(-1)
    end
end
