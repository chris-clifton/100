require "pry"
require "pry-byebug"

=begin

Write method that takes as an argument an array of integers and returns
a new array with the integers transformed.  If the integere is divisible by 3
it should be replaced with 'Fizz', if divisible by 5 it should be replaced
with 'Buzz', if divisible by both 3 and 5 it should be replaced with 'FizzBuzz'.
If divisible by neither 3 or 5 the number should remain as it is.

=end

def fizzbuzz(array)
  array.map do |num|
    if num % 5 == 0 && num % 3 == 0
      'FizzBuzz'
    elsif num % 5 == 0
      'Buzz'
    elsif num % 3 == 0
      'Fizz'
    else
      num
    end
  end
end

p fizzbuzz([1, 3, 5, 6, 7, 8, 10, 15, 19])