def interleave(array1, array2)
  array1.zip(array2).flatten
end

array1 = [1, 2, 3, 4, 5]
array2 = [5, 4, 3, 2, 1]

p interleave(array1, array2)