# Given the following data structure, return a new array containing the same sub-arrays as the original 
# but ordered logically according to the numeric value of the odd integers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end
# did not get this one right

=begin
Since the sub-arrays are compared in an 'element-wise' manner when being sorted, when looking at the 
first element of each they are all equal. If we were to include the second element of each (the even integers)
 in our comparison the order would be different, since 4 is less than 6, which is less than 8.

By performing selection on the sub-arrays that we are comparing, we can compare them based on the value of the odd integers alone.
=end