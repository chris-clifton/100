# Write a method that removes negative words from sentences

# input: string
# output: string
# rules: remove negative words from string, return string
# algorithm: iterate over string, delete word if it is considered "negative"

def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! { |word| negative?(word) }
  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
