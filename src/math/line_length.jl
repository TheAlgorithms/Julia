using Test

"""
Approximates the arc length of a line segment by treating the curve as a
sequence of linear lines and summing their lengths.

Arguments:
 - f: function that returns the arc
 - x_start: starting x value
 - x_end: ending x_value
 - steps: steps to take for accurace, more the steps greater the accuracy
"""

function line_length(f, x_start, x_end, steps=100)
	x1 = x_start
	fx1 = f(x1)
	len = 0.0

	for step in 1:steps
		x2 = ((x_end - x_start) / steps) + x1
		fx2 = f(x2)
		len += hypot(x2 - x1, fx2 - fx1)
		
		x1 = x2
		fx1 = fx2
	end

	return len
end

# some tests

@testset "Arc Lengths" begin
	@test line_length(x -> x, 0, 1, 10) == 1.4142135623730947
	@test line_length(x -> 1, -5.5, 4.5) == 9.999999999999977
	@test line_length(x -> sin(5 * x) + cos(10 * x) + 0.1 * x^2, 0, 10, 10000) == 69.53493003183544
end
