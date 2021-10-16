function idx_for(i::Int) 
  return i + 1
end

"""Sort the given vector (in-place) using the Heapsort algorithm
""" 
function heap_sort!(arr::Vector{T}, N::Int=length(arr)) where {T}
      n = N 
      i = div(n,2) 
      t = -1
  
      while true 
          if (i > 0)    # First stage - Sorting the heap
              i -= 1    # Save its index to i 
              t = arr[idx_for(i)]    # Save parent value to t 
          else          # Second stage - Extracting elements in-place 
              n -= 1    # Make the new heap smaller 
              if (n == 0) 
                return # When the heap is empty, we are done 
              end
              t = arr[idx_for(n)]               # Save last value (it will be overwritten)
              arr[idx_for(n)] = arr[idx_for(0)] # Save largest value at the end of arr 
          end
  
          parent = i # We will start pushing down t from parent 
          child = i*2 + 1 # parent's left child 
  
          # Sift operation - pushing the value of t down the heap 
          while (child < n) 
              if (child + 1 < n  &&  arr[idx_for(child + 1)] > arr[idx_for(child)]) 
                  child += 1 # Choose the largest child
              end 
              if (arr[idx_for(child)] > t) # If any child is bigger than the parent 
                  arr[idx_for(parent)] = arr[idx_for(child)] # Move the largest child up 
                  parent = child # Move parent pointer to this child 
                  child = parent*2+1 #  find the next child"""
              else
                  break # /* t's place is found */"""
              end
          end
          arr[idx_for(parent)] = t # We save t in the heap 
      end
  end
