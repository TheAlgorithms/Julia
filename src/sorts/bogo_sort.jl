using Random

function bogo_sort!(array::Vector{T}) where {T}
  while !issorted(array)
    Random.shuffle!(array)
  end
  return(array)
end
