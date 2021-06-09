
"""
Approximates the area under the curve using the trapezoidal rule
"""

function trapazoidal_area(f,x_start,x_end,steps)
	x1 = x_start
	fx1 = f(x_start)
	area = 0.0

	for i in 1:steps
		x2 = ((x_end - x_start)/steps) + x1
		fx2 = f(x2)
		area += abs(fx2 + fx1) * (x2 - x1)/2
		x1 = x2
		fx1 = fx2
	end

	return area
end

test_function(x) = x^3 + x^2

function main()
	x_start = -5
	x_end = 5
	steps = 1
	while steps < 10000
		println("with $(steps) steps, area: $(trapazoidal_area(test_function,x_start,x_end,steps))")
		steps += 1
	end
end

main()


