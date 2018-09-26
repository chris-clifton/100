# Write a method that takes an array as arg and reverses it's elements in place

# input: array
# output: array
# rules: can't use reverse or reverse!
# algorithm: iterate over list and reverse it.  maybe n.times rotate?

def reverse!(array)
  n = array.length
  p array.rotate(n)
end




p reverse!([1, 2, 3, 4]) == [4, 3, 2, 1]
p reverse!(%w( a b c d e)) == ["e", "d", "c", "b", "a"]
p reverse!(['abc']) == ['abc']
