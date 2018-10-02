# Write a method for moving a given number of elements from one array to another

# input: integer, origin array, destination array
# output: destination array, origin array
# rules: move x/integer elements from origin array to destination array

def move(n, from_array, to_array)
  n.times do 
  to_array << from_array.shift
  end
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']