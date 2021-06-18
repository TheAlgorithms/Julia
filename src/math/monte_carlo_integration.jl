"""
Monte carlo integration is a very easy and scalable way to do multidimentional integrals.
However, only single variable integrals is considered.


This function takes three outputs:
	- `f`: the function to integrate. (at the momment only single variable is suported)
	- `N`: Number of points to sample. For most simple functions, 1000 to 10,000 should be okay.
	- `span`: a tuple (start, end) for the integration limits

Examples:
```julia
julia> monte_carlo_integration(x->3*x^2,100000,(0,1)) # integrate a polynomial
1.0000037602209

julia> monte_carlo_integration(x->sin(x),1000,(0,pi)) # integrate the sin function
2.0018927826323756

```
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
