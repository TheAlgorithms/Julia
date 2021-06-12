@testset "Math" begin

@testset "Math: Area Under Curve" begin
    # Area by Trapazoid rule
    @test trapazoidal_area(x -> 5, 12, 14, 1000) == 10.00000000000334
	@test trapazoidal_area(x -> 9 * x^2, -4, 0, 1000) == 192.0000960000001
	@test trapazoidal_area(x -> 9 * x^2, -4, 4, 1000) == 384.0007680000011
end

@testset "Math: Collatz Sequence" begin
    @test collatz_sequence(3) == [3,10,5,16,8,4,2,1]
	@test collatz_sequence(42) == [42,21,64,32,16,8,4,2,1]
	@test collatz_sequence(5) == [5,16,8,4,2,1]
end

@testset "Math: Euler Method" begin
    @test euler_method((x, t) -> x, 1, (0, 5))[1][end] == 143.33937864611195
end

@testset "Math: Line Length" begin
    # Arc Lengths
    @test line_length(x -> x, 0, 1, 10) == 1.4142135623730947
	@test line_length(x -> 1, -5.5, 4.5) == 9.999999999999977
	@test line_length(x -> sin(5 * x) + cos(10 * x) + 0.1 * x^2, 0, 10, 10000) == 69.53493003183544
end

@testset "Math: SIR Model" begin
    # TODO: implement tests

    #initian conditions
    p = [0.5/7900000.0,0.33]
    u0 = [7900000.0,10.0,0.0]
    tspan = (0.0,140.0)

    #solve
    sir = ODEProblem(SIR,u0,tspan,p)
    sol = solve(sir)

    #plot
    plot(sol)
end

end