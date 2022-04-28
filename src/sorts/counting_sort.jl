"""
# Counting Sort 
OVERVIEW:
Counting Sort is a sorting algorithm that sort elements within a specific range.
The sorting technique is to count the existing element and stored its occurrence time in a new list, then only print it out.

STEPS: 
Assume the input as --> x=[-3, 1, -5, 0, -3]
  minimum = -5
- STEP 1: Create a list size within the range, in this case is -5 --> 1 which have range of 7 (-5, -4, -3, -2, -1, 0, 1), so list with size 7 and assign all to 0 is created
- STEP 2: Count the occurances of element in the list 
          First number = -3 it is the third number in the range, so count[3]+=1
          Final view:
          index : ( 1,  2,  3,  4,  5, 6, 7)
          range : (-5, -4, -3, -2, -1, 0, 1)
          count : [ 1,  0,  2,  0,  0, 1, 1] <-- the list will store this occurrence
- STEP 3: Make the count list accumulate the occurances 
          The final count is (1, 1, 3, 3, 3, 4, 5)
- STEP 4: Assign the elements in x into correct possition by creating a new list (will call 'output' in this sample)
          the 1st element in 'x' is -3, it is third in range, so it will call the index of 3 in 'count', which is 3 and assign the -3 in to 3rd position in 'output', 
          then the third element in range will deduct by 1, so the next repeated element will get the correct position, new 'count' --> [1, 1, 2, 3, 3, 4, 5]

          the 2nd element in 'x' is  1, it is last  in range, so it will call the index of 7 in 'count', which is 5 and assign the  1 in to 5th position in 'output', 
          new 'count' --> [1, 1, 2, 3, 3, 4, 4]
          ......
          ......
          *If you want the order of original array to have the same order as the output array use can change this to decremental for loop
- STEP 5: Assign the 'output' list back to 'x'

FINAL RESULT -->  [-5, -3, -3, 0, 1]                                                                                    
"""
function counting_sort!(
    arr::Vector{T},
    l::Int = 1,
    r::Int = length(arr),
) where {T}
    if l >= r
        return nothing
    end
    max = maximum(arr)
    min = minimum(arr)
    range = max - min + 1
    count = Vector{T}(undef, range)
    output = Vector{T}(undef, r)

    for i in 1:range
        count[i] = 0
    end

    # Store count of the item that appear in the 'arr' (STEP 2)
    for i in 1:r
        count[arr[i]-min+1] += 1
    end

    # Calculate cumulative frequency in 'count' (STEP 3)
    for i in 2:length(count)
        count[i] += count[i-1]
    end

    # Build the 'output' by assigning the item into correct position (STEP 4)
    for i in 1:r
        index = arr[i] - min + 1
        output[count[index]] = arr[i]
        count[index] -= 1
    end

    # Copy the 'output' to 'arr', so that 'arr' contain sorted item (STEP 5)
    for i in 1:r
        arr[i] = output[i]
    end
end
