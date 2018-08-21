# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

# First step, iterate over array of strings, convert to integers in a new array
# Second step, iterate over the new array and chain .sort and .reverse

 arr2 = arr.map do |str|
  str.to_s.to_i
 end

 p arr2.sort.reverse

 # The output is similar to LS but they have it returned as strings using following code

 # First step, convert strings to integers within the block
 # Second step, sort array in reverse order by switching b and a in the block

arr.sort do |a,b|
  b.to_i <=> a.to_i
end
# => ["11", "10", "9", "8", "7"]

# The spaceship method performs a comparison between two objects of the same type based on if the first is 
# greater than, equal to, or less than the second