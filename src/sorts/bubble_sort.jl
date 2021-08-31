function bubble_sort!(arr::Vector{T})where T
    l=length(arr)-1
    while true
        flag=true
        for i in 1:l
            if arr[i]>arr[i+1]
                flag=false
                temp=arr[i]
                arr[i]=arr[i+1]
                arr[i+1]=temp
            end
        end
        if flag return end
    end
end
