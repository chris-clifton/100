def multiply_all_airs(array1, array2)
  products = []
  array1.each do |item1|
    array2.each do |item2|
      products << item1 * item2
    end
  end
  products.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2])