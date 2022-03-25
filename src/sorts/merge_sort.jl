function merge_sort!(
    arr::Vector{T},
    l::Int = 1,
    r::Int = length(arr),
    temp::Vector{T} = Vector{T}(undef, r - l + 1),
) where {T}
    if l >= r
        return
    end
    # split
    mid = (l + r) >> 1
    merge_sort!(arr, l, mid)
    merge_sort!(arr, mid + 1, r)
    # merge
    l_pos = l # pos of the left part
    r_pos = mid + 1 # pos of the right part
    for t_pos in 1:r-l+1
        if l_pos <= mid && (r_pos > r || arr[l_pos] < arr[r_pos])
            temp[t_pos] = arr[l_pos]
            l_pos += 1
        else
            temp[t_pos] = arr[r_pos]
            r_pos += 1
        end
    end
    for i in l:r
        arr[i] = temp[i-l+1]
    end
end
