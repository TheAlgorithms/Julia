"""
    is_palindrome(s)
A set of functions to check if a given string
is a palindrome.

Arguments:
 - s - a string =#
"""

function is_palindrome(s) # Named function
    s = lowercase(s)
    s == reverse(s)
end
