# Write a method thatt akes two sorted arrays as arguments and returns a new Array containing all elements from both arugments in sorted order

# input: Two arrays
# output: one sorted array
# rules: 
  # duplicates are ok
  # Can't use a solution where you need to sort result array
  # Must build the result array one element at a time in proper order
# algorithm:
  # define our method and build some test cases
  # intialize a result array
  # take the two methods and iterate over each, until both array's size == 0
    # compare the smallest number in array1 vs smallest number in array 2
    # use .min to move the smallest number into the comparison to result array
    # repeat
  # return result array


  def merge(array1, array2)
    index2 = 0
    result = []
  
    array1.each do |value|
      while index2 < array2.size && array2[index2] <= value
        result << array2[index2]
        index2 += 1
      end
      result << value
    end
  
    result.concat(array2[index2..-1])
  end


p merge([1, 5, 10], [1, 2, 3])
p merge([1, 1, 1], [2, 2, 2])
p merge([1, 2, 3], [4, 5, 6])
p merge([1, 5, 9], [2, 6, 8])
p merge([1, 1, 3], [2, 2])
p merge([], [1, 4, 5])
p merge([1, 4, 5], [])