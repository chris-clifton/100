def halvsies(array)
  center = (array.length) / 2
  result = []
  if array.length.even?
    right_half = array[0..center - 1]
    left_half = array[center..-1]
    result = [right_half, left_half]
  else
    right_half = array[0..center]
    left_half = array[center + 1..-1]
    result = [right_half, left_half]
  end
  result
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])