"""
    trapazoidal_area(f, x_start, x_end, steps)

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
