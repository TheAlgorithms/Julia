"""
    Maximum Path Sum I

By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

        3
       7 4
      2 4 6
     8 5 9 3

Find the maximum total from top to bottom of the triangle below.

# Examples/Tests:
```julia
problem_018()       # returns 1074
```

# Reference
- https://projecteuler.net/problem=18

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_018()
    triangle = [
        [75],
        [95 64],
        [17 47 82],
        [18 35 87 10],
        [20 04 82 47 65],
        [19 01 23 75 03 34],
        [88 02 77 73 07 63 67],
        [99 65 04 28 06 16 70 92],
        [41 41 26 56 83 40 80 70 33],
        [41 48 72 33 47 32 37 16 94 29],
        [53 71 44 65 25 43 91 52 97 51 14],
        [70 11 33 28 77 73 17 78 39 68 17 57],
        [91 71 52 38 17 14 91 43 58 50 27 29 48],
        [63 66 04 68 89 53 67 30 73 16 69 87 40 31],
        [04 62 98 27 23 09 70 98 73 93 38 53 60 04 23],
    ]

    #=
    We create a dp table, where the state dp[i][j] is the maximum sum ending at (i, j).
    The transition is dp[i][j] = triangle[i][j] + max(dp[i-1][j-1], dp[i-1][j]).
    We then return the max of the last row, which is the required maximum total.
    =#

    dp = deepcopy(triangle)
    for (row_num, row) in enumerate(triangle)
        row_num == 1 && continue
        for col_num in eachindex(row)
            if col_num == 1
                prev_best = dp[row_num-1][col_num]
            elseif col_num == row_num
                prev_best = dp[row_num-1][col_num-1]
            else
                prev_best =
                    max(dp[row_num-1][col_num], dp[row_num-1][col_num-1])
            end

            dp[row_num][col_num] += prev_best
        end
    end

    return maximum(last(dp))
end
