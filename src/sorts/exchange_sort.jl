function ExchangeSort!(arr::Vector{T})where T
    size=length(arr)
    for i in 1:size
        for j in i:size
            if (arr[i]>arr[j])
                temp = arr[j];
                arr[j] = arr[i];
                arr[i] = temp;
            end
        end
    end
end
