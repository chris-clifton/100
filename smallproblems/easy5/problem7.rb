# input: string of space separated words
# output: hash 
# rules: refactor problem 6 code so that the output does not include non-letters when determining size
# algorithm: 
# step 1: iterate over string, split into words, and remove non-letter characters
# step 2: join back into string, pass to word_sizes method


def word_sizes(words)
  count_hash = Hash.new(0)
  words.split.each do |word|
    clean_word = word.delete('^a-zA-Z')
    count_hash[clean_word.size] += 1
  end
  count_hash
end

p word_sizes('Four score and seven.')  
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('') 