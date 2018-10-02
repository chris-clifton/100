# Write a method that takes an array as an argument and sorts array using bubble sort algorithm as described.  
# Sort array in-place and mutate the array passed as an argument
# Assume array has at least 2 elements

# input: Array
# output: Array
# rules: 
  # must modify inplace, sort two elements at a time across array
  # if array can't be modified any further, then return the array
# algorithm
  # iterate over array elements and sort
# psuedocode
 
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end
 
    break unless swapped
  end
  p array
end

bubble_sort!([3, 4, 1, 2])