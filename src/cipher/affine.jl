"""
    affine(text, alphabet, nMultiply, nAdd)

Program to implement affine cipher for the given input. A full description of it can be found on [wikipedia](https://en.wikipedia.org/wiki/Affine_cipher).

# Arguments:
- `text` : text to be encoded/decoded
- `alphabet` : the alphaebt the text uses
- `nMultiply` : the number to the multiply by (a)
- `nAdd` : the number to add (b)

# Examples/Tests
```julia

julia> affine("abcdefghijklmnopqrstuvwxyz", "abcdefghijklmnopqrstuvwxyz", 3, 1)
"behknqtwzcfiloruxadgjmpsvy"

julia> affine("whyhellothere", "abcdefghijklmnopqrstuvwxyz", 17, 82)
"otwtujjiptuhu"

julia> affine("1234", "0123456789", 5, 2)
"9630"

```

# Algorithm:
As usual, julia's 1 based indexing doesn't play nicely with the affine cipher, but all that is required is `-1` from the initial index of the letter and `+1` after the mod.  

An affine cipher uses a simple function: `f(x) = ax + b`.

Notes:

- `nMultiply` and `length(alphabet)` *must* be coprime so that the two plaintext letters are not substituted for the same cipehrtext letter.
- This doesn't check that the all of the characters in `text` actually are in `alphabet`, but that does need to be the case!

```julia

join([
    alphabet[((findfirst(isequal(letter), alphabet) - 1) * nMultiply + nAdd) % length(alphabet) + 1]
    for letter in text
])

```

# References:
https://www.dcode.fr/affine-cipher  
https://github.com/Squalm/Cipher-Tools


### Contributed by: [Chirp (Squalm)](https://github.com/Squalm)
"""
function affine(text::String, alphabet::String, nMultiply::Int, nAdd::Int)
    return join([
        alphabet[((findfirst(
            isequal(letter),
            alphabet,
        )-1)*nMultiply+nAdd)%length(alphabet)+1] for letter in text
    ])
end # function
