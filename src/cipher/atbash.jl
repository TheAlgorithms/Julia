"""
encode(input)

Program to implement atbash cipher for the given sentence.A full description of the algorithm can be found on [wikipedia](https://en.wikipedia.org/wiki/Atbash)

# Arguments:
- `input` : The sentence needed to rotate

# Examples/Tests 
```julia
julia> encode("test")
gvhg

julia> encode("abcdefghijklmnopqrstuvwxyz")
zyxwvutsrqponmlkjihgfedcba

julia> encode("hello")
svool

```

# Algorithm: 

```julia

for r in input
    part *= xform(r)
    if length(part) >= 5
      push!(parts, part)
      part = ""
    end
  end
  if part != ""
    push!(parts, part)
  end
  return join(parts, " ")

```

# References:
https://en.wikipedia.org/wiki/Atbash

```

# Contributed by:- [Ihjass Thasbekha](https://github.com/Ihjass)
"""
function encode(input)
    input = replace(lowercase(input), reject_re => "")
    parts = []
    part = ""
    for r in input
        part *= xform(r)
        if length(part) >= 5
            push!(parts, part)
            part = ""
        end
    end
    if !isempty(part)
        push!(parts, part)
    end
    return join(parts, " ")
end
reject_re = r"[^a-z\d]+"
xform(r) = (r >= 'a' && r <= 'z') ? r = 25 - (r - 'a') + 'a' : r
