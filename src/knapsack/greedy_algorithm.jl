"""
For greedy algorithm, it will take the element based on the optimal value in the array at each loop in the function

This does 0-1 (each item can be chosen only once) knapsack :
pack capacity = capacity
weight of each item = weights
value of each item = values

Each loop the function will find the highest value in the array and check if the capacity is enough to store it, if enough then 
the value will be added into the total_max_value. 
After that the highest current value will be deleted.

```
julia> zero_one_pack!(20,[1,3,11],[2,5,30])
37
```
"""
function zero_one_pack!(
    capacity::N,
    weights::V,
    values::V,
) where {N<:Number,V<:AbstractVector}
    total_max_value = 0
    while capacity > 0 && (length(weights) != 0 || length(values) != 0)
        max_value, index = findmax(values) # get the highest value and index in the vector
        if capacity >= weights[index]
            total_max_value += max_value
            capacity -= weights[index]
        end
        splice!(values, index)
        splice!(weights, index)
    end
    return total_max_value
end

"""
This does complete/infinite (each item can be chosen infinite times) knapsack :
pack capacity = capacity
weight of each item = weights
value of each item = values

Each loop the function will find the highest value in the array and check if the capacity is enough to store it, if enough then 
the value will be added into the total_max_value until the capacity cannot hold the weight of the highest current value. 
After that the highest current value will be deleted.

```
julia> complete_pack!(20,[1,2,9],[1,3,20])
43
```
"""
function complete_pack!(
    capacity::N,
    weights::V,
    values::V,
) where {N<:Number,V<:AbstractVector}
    total_max_value = 0
    while capacity > 0 && (length(weights) != 0 || length(values) != 0)
        max_value, index = findmax(values)
        while capacity >= weights[index]
            total_max_value += max_value
            capacity -= weights[index]
        end
        splice!(values, index)
        splice!(weights, index)
    end
    return total_max_value
end
