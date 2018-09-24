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

p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')
