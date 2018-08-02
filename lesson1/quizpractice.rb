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
  lengths = []
  puts lengths