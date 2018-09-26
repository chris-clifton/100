# Write a method that takes an array and returns a new array with the elements of the original list in reverse order
# Do not modify original list

# input: array
# output: new array
# rules: don't mutate, don't use reverse or reverse!
# algorithm: using reverse_each, iterate over original array and add elements to the new one

def reverse(array)
  new_array = []
  array.reverse_each do |element|
    new_array << element
  end
  new_array
end

p reverse([1,2,3,4]) == [4,3,2,1]        
p reverse(%w(a b c d e)) == %w(e d c b a)
p reverse(['abc']) == ['abc']            
p reverse([]) == []