"""
    is_armstrong(x)

Program to check if a number is an [Armstrong/Narcissistic number](https://en.wikipedia.org/wiki/Narcissistic_number) in decimal system.

Armstrong number is a number that is the sum of its own digits raised to the power of the number of digits.

Contributed By:- [Ashwani Rathee](https://github.com/ashwani-rathee)

A positive integer is called an Armstrong number (of order n) if

`abcd... = a^n + b^n + c^n + d^n +....`
"""
function is_armstrong(x)
    # If the number is less than 0, then it is not a armstrong number.
    if x < 0
        return false
    elseif x == 0
        return true
    else
        # Finding the total number of digits in the number
        length = Int(floor(log10(x) + 1))
        result = 0
        temp = x
        for i in 1:length
            val = temp % 10
            # Finding each digit raised to the power total digit and add it to the total sum
            result = result + Int(trunc(val))^length
            temp = temp / 10
        end
        return x == result ? true : false
    end
end
