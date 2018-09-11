def interleave(array1, array2)
  array1.zip(array2).flatten
end

array1 = [1, 2, 3, 4, 5]
array2 = ['A', 'B', 'C']

p interleave(array1, array2)
