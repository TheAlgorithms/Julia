"""
    hankel(A, b = 1)
Make a hankel matrix

# Arguments:
- A : Size of matrix

# Example
```julia
hankel(5)
```
# Contributors:
- [Ateng-labrador](https://github.com/Ateng-labrador)
"""
function hankel(A, b = 1)
    res = []
    for i = b:A
        row = []
        for j = b:A
            push!(row, i + j - 1)
        end
        push!(res, row)
    end
    return res
end


"""
    toeplite(A, b = 1)
Make a toeplite matrix

# Arguments:
- A : Size of matrix

# Example
```julia
toeplite(3)
```
# Contributors:
- [Ateng-labrador](https://github.com/Ateng-labrador)
""" 
function toeplite(A, b = 1)
    res = []
    for i=b:A
        row = []
        for j=b:A
            push!(row, i - j)
        end
        push!(res, row)
    end
    return res
end

"""
    hilbert(A, b = 1)
Make a hilbert matrix

# Arguments:
- A : Size of matrix

# Example
```julia
hilbert(4)
```
# Contributors:
- [Ateng-labrador](https://github.com/Ateng-labrador)
"""
function hilbert(A, b = 1)
    res = []
    for i=b:A
        row = []
        for j=b:A
            push!(row, 1 / (i+j-1))
        end
        push!(res, row)
    end
    return res
end
