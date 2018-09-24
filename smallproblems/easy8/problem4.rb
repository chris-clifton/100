# input: string
# output: array of strings
# rules: returns ordered (short to long) list of all substrings, from beginning of original string
# algorithm: loop starting at index 0, add to new array, increment counter, break when > string.size


def substrings_at_start(string)
  result = []
  counter = 0 
  loop do
    result << string[0..counter]
    counter += 1
    break if counter >= string.size
  end
  result
end

def substrings(string)
  new_string = []
  (0..string.size).each do |start_index|
    this_substring = string[start_index..-1]
    new_string.concat(substrings_at_start(this_substring))
  end
  new_string
end

p substrings('abcde')
p substrings('clifton')