"""
rotate(rot, s)

Program to implement rotational cipher for the given sentence. A full description of the algorithm can be found on [wikipedia](https://en.wikipedia.org/wiki/Caesar_cipher)

# Arguments:
- `rot`: The number of rotations needed.
- `s` : The sentence needed to rotate

# Examples/Tests 
```julia
julia> rotate(13,"abcdefghijklmnopqrstuvwxyz")
nopqrstuvwxyzabcdefghijklm

julia> rotate(5,"omg")
trl

julia> rotate(0,"hello")
hello

```

# Algorithm: 

```julia

if r >= 'a' && r <= 'z'
    v = ((r - 'a') + rot) % 26
    return v + 'a'
end
if r >= 'A' && r <= 'Z'
    v = ((r - 'A') + rot) % 26
    return v + 'A'
end
return r

```

# References:
https://en.wikipedia.org/wiki/Caesar_cipher

```

# Contributed by:- [Ihjass Thasbekha](https://github.com/Ihjass)
"""
function caesar(rot, s)
    rotate = function (r)
        if 'a' <= r <= 'z'
            v = ((r - 'a') + rot) % 26
            return v + 'a'
        end
        if 'A' <= r <= 'Z'
            v = ((r - 'A') + rot) % 26
            return v + 'A'
        end
        return r
    end
    if s isa Char
        return rotate(s)
    end
    result = ""
    for r in s
        result *= rotate(r)
    end
    return result
end
