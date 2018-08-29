# Write a method that takes an integer argument, and returns an 
# Array of all integers, in sequence, between 1 and the argument.
# You may assume that the argument will always be a valid integer 
# that is greater than 0.

def sequence(number)
  (1..number).to_a
end

p sequence(5)
p sequence(10)
p sequence(20)