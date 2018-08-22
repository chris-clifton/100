def average(array)
  (array.sum).to_f / (array.count).to_f
end

p average([1, 2, 3, 4, 5])