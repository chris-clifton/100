# A double number is a number with an even number of digits 
# whose left-side digits are exactly the same as its right-side digits. 
# For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, 
# and 107 are not.

# Write a method that returns 2 times the number provided as an argument, 
# unless the argument is a double number; double numbers should be returned as-is.

# This was close, but its doubling every number.

def find_double_number(num)
  string_num = num.to_s
  center = string_num.size / 2
  left_side = string_num[0..center - 1]
  right_side = string_num[center..-1]
  if left_side == right_side 
    true
  else
    false
  end
end

def twice(num)
  if find_double_number(num)
    num
  else
    num * 2
  end
end

# def twice(num)
#   string_num = num.to_s
#   center = string_num.size / 2
#   left_side = center.zero? ? '' : string_num[0..center -1]
#   right_side = string_num[center..-1]

#   return num if left_side == right_side
#   return num * 2
# end

p twice(37)
p twice(44)
p twice(334433)
p twice(444)
p twice(107)
p twice(103103)
p twice(3333)
p twice(7676)
p twice(123_456_789_123_456_789)
p twice(5)

