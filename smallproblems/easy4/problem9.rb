# Write a method that takes a positive integer, or zero, and converts it to a string representation

# input: integer
# output: string
# rules: can't use .to_s
# algorithm: 

NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  string = number.digits.reverse { |int| NUMBERS[int] }
  string.join
end

def signed_integer_to_string(number)
  if number < 0 ? integer_to_string(number) : -integer_to_string(-number)
  end
end


p signed_integer_to_string(4321)
p signed_integer_to_string(0)
p signed_integer_to_string(5000)
p signed_integer_to_string(-123)
p signed_integer_to_string(-500)
