# Write a method that takes a number as an argument. If the argument is 
# a positive number, return the negative of that number. If the number 
# is 0 or negative, return the original number.

def negative_number_returner(number)
  if number <= 0
    number
  else 
    number * (-1)
  end
end

p negative_number_returner(-5)
p negative_number_returner(-200)
p negative_number_returner(0)
p negative_number_returner(5)
p negative_number_returner(200)