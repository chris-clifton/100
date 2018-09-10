
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end 

def rotate_rightmost_digits(num, n)
  num_arr = num.digits.reverse
  num_arr[-n..-1] = rotate_array(num_arr[-n..-1])
  num_arr.join.to_i
end 

def max_rotation(number)
  counter = -(number.to_s.size)
  loop do
    number = rotate_rightmost_digits(number, counter)
    counter += 1
    break if counter == number.size
  end
end

p max_rotation(735291)
p max_rotation(105)
p max_rotation(8_703_529_146)

p rotate_array([1, 2, 3, 4])