"""
    coin_change(coins::Vector{Int}, amount::Int)

Given a vector `coins` of coin values, calculates the minimum number of coins that sums to `amount`.
It's considered that a unlimited number of coins for each value is available.

# Arguments:
- `coins`: the coins values available
- `amount`: the total amount that need to be summed to

# Examples
```jldoctest
julia> n_coins, coins = coin_change([1, 3, 4, 7], 13);

julia> n_coins
3

julia> coins
3-element Vector{Int64}:
 3
 3
 7

julia> n_coins, coins = coin_change([2, 4, 6], 23)
(-1, Int64[])

julia> n_coins
-1

julia> coins
Int64[]
```

# Contributors:
- [Gabriel Soares](https://github.com/gosoares)
"""
function coin_change(coins::Vector{Int}, amount::Int)
    _INF = typemax(Int) - 1
    # S[v]: minimum number of coins that sums to `v-1`, `_INF` meaning its not possible
    S::Vector{Int} = fill(_INF, amount + 1)
    # L[v]: last coin used to sum to `v-1`
    L = Vector{Int}(undef, amount + 1)

    S[1] = 0 # 0 coins are used to sum to 0
    for value in 1:amount
        v = value + 1 # index for the vectors
        for coin in coins
            coin > value && continue

            if (1 + S[v-coin] < S[v])
                S[v] = 1 + S[v-coin]
                L[v] = coin
            end
        end
    end

    S[end] == _INF && return -1, Int[] # not possible to sum to `amount` with these coins

    coins_used = Int[]
    v = lastindex(L)
    while v > 1
        push!(coins_used, L[v])
        v -= L[v]
    end

    return S[end], coins_used
end
