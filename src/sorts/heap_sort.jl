""" void heapSort(T)(T[] a) {
     void sift(int start, int count) {
         int root = start;
 
         while (root * 2 + 1 < count) {
             int child = root * 2 + 1;
             if (child < count - 1 && a[child] < a[child + 1])
                 child++;
             if (a[root] < a[child]) {
                 swap(root, child);
                 root = child;
             } else
                 return;
         }
     }
 
     int count = a.length;
     int start = count / 2 - 1;
     int end = count - 1;
 
     while (start >= 0) {
         sift(start, count);
         start--;
     }
 
     while (end > 0) {
         swap(end, 0);
         sift(0, end);
         end--;
     }
 }
"""
function sift!(array::Vector{T}, start::Int, count::Int) where {T}
  root = start

  while (root * 2 + 1 <= count) 
    child = root * 2 + 1
    if (child <= count - 1) && (array[child] < array[child + 1])
      child += 1
    end 
    if (array[root] < array[child]) 
      array[root], array[child] = array[child], array[root]
      root = child
    else
      return
    end
  end
end

function heap_sort2!(array::Vector{T}) where {T}
  len = length(array)
  start_idx = div(len, 2) - 1
  end_idx = len

  while (start_idx >= 1) 
    sift!(array, start_idx, len)
    start_idx -= 1
  end

  while (end_idx > 1)
    array[end_idx], array[1] = array[1], array[end_idx]
    sift!(array, 1, end_idx)
    end_idx -= 1
  end
  return
end


"""
void heapsort(int arr[], unsigned int N)
  {
      unsigned int n = N, i = n/2, parent, child;
      int t;
  
      for (;;) { /* Loops until arr is sorted */
          if (i > 0) { /* First stage - Sorting the heap */
              i--;           /* Save its index to i */
              t = arr[i];    /* Save parent value to t */
          } else {     /* Second stage - Extracting elements in-place */
              n--;           /* Make the new heap smaller */
              if (n == 0) return; /* When the heap is empty, we are done */
              t = arr[n];    /* Save last value (it will be overwritten) */
              arr[n] = arr[0]; /* Save largest value at the end of arr */
          }
  
          parent = i; /* We will start pushing down t from parent */
          child = i*2 + 1; /* parent's left child */
  
          /* Sift operation - pushing the value of t down the heap */
          while (child < n) {
              if (child + 1 < n  &&  arr[child + 1] > arr[child]) {
                  child++; /* Choose the largest child */
              }
              if (arr[child] > t) { /* If any child is bigger than the parent */
                  arr[parent] = arr[child]; /* Move the largest child up */
                  parent = child; /* Move parent pointer to this child */
                  //child = parent*2-1; /* Find the next child */
                  child = parent*2+1; /* the previous line is wrong*/
              } else {
                  break; /* t's place is found */
              }
          }
          arr[parent] = t; /* We save t in the heap */
      }
  }
  """

function idx_for(i::Int) 
  return i + 1
end

function heap_sort!(arr::Vector{T}, N::Int=length(arr)) where {T}
      print("start, arr=", arr, ", N=", N, "\n");
      n = N 
      i = div(n,2) 
      t = -1
  
      while true 
          if (i > 0) # First stage - Sorting the heap """
              i -= 1    #       /* Save its index to i */"""
              t = arr[idx_for(i)]    #/* Save parent value to t */"""
              print("sort stage, i=", i, ", t=", t, "\n")
          else     # Second stage - Extracting elements in-place */"""
              print("extraction stage, n=", n)
              n -= 1   #        /* Make the new heap smaller */"""
              if (n == 0) 
                print("end, arr=", arr, "\n")
                return # /* When the heap is empty, we are done */"""
              end
              t = arr[idx_for(n)]  #  /* Save last value (it will be overwritten) */"""
              arr[idx_for(n)] = arr[idx_for(0)] #/* Save largest value at the end of arr */"""
              print("  extraction, arr=", arr, "\n")
          end
  
          parent = i # We will start pushing down t from parent 
          child = i*2 + 1 # parent's left child 
  
          # /* Sift operation - pushing the value of t down the heap */"""
          while (child < n) 
              print("sift, child=", child, ", n=", n, "\n")
              if (child + 1 < n  &&  arr[idx_for(child + 1)] > arr[idx_for(child)]) 
                  child += 1 # /* Choose the largest child */"""
              end 
              if (arr[idx_for(child)] > t) # /* If any child is bigger than the parent */"""
                  arr[idx_for(parent)] = arr[idx_for(child)] # /* Move the largest child up */"""
                  parent = child # /* Move parent pointer to this child */"""
                  child = parent*2+1 #  find the next child"""
              else
                  break # /* t's place is found */"""
              end
              print("  sift, arr=", arr, "\n")
          end
          arr[idx_for(parent)] = t #  /* We save t in the heap */"""
          print("  after while, arr=", arr, "\n")
      end
  end
