# input: string of space separated words
# output: hash 
# rules: hash outputs different lengths of words and then the occurrences of that length
# algorithm: 
# iterate over string and count each word's length
# each unique "length" should be a key in the new hash 
# each word that matches that length should increment the value by 1


def word_sizes(words)
  count_hash = Hash.new(0)
  words.split.each do |word|
    count_hash[word.size] += 1
  end
  p count_hash
end



word_sizes('Four score and seven.')  
word_sizes('Hey diddle diddle, the cat and the fiddle!')
word_sizes("What's up doc?")
word_sizes('') 