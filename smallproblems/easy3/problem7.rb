def oddities(array)
  new_array = []
  array.each_with_index do |val, idx| 
    new_array << val if idx == 0 || idx.even?
  end
  new_array
end
  

p oddities([1, 2, 3, 4, 5])
p oddities([2, 4, 6, 8, 10, 12, 14, 16, 18, 20])

def oddities2(array)
  array.select.with_index { |val, index| index.even? }
end

p oddities2([1, 2, 3, 4, 5])
p oddities2([2, 4, 6, 8, 10, 12, 14, 16, 18, 20])
