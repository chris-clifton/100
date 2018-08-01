
#correct output but is it an array?
def string_lengths(sentence)
    strings = sentence.split
    strings.map { |chars| chars.length}
end

puts string_lengths("to be or not to be")
puts " "

#definitly not correct - returns the words of the original string split up
def string_lengths(sentence)
    strings = sentence.split
    lengths = []
  
    strings.each do |string|
      lengths << string.size
    end
  end

  puts string_lengths("to be or not to be")
  puts " "

  #correct output but is it an array?
  def string_lengths(sentence)
    words = sentence.split
    word_lengths = []
    counter = 0
  
    while counter < words.size do
      word_lengths << words[counter].length
      counter += 1
    end
  
    word_lengths
  end
  puts string_lengths("to be or not to be")
  puts " "

  # Almost correct output- seems to chop a value off the end of the array somewhere though
  def string_lengths(sentence)
    strings = sentence.split
    lengths = []
    counter = 1
  
    until counter == strings.size do
      word_length = strings[counter - 1].length
      lengths.push(word_length)
      counter += 1
    end
  
    lengths
  end
  puts string_lengths("to be or not to be")
  puts " "