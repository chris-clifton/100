def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Part 2: Write method that takes one arg (a string with multiple words) and returns given string with all 5+ letter words reversed
# Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

def reverse_words(string)
  words = []
  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

reverse_words('Hello Professor, is this acceptable?')
