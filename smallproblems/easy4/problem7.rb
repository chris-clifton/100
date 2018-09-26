# Write a method that takes a string of digits and returns the appropriate number as an integer

# Input: string
# Output: integer
# Rules: Can't use .to_i
# Algorithm: Create hash with key value of string and integer

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

p string_to_integer('4321')
p string_to_integer('570')
