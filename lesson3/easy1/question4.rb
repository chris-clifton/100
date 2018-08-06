numbers = [1, 2, 3, 4, 5]

puts numbers.delete_at(1) 
# This is going to delete the value 2 because #.delete_at is referencing the index 1 (which holds the value 2) to be deleted

puts numbers.delete(1)
# This is going to delete the value 1 because #.delete is referencing any object in the array with the value of 1.
