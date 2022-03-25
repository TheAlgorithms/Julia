"""
    rabin_karp(text, pattern)

# Brief:
    A function that finds all occurrences of a pattern in the given text.
    Instead of checking each character ot the pattern with each character block of the text,
    for each character block calculate the hash value, and only if that value matches hash value of the pattern,
    compare them character by character. These blocks are the same length as the pattern.

# Returns:
    A list with starting indices where the pattern was found

# References:
    https://www.geeksforgeeks.org/rabin-karp-algorithm-for-pattern-searching/

# Contributed by: [Nikola Mircic](https://github.com/Nikola-Mircic)
"""
function rabin_karp(text::String, pattern::String)
    indices = Array{Int64}(undef, 0)# An array to store matching indices

    txt_len = length(text) # Length of the text
    ptn_len = length(pattern) # Length of the pattern

    # Convert string to an array of chars, and then to an array of integers
    text = text |> collect .|> Int
    pattern = pattern |> collect .|> Int

    # If the text is shorter than the pattern, return empty vector
    if txt_len < ptn_len
        return indices
    end

    t_hash = 1 # A hash value of the current block
    p_hash = 1 # A hash value of the pattern

    d = 256 # Maximum number of different characters in the text
    m_hash = 2048 # Maximum hash value
    pow = 1 # d^(pattern length - 1) to easily remove the first character from the hash value

    # Calculate the pow
    for _ in 1:(ptn_len-1)
        pow = (pow * d) % m_hash
    end

    # Calculate the first hash value
    for i in 1:ptn_len
        t_hash = (t_hash * d + text[i]) % m_hash
        p_hash = (p_hash * d + pattern[i]) % m_hash
    end

    for i in 1:(txt_len-ptn_len+1)
        # If hash values match
        if p_hash == t_hash
            test = true
            for j in 0:(ptn_len-1)
                if text[i+j] != pattern[j+1] # The hash values are the same, but the strings are different
                    test = false
                    break
                end
            end
            if test # The hash values are the same, and the strings are equals
                push!(indices, i)
            end
        end

        # If the current block is not the last one, calculate the hash value for the next block
        if i <= txt_len - ptn_len
            t_hash = (d * (t_hash - text[i] * pow) + text[i+ptn_len]) % m_hash

            if t_hash < 0
                t_hash += m_hash
            end
        end
    end

    return indices
end
