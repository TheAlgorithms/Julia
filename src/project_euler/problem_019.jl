"""
    Counting Sundays

How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

# Input parameters:
- `start_year` : start from 1st January of start_year
- `end_year` : check till 31st December of end_year

# Examples/Tests:
```julia
problem_019(1901, 2000)     # returns 171
problem_019(1901, 2200)     # returns 515
problem_019(2020, 2023)     # returns 6
problem_019(-1, 2023)       # throws DomainError
```

# Reference
- https://projecteuler.net/problem=19

Contributed by: [Praneeth Jain](https://www.github.com/PraneethJain)
"""
function problem_019(start_year::T, end_year::T) where {T<:Integer}
    (start_year <= 0 || end_year <= 0) &&
        throw(DomainError("years must be greater than 1"))

    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    res = 0
    cur_day = zeller_congruence(1, 1, start_year)
    is_leap(year) = year % 400 == 0 || (year % 100 != 0 && year % 4 == 0)
    for year in start_year:end_year
        for (month_index, num_days) in enumerate(days_in_month)
            cur_day += num_days
            if month_index == 2 && is_leap(year) # Leap year and February
                cur_day += 1 # then extra day
            end
            cur_day %= 7
            res += cur_day == 0
        end
    end

    return res
end

"""
    Zeller's Congruence

Given a date, returns the day of the week

0 => Sunday 1 => Monday, 2 => Tuesday, ... , 6 => Saturday

# Input parameters:
- `day` : day of the month
- `month` : month of the year (1 indexed)
- `year` : year

# Reference
- https://en.wikipedia.org/wiki/Zeller%27s_congruence
"""
function zeller_congruence(day::T, month::T, year::T) where {T<:Integer}
    if month <= 2
        month += 12 # January and February are counted as the previous year's 13th and 14th month
        year -= 1
    end
    q = day
    m = month
    K = year % 100
    J = year ÷ 100

    h = q + (13 * (m + 1)) ÷ 4 + K + K ÷ 4 + J ÷ 4 - 2 * J
    return (h + 4) % 7
end
