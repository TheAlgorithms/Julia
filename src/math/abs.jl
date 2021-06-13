
"""
    abs_val(num)

Program to find the absolute value of a number

# Example
```julia
abs_val(-100) # returns 100
abs_val(0) # returns 0
abs(123.1) # returns 123.1
-1000 == abs_val(-1000) #returns false
1000 == abs_val(1000) #returns true
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function abs_val(num)
    return num < 0 ? -num : num
end


"""
    abs_max(x)

Program to find the max absolute value in a vector

# Example
```julia
abs_max([1,3,4]) # returns 4
abs_max([-3,1,2]) # returns -3
abs_max([-7,-3,6]) #returns -7
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function abs_max(x)
    result = sort(x, by = abs; alg = QuickSort)
    return result[length(result)]
end

"""
    abs_min(num)

Program to find the min absolute value in a vector

# Example
```julia
abs_min([1,3,4]) # returns 1
abs_min([-3,1,2]) # returns 1
abs_min([-7,-3,6]) #returns -3
```

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)
"""
function abs_min(x)
    result = sort(x, by = abs; alg = QuickSort)
    return result[1]
end
