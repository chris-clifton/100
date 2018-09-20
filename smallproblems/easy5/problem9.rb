# input: string
# output: string
# rules: consecutive duplicate characters removed
# algorithm: iterate over each character of the string, only adding character to new string if it is unique

# close in theory but all kinds of weird shit going on
def crunch1(string)
  result = []
  characters = string.chars
  counter = 0
  loop do
    result << characters.select { |char| char != characters[counter + 1 ]}
    counter += 1
    break if counter > string.length
  end
  result
end

# LS solution
def crunch2(string)
  index = 0
  crunch_text = ''
  while index <= string.length - 1
    crunch_text << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  crunch_text
end

# attempt using regex
def crunch(text)
text.gsub(/(.)\1*/, '\1')
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('waaaaaaaaaaaaaaaaah')
p crunch('a')
p crunch('')

