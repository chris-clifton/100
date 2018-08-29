# Write a method that takes a string argument, and returns true if all 
# of the alphabetic characters inside the string are uppercase, false 
# otherwise. Characters that are not alphabetic should be ignored.

def uppercase(string)
  string === string.upcase
end

p uppercase('hello')
p uppercase('HELLO')
p uppercase('heLLO')
p uppercase('57HELLO')
