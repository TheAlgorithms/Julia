#=
This algorithm features use of the OEIS entry A070939 - 
  Length of Binary Representation of n.

The function, as believed, is O(n) 
=#

function BinLength()  
  println("Enter Maximum Number Please")
  maxNum = parse(UInt64, readline())
  
  mod = 0
  len = 1
  arr = Array{Int64}(undef, maxNum, 1)
   
  Threads.@threads for i in 1:maxNum
    if (i == len)
      mod += 1 
      len *= 2
    end
      
    arr[i] = mod
    println(i," ",mod)
  end

end

exit()
