# Write a method that takes an array of integers between 0 and 19 and returns an array of those integers sorted based on english words
# for each number

# input: array of integers
# output: sorted array of integers
# rules: sorts array based on alphabetized order of spelt word
# algorithm: 
# step 1: create an array constant with keys of integers and values of string representation of spelt integer
# step 2: create a new array of the original integers mapped to string version in array constant
# step 3: sort_by to order the array alphabetically
# step 4: convert back into integers


NUMBERS = [ 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 
            'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

def alphabetic_number_sort(array)
  string_array = []
  array.each do |number|
    string_array << NUMBERS[number]
  end
  
  sorted_string_array = string_array.sort

  sorted_integer_array = []
  sorted_string_array.each do |string|
    sorted_integer_array << NUMBERS.index(string)
  end
  p sorted_integer_array
end

myarray = (0..19).to_a

alphabetic_number_sort(myarray)