"""
    Number Letter Counts

If the numbers 1 to 5 are written out in words, then there are 3+3+5+4+4=19 letters used in total.
If all the numbers from 1 to 1000 inclusive were written out in words, how many letters would be used? 

# Examples/Tests:
```julia
problem_017()       # returns 21124
```

# Reference
- https://projecteuler.net/problem=17

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_017()
    # Hardcore letter counts for unpredictable values
    letter_count = Dict(
        0 => 0, # Base case
        1 => 3, # "one"
        2 => 3, # "two"
        3 => 5, # "three"
        4 => 4, # "four"
        5 => 4, # "five"
        6 => 3, # "six"
        7 => 5, # "seven"
        8 => 5, # "eight"
        9 => 4, # "nine"
        10 => 3, # "ten"
        11 => 6, # "eleven"
        12 => 6, # "twelve"
        13 => 8, # "thirteen"
        14 => 8, # "fourteen"
        15 => 7, # "fifteen"
        16 => 7, # "sixteen"
        17 => 9, # "seventeen"
        18 => 8, # "eighteen"
        19 => 8, # "nineteen"
        20 => 6, # "twenty"
        30 => 6, # "thirty"
        40 => 5, # "forty"
        50 => 5, # "fifty"
        60 => 5, # "sixty"
        70 => 7, # "seventy"
        80 => 6, # "eighty"
        90 => 6, # "ninety"
        1000 => 11, # "one thousand"
    )

    # For two digit numbers, add the tens place count and the units place count
    for num in 21:99
        letter_count[num] = letter_count[num-num%10] + letter_count[num%10]
    end

    # For three digit numbers, add the hundreds digit and then the rest 
    for num in 100:999
        hundreds_digit = num ÷ 100
        rest = num % 100
        letter_count[num] =
            letter_count[hundreds_digit] + letter_count[rest] + 7 # 7 for the "hundred"
        if rest > 0
            letter_count[num] += 3 # 3 for the "and"
        end
    end

    return sum(values(letter_count))
end
