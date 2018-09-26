# Write a method that takes a non-empty string, and returns the middle character of argument
# If arg has an odd length, return exactly one character.  If even, return exactly two characters

# input: string
# output: string
# rules: return middle character: single if odd, both middle if even
# algorithm: 
# step 1: define local variable for center
# step 2: if string is odd, return center
# step 3: if even, 


def center_of(string)
  center = (string.length) / 2
  result = ''
  if string.length.odd?
    result = string[center]
  else
    result = string[center - 1..center]
  end
end

p center_of('I love Ruby')
p center_of('Launch School')
p center_of('Launch')
p center_of('Launchschool')
p center_of('x')
