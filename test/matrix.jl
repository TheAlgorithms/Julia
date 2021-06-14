@testset "Matrix" begin

    @testset "Matrix: Determinant" begin
        M1 = [1 0; 2 2]
        M2 = rand(3,3)
        M3 = rand(4,4)

        @test determinant(M1) == det(M1)
        @test round(determinant(M2),digits = 4) == round(det(M2),digits = 4)
        @test round(determinant(M3),digits = 4) == round(det(M3),digits = 4)
    end

    @testset "Matrix: LU Decompose" begin
        mat = [
            2  -1 -2;
            -4   6  3;
            -4  -2  8
        ]

        L = [
            1  0 0;
            -2  1 0;
            -2 -1 1
        ]
        U = [
            2 -1 -2;
            0  4 -1;
            0  0  3
        ]

	    @test lu_decompose(mat) == (L,U)
    end
	
	@testset "Matrix: rotation matrix" begin
		theta = pi/6
		a = [1;0]
		b = [0;1]
		@test rotation_matrix(theta)*a == [cos(theta);sin(theta)]
		@test rotation_matrix(theta)*b == [-sin(theta);cos(theta)]
	end
end
