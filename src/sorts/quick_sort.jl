function quick_sort!(arr::Vector{T}, l::Int = 1, r::Int = length(arr)) where {T}
    if l >= r
        return
    end
    mid = arr[(l+r)>>1]
    l_pos = l
    r_pos = r
    while l_pos <= r_pos
        while arr[l_pos] < mid
            l_pos += 1
        end
        while arr[r_pos] > mid
            r_pos -= 1
        end
        if l_pos <= r_pos
            t = arr[l_pos]
            arr[l_pos] = arr[r_pos]
            arr[r_pos] = t
            l_pos += 1
            r_pos -= 1
        end
    end
    if l < r_pos
        quick_sort!(arr, l, r_pos)
    end
    if l_pos < r
        quick_sort!(arr, l_pos, r)
    end
end
