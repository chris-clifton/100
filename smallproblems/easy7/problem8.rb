def multiply_lists(array1, array2)
  products = []
  array1.each_with_index do |item, index|
    products << item * array2[index]
  end
  products
end

def multiply_lists2(array1, array2)
  array1.zip(array2).map { |pair| pair.inject(:*) } 
end

p multiply_lists([3, 5, 7], [9, 10, 11])
p multiply_lists2([3, 5, 7], [9, 10, 11])