"""
    LCS(a, b)

# Brief:
    A function that finds the longest common subsequence of two strings a and b.

# For more informations:
    https://www.programiz.com/dsa/longest-common-subsequence

# Contributed by:- [Nikola Mircic](https://github.com/Nikola-Mircic)
"""

function LCS(a::String, b::String)
    # Create a matrix to store previous results
    # sol[i+1, j+1] is length of lcs for a[1:i] and b[1:j]
    sol = zeros(length(a) + 1, length(b) + 1)

    # Calculate sol
    for i in 1:length(a)
        for j in 1:length(b)
            if a[i] == b[j]
                # If a character a[i] is equal to a character b[j],
                # new length of lcs will be equal to length without it plus one 
                sol[i+1, j+1] = sol[i, j] + 1
            else
                # If characters are different, length will be maximum of two previously calculated lcs
                # One is without a[i], and second one is lcs when b[i] is not inluded
                sol[i+1, j+1] = max(sol[i+1, j], sol[i, j+1])
            end
        end
    end

    result = ""

    # Start going trough the matrix from the last value and check which character
    # increases the length of lcs, and witch is copied value
    i = length(a) + 1
    j = length(b) + 1
    while i > 1 && j > 1
        if sol[i, j] == sol[i, j-1]
            # Copied left value
            j -= 1
        elseif sol[i, j] == sol[i-1, j]
            # Copied value above
            i -= 1
        else
            # Value is increased here
            result = b[j-1] * result # or a[i-1] * result
            i -= 1
            j -= 1
        end
    end

    return result
end
