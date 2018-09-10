def substrings_at_start(string)
  stringarray = []
  0.upto(string.size - 1) do |index|
    stringarray << string[0..index]
  end
  stringarray
end

p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')
