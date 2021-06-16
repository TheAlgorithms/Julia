"""
Program for calculating the nth fibonacci number
"""

#Recursive Procedure
function fib_rec(n)
	if n < 2
		return n
	end
	return fib_rec(n-1) + fib_rec(n-2)
end

#Iterative Recursive Procedure
function fib_rec_iter(n)
	function iter(a, b, c)
		if c == 0
			return a
		end
		return iter(b, a+b, c-1)
	end
	return iter(0, 1, n)
end

#Iterative Procedure
function fib_iter(n)
	fib_0, fib_1, counter = 0, 1, n
	while counter != 0
		fib_0, fib_1, counter = fib_1, fib_0 + fib_1, counter - 1
	end
	return fib_0
end
