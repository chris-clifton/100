# Write a method that computes the difference between the square of the first sum of the first N positive integers
# and teh sum of the squares of the first N positive integers

# Input: Integer
# Output: Integer
# Rules
  # (Square the sum of all integers in N) - (square each integer in N, add them together)
 # Algorithm
  # create square sum method
  # create sum squares method
  # subtract sum squares from square sum
  # return result

  def square_sum(number)
    result = 0
    1.upto(number) do |int|
      result += int
    end
    result**2
  end

  def sum_squares(number)
    result = 0
    1.upto(number) do |int|
      result += int**2
    end
    result
  end

  def sum_square_difference(number)
    square_sum(number) - sum_squares(number)
  end

  p sum_square_difference(3)
  p sum_square_difference(10)
  p sum_square_difference(1)
  p sum_square_difference(100)