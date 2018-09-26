# Write a method that takes a string as input and returns the same string with all word versions of digits converted to string of digits

# input: string
# output: string
# rules: substitute all spelled versions of numbers for their numeric representation, return string
# algorithm:
# step 1: create array of numbers, they will match their index and can be referenced that way
# step 2: split string into an array using split
# step 3: iterate with .map and if the array element is included in the numbers array, then conver number's index to a string and return
# step 4: join array, return string


NUMBERS = %w( zero one two three four five six seven eight nine)

ALL OF THIS IS WRONG
# def word_to_digit(string)
#   string.split.select do |element|
#     if NUMBERS.include?(element) 
#       then NUMBERS.index(element)
#     end
#   end

end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
p word_to_digit('Game of Thrones Blows My Bones')
p word_to_digit('Freight Number One Two Three')
