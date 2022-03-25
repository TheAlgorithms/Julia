"""
    zero_one_pack!(capacity::N, weights::V, values::V, dp::V) where {N <: Number,V <: AbstractVector}
This does 0-1 (each item can be chosen only once) knapsack :
pack capacity = capacity
weight of each item = weights
value of each item = values
dp array is what the function works on
It returns the ans (dp[capacity])
```
julia> dp=zeros(Int,30)
julia> zero_one_pack!(20,[1,3,11],[2,5,30],dp)
37
```
"""
function zero_one_pack!(
    capacity::N,
    weights::V,
    values::V,
    dp::V,
) where {N<:Number,V<:AbstractVector}
    for i in 1:length(weights)
        j = capacity
        while j > weights[i] # reversed loop
            dp[j] = max(dp[j], dp[j-weights[i]] + values[i])
            j -= 1
        end
        dp[weights[i]] = max(dp[weights[i]], values[i]) # dp[j]=max(dp[j],dp[0]+values[i])
    end
    return dp[capacity]
end

"""
This does complete/infinite (each item can be chosen infinite times) knapsack :
pack capacity = capacity
weight of each item = weights
value of each item = values
dp array is what the function works on
It returns the ans (dp[capacity])
```
julia> dp=zeros(Int,30)
julia> complete_pack!(20,[1,2,9],[1,3,20],dp)
43
```
"""
function complete_pack!(
    capacity::N,
    weights::V,
    values::V,
    dp::V,
) where {N<:Number,V<:AbstractVector}
    for i in 1:length(weights)
        dp[weights[i]] = max(dp[weights[i]], values[i]) # dp[j]=max(dp[j],dp[0]+values[i])
        for j in (weights[i]+1):capacity
            dp[j] = max(dp[j], dp[j-weights[i]] + values[i])
        end
    end
    return dp[capacity]
end
