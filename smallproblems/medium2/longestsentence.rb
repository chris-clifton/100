text = File.read('frankenstein.txt')
sentences = text.split(/\.|!|\?/)
number_of_sentences = sentences.count

largest_sentence = sentences.max_by{ |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "The largest sentence has #{number_of_words} and reads:"
puts largest_sentence