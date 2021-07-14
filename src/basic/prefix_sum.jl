function prefix_sum(arr::Vector{T})where T<:Number
    pre=[]
    preans=zero(T)
    for i in arr
        preans+=i
        push!(pre,preans)
    end
    return pre
end
