def sum_of_sums(array)
  total_num = 0
  array.each_index do |idx|
    total_num += array[0..idx].sum
  end
  total_num
end

array1 = [3, 5, 2]
array2 = [1, 5, 7, 3]
array3 = [4]
array4 = [1, 2 ,3, 4, 5]

p sum_of_sums(array1)
p sum_of_sums(array2)
p sum_of_sums(array3)
p sum_of_sums(array4)
