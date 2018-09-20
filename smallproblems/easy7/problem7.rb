def show_multiplicative_average(array)
  product = array.reduce(:*).to_f
  result = product / array.size
  puts "The result is #{result.round(3)}."
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])