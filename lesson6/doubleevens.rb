require 'pry'
require 'pry-byebug'

=begin

Write a method that takes as an argument an array of integers and returns a 
new array with the even numbers doubled.

=end

def double_num(array)
  array.map do |num|
    if num % 2 == 0 then num*2
    else
      num
    end
  end
end

array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
array2 = [15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

p double_num(array1)
p double_num(array2)

