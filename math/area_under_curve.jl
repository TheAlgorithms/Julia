using Test

"""
Approximates the area under the curve using the trapezoidal rule
Arguments:
 - f: function for the
 - x_start: starting value for x
 - x_end: ending value for x
 - steps: steps taken while integrating.
"""

function trapazoidal_area(f, x_start, x_end, steps)
	x1 = x_start
	fx1 = f(x_start)
	area = 0.0

	for _ in 1:steps
		x2 = ((x_end - x_start) / steps) + x1
		fx2 = f(x2)
		area += abs(fx2 + fx1) * (x2 - x1) / 2
		x1 = x2
		fx1 = fx2
	end

	return area
end

@testset "Area by Trapazoid rule" begin
	@test trapazoidal_area(x -> 5, 12, 14, 1000) == 10.00000000000334
	@test trapazoidal_area(x -> 9 * x^2, -4, 0, 1000) == 192.0000960000001
	@test trapazoidal_area(x -> 9 * x^2, -4, 4, 1000) == 384.0007680000011
end
