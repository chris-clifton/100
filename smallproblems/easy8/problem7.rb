# def repeater(string)
#   new_string = []
#   string.chars.each do |char|
#     new_string << char + char
#   end
#   new_string.join
# end


# p repeater('Hello')
# p repeater("Good job!")
# p repeater('')

# My solution unnecessarily converts the string to an array with .chars and then reconnects with .join on line 6
# still the same amount of lines of code but a lot of extra shit going on with mine

# LS solution

def repeater2(string)
  result = '' 
  string.each_char do |char|
    result << char << char
  end
  result
end

p repeater2('Hello')
p repeater2("Good job!")
p repeater2('')

