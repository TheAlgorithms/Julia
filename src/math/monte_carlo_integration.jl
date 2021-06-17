"""
Monte carlo integration is a very easy and scalable way to do multidimentional integrals.
However, only single variable integrals are considered.


This function takes three outputs:
	- `f`: the function to integrate. (at the momment only single variable is suported)
	- `N`: Number of points to sample. For most simple functions, 1000 to 10,000 should be okay.
	- `span`: a tuple (start, end) for the integration limits
Refereces:
-https://www.scratchapixel.com/lessons/mathematics-physics-for-computer-graphics/monte-carlo-methods-in-practice/monte-carlo-integration
-https://kingaa.github.io/sbied/pfilter/monteCarlo.html

Contributed By-: [Ved Mahajan](https://github.com/Ved-Mahajan)
"""
function monte_carlo_integration(f,N,span)
	x_start,x_end = span
	rand_array = rand(x_start:0.0001:x_end,N)
	return sum(f.(rand_array))*(x_end - x_start)/float(N)
end
