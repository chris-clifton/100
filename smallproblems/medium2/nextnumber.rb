# Write a method that takes a single integer as arg and returns the next featured number that is greater than the argument
# Issue error message if there is no next featured number

# Input: integer
# Output: integer or error message
# Rules: A featured number is an odd number that is a multiple of 7 and whose digits occur exactly once each
  # must be odd
  # must be multiple of 7
  # no multiple digits
# Algorithm:
  # step 1: initialize loop
  # step 2: initialize a break from the loop
  # step 3: add 1 to num and test conditions


def error_message
  puts "Sorry, there is no possible number that fulfills those requirements."
end

def unique_number(num)
  number_chars = num.to_s.split('')
  number_chars.uniq == number_chars
end

def featured(num)
  current_num = num + 1
  loop do
    if current_num % 7 == 0 && current_num.odd? && unique_number(current_num)
      return current_num
    else
      current_num += 1
    break if current_num >= 9_876_543_210
    end
  end
  error_message
end

p featured(12)
p featured(20)
p featured(21)
p featured(997)
p featured(1029)
p featured(999_999)
p featured(999_999_987)
p featured(9_999_999_999)
