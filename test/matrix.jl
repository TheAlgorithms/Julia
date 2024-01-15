using TheAlgorithms.MatrixAlgo

@testset "Matrix" begin
    @testset "Matrix: Determinant" begin
        M1 = [1 0; 2 2]
        M2 = rand(3, 3)
        M3 = rand(4, 4)

        @test determinant(M1) == det(M1)
        @test round(determinant(M2), digits = 4) == round(det(M2), digits = 4)
        @test round(determinant(M3), digits = 4) == round(det(M3), digits = 4)

        @test_throws DomainError determinant([1 2])
        @test_throws DomainError determinant([1 2; 3 4; 5 6])
    end

    @testset "Matrix: LU Decompose" begin
        mat = [
            2 -1 -2
            -4 6 3
            -4 -2 8
        ]

        L = [
            1 0 0
            -2 1 0
            -2 -1 1
        ]
        U = [
            2 -1 -2
            0 4 -1
            0 0 3
        ]

        @test lu_decompose(mat) == (L, U)
    end

    @testset "Matrix: rotation matrix" begin
        theta = pi / 6
        a = [1; 0]
        b = [0; 1]
        @test rotation_matrix(theta) * a == [cos(theta); sin(theta)]
        @test rotation_matrix(theta) * b == [-sin(theta); cos(theta)]
    end

    @testset "Matrix: Gauss-Jordan Elimination" begin
        M1 = [1 2 3; 4 5 6]
        M2 = [1 2 3; 4 8 12]
        M3 = [1 2; 4 8]
        M4 = [
            1 4 8 1 4
            4 5 6 8 11
            1 3 2 4 8
            4 5 67 23 0
        ]
        M5 = Float64[
            1 4 8 1 4
            4 5 6 8 11
            1 3 2 4 8
            4 5 67 23 0
        ]
        M6 = [
            1 4 8
            4 0 6
            1 3 2
        ]

        R3 = [
            1.0 0.0 0.0 0.0 -1.10637
            0.0 1.0 0.0 0.0 1.89743
            0.0 0.0 1.0 0.0 -0.444913
            0.0 0.0 0.0 1.0 1.07598
        ]

        @test gauss_jordan(M1) == Float64[1 0 -1; 0 1 2]
        @test_throws AssertionError gauss_jordan(M2)
        @test_throws AssertionError gauss_jordan(M3)
        @test isapprox(gauss_jordan(M4), R3, atol = 1e-5)
        @test isapprox(gauss_jordan(M5), R3, atol = 1e-5)
        @test isapprox(
            gauss_jordan(M6),
            Float64[1 0 0; 0 1 0; -0 -0 1],
            atol = 1e-5,
        )

        @test gauss_jordan([0.0 1.0 5.0; 1.0 -2.0 -3.0]) ==
              [1.0 0.0 7.0; 0.0 1.0 5.0]
    end
end
