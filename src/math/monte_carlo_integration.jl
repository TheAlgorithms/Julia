"""
Monte carlo integration is a very easy and scalable way to do multidimentional integrals.
However, only single variable integrals is considered.

Refereces:
-https://kingaa.github.io/sbied/pfilter/monteCarlo.html

Contributed By-: [Ved Mahajan](https://github.com/Ved-Mahajan)
"""
function monte_carlo_integration(f,N,span)
	x_start,x_end = span
	rand_array = rand(x_start:0.0001:x_end,N)
	return sum(f.(rand_array))*(x_end - x_start)/float(N)
end
