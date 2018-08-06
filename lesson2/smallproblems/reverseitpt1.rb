sentence_backwards = []
def reverse_sentence(sentence)
  sentence.split = []
  until sentence.length == 0 do
    sentence.pop << sentence_backwards
  end
  puts "#{sentence} backwards == #{sentence_backwards}."
end

reverse_sentence('This is my sentence')