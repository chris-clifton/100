def swap(string)
  result = string.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

p swap('Oh what a wonderful day it is')
p swap('Abcde') 
p swap('a') 