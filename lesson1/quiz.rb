
# correct output but is it an array?
def string_lengths(sentence)
    strings = sentence.split
    strings.map do 
      |chars| chars.length end
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
  
    #really smart way to use word[counter] to not only access the correct index of the words array but also keep track of the progress of the loop
    while counter < words.size do
      word_lengths << words[counter].length
      counter += 1
    end
  
    word_lengths
  end
  puts string_lengths("to be or not to be")
  puts " "

  # Array comes up one value short 
  # This method adds the word lengths to a new array and returns it; however, 
  # because of the way the loop is constructed, the loop exits before it gets 
  # to the final word in the sentence. The length of the final word therefore isn't included in the returned array.

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


# Bonus problem
# Because the counter was originally set to zero, the -1 accesses the last value of the array and that goes into word_length first ("beee" in this example)
# Negative array index case

  def string_lengths(sentence)
    strings = sentence.split
    lengths = []
    counter = 0
    
      until counter == strings.size do
        word_length = strings[counter - 1].length
        lengths.push(word_length)
        counter += 1
    end
  
    lengths
  end
  puts string_lengths("toooo be or not to beee")
  puts " "

=begin

Use negative Array indices
Ruby arrays have some nifty behavior when passed negative array indices. Let’s say you have an array

array = [:a, :b, :c, :d, :e]
You can access the last element in the array by calling

array[-1] # => :e
The second-to-last element has index -2, and so on. Negative indices also work for slicing operations. For example, if you wanted to leave out the last two elements in the array, you would call

array[0..-3] # => [:a, :b, :c]
and if you wanted to remove just the first element of the array,

array[1..-1] # => [:b, :c, :d, :e]
=end