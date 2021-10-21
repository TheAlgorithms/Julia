#=
Program to determine the sentence is pangram or not.
The program will return true if it is pangram and false if it is not.

Contributed By:- [Ihjass](https://github.com/Ihjass)
=#

#function to determine pangram
function ispangram(input)
    x = 2^26-1
    for letter in input
        if 'A' <= letter <= 'Z'
            x &= ~(1<<(letter-'A'))
        elseif 'a' <= letter <= 'z'
            x &= ~(1<<(letter-'a'))
        end
        x == 0 && return true
    end
    return false
end

#main 
input = readline()
print(ispangram(input))


#= Test

Input 1 :
The quick brown fox jumps over the lazy dog
Output 1:
true

Input 2:
the sky is blue
Output 2:
false

Input 3:
hello world!!!
Output 3:
false

Input 4 :
Pack my box with five dozen liquor jugs
Output 4:
true
=#